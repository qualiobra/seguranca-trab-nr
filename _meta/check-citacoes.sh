#!/bin/bash
# check-citacoes.sh — gate determinístico de EXISTÊNCIA das citações "NR-XX ... item" dos destilados
# no texto oficial local (plano v2, item 5). Checa EXISTÊNCIA do item citado, não o mérito.
#
# Correções de revisão adversarial:
#   [4] manifesto embutido das 22 NRs: fonte esperada ausente do glob é ERRO FATAL (nunca skip
#       silencioso); NR citada fora do manifesto e sem fonte vira aviso NR-DESCONHECIDA (visível,
#       não descartada); auto-teste de cobertura: falha se 0 arquivos-alvo ou 0 citações.
#   [5] identificador de item com profundidade ARBITRÁRIA (sem teto de 5 pontos) e fronteira
#       estrita — o match não pode ser prefixo de identificador mais profundo nem ser seguido de
#       "." + dígito. "NR-12 item 4.1.2.1.1.10.999" NÃO é truncado para 4.1.2.1.1.10 (que existiria
#       como prefixo de 4.1.2.1.1.10.1 e aprovaria citação inexistente). Também captura TODOS os
#       itens de uma lista ("NR-18 itens 18.6.1 e 18.6.3"), não só o primeiro.
#   [6] UTF-8 ESTRITO: UnicodeDecodeError vira falha com nome do arquivo e offset (antes:
#       errors="ignore" analisava uma representação diferente do conteúdo armazenado).
#
# Classes de saída:
#   ERRO ...              -> fatal (fonte ausente/duplicada, encoding inválido, cobertura zero)
#   NAO-ENCONTRADO ...    -> fatal (RNC provável: item não existe em NENHUM texto oficial da base)
#   PAREAMENTO-AMBIGUO ...-> aviso (item existe em outra NR — prosa de remissão? revisão manual)
#   NR-DESCONHECIDA ...   -> aviso (NR citada fora do manifesto das 22; não há fonte para verificar)
#   FONTE-FORA-DO-MANIFESTO -> aviso (existe fonte não prevista: atualizar o manifesto abaixo)
# Exit: 0 = sem erro fatal e sem NAO-ENCONTRADO; 1 = caso contrário.
set -u
BASE="$(cd "$(dirname "$0")/.." && pwd)"
python3 - "$BASE" << 'PY'
import re, sys, glob, os

base = sys.argv[1]

# --- manifesto embutido: as 22 NRs que a base cobre (achado 4) ------------------------------
MANIFESTO = ["NR-01","NR-03","NR-04","NR-05","NR-06","NR-07","NR-08","NR-09","NR-10","NR-11",
             "NR-12","NR-15","NR-17","NR-18","NR-20","NR-21","NR-23","NR-24","NR-26","NR-28",
             "NR-33","NR-35"]
assert len(MANIFESTO) == len(set(MANIFESTO)) == 22

erros, avisos = [], []

def ler(caminho):
    """UTF-8 estrito (achado 6): bytes inválidos viram erro fatal com arquivo e offset."""
    try:
        with open(caminho, encoding="utf-8") as fh:
            return fh.read()
    except UnicodeDecodeError as e:
        erros.append(f"ERRO ENCODING-INVALIDO {os.path.relpath(caminho, base)}: "
                     f"bytes {e.start}-{e.end} não são UTF-8 válido ({e.reason})")
        return None

# --- fontes oficiais ------------------------------------------------------------------------
oficial = {}
for p in sorted(glob.glob(f"{base}/01-nrs-texto-oficial/*/NR-*/NR-*.md")):
    nr = os.path.basename(p)[:5]
    if not re.fullmatch(r"NR-\d{2}", nr):
        avisos.append(f"FONTE-IGNORADA {os.path.relpath(p, base)}: nome não casa com NR-XX")
        continue
    if nr in oficial:
        erros.append(f"ERRO FONTE-DUPLICADA {nr}: mais de um texto oficial no glob "
                     f"(último: {os.path.relpath(p, base)})")
        continue
    txt = ler(p)
    if txt is None:
        continue
    oficial[nr] = txt

for nr in MANIFESTO:
    if nr not in oficial:
        erros.append(f"ERRO FONTE-AUSENTE {nr}: o manifesto exige o texto oficial em "
                     f"01-nrs-texto-oficial/*/{nr}/{nr}.md — sem ele as citações a {nr} NÃO podem "
                     f"ser verificadas (nunca pular em silêncio)")
for nr in sorted(k for k in oficial if k not in MANIFESTO):
    avisos.append(f"FONTE-FORA-DO-MANIFESTO {nr}: existe texto oficial não previsto no manifesto "
                  f"embutido do script — atualizar o manifesto (as citações a {nr} são verificadas)")

# --- alvos (destilados) ---------------------------------------------------------------------
alvos = sorted(f for pat in ("00-guia-interdicao/*.md", "02-fichas-operacionais/*.md",
                             "03-matrizes/*.md", "04-templates/*.md",
                             "04-templates/checklists/*.md", "05-treinamentos/*.md")
               for f in glob.glob(f"{base}/{pat}"))
if not alvos:
    erros.append("ERRO COBERTURA-ZERO: nenhum arquivo-alvo casou com os globs dos destilados "
                 "(o gate estaria certificando o vazio)")

# --- parser de citações (achado 5) ----------------------------------------------------------
# ITEM: profundidade arbitrária; captura gulosa impede truncamento; a fronteira exige que o match
# não seja seguido de dígito nem de "."+dígito, e que não comece no meio de outro identificador.
ITEM = r"(?<![\d.])\d{1,2}(?:\.\d+)+(?!\.?\d)"
# separador NR->item: sem dígitos e sem "|" (não cruza célula de tabela nem outro número)
CIT  = re.compile(r"NR-(\d{2})[^0-9|]{0,30}?(" + ITEM + ")")
# continuação de lista: "18.6.1 e 18.6.3", "3.1, 3.2 e 3.3", "18.9.1; 18.9.2" (mesma NR, mesma linha)
CONT = re.compile(r"[ \t]*(?:,|;|\be\b|\bou\b)[ \t]*(?:itens?[ \t]+)?(" + ITEM + ")")

def itens_da_citacao(txt, m):
    """Todos os itens associados à mesma menção de NR (achado 5, 2ª parte)."""
    itens = [m.group(2)]
    pos = m.end()
    while True:
        mm = CONT.match(txt, pos)
        if not mm:
            break
        itens.append(mm.group(1))
        pos = mm.end()
    return itens

def _autoteste():
    """Regressão do parser: roda a cada execução; parser quebrado = gate quebrado."""
    casos = [
        ("NR-12 item 4.1.2.1.1.10.999", "NR-12", ["4.1.2.1.1.10.999"]),   # sem truncamento
        ("NR-12 item 4.1.2.1.1.10.1",   "NR-12", ["4.1.2.1.1.10.1"]),     # profundidade real da base
        ("NR-18 itens 18.6.1 e 18.999.1", "NR-18", ["18.6.1", "18.999.1"]),
        ("NR-03, 3.1, 3.2 e 3.3",       "NR-03", ["3.1", "3.2", "3.3"]),
        ("NR-35 item 35.4.2.",          "NR-35", ["35.4.2"]),             # ponto final de frase
    ]
    for texto, nr_esp, itens_esp in casos:
        m = CIT.search(texto)
        if not m or f"NR-{m.group(1)}" != nr_esp or itens_da_citacao(texto, m) != itens_esp:
            got = None if not m else (f"NR-{m.group(1)}", itens_da_citacao(texto, m))
            erros.append(f"ERRO AUTOTESTE-PARSER: {texto!r} -> {got!r}, esperado "
                         f"{(nr_esp, itens_esp)!r}")
_autoteste()

def existe(nr, item):
    # fronteira estrita nos DOIS lados (N3-13): "18.6.10" não pode ser aprovado só porque
    # "18.6.10.1" existe — o item citado tem de aparecer como identificador completo na fonte.
    return bool(re.search(rf"(?<![\d.]){re.escape(item)}(?!\.?\d)", oficial.get(nr, "")))

faltas, ambiguos, desconhecidas = [], [], []
total = 0
for f in alvos:
    txt = ler(f)
    if txt is None:
        continue
    rel = os.path.relpath(f, base)
    for m in CIT.finditer(txt):
        nr = f"NR-{m.group(1)}"
        itens = itens_da_citacao(txt, m)
        if nr not in oficial:
            # sem fonte local: se está no manifesto já virou ERRO FONTE-AUSENTE acima;
            # se não está, é NR fora do escopo da base — reportar, nunca descartar (achado 4).
            rotulo = "sem fonte local (manifesto)" if nr in MANIFESTO else "fora do manifesto das 22 NRs"
            for it in itens:
                desconhecidas.append(f"NR-DESCONHECIDA {rel}: {nr} {it} — {rotulo}; citação NÃO verificada")
            continue
        for it in itens:
            total += 1
            if existe(nr, it):
                continue
            outras = [k for k in oficial if k != nr and existe(k, it)]
            if outras:
                ambiguos.append(f"PAREAMENTO-AMBIGUO {rel}: '{nr} {it}' — item existe em "
                                f"{', '.join(sorted(outras)[:3])} (prosa de remissão? conferir)")
            else:
                faltas.append(f"NAO-ENCONTRADO {rel}: {nr} {it} — item não existe em NENHUM texto "
                              f"oficial da base")

if alvos and total == 0:
    erros.append("ERRO COBERTURA-ZERO: 0 citações extraídas de "
                 f"{len(alvos)} arquivos-alvo — parser ou base quebrados")

for linha in erros + faltas + ambiguos + desconhecidas + avisos:
    print(linha)
print(f"total: {total} verificadas · {len(faltas)} não encontradas (RNC provável) · "
      f"{len(ambiguos)} pareamentos ambíguos (revisão manual) · "
      f"{len(desconhecidas)} NR-DESCONHECIDA · fontes {len(oficial)}/{len(MANIFESTO)} do manifesto · "
      f"{len(alvos)} arquivos-alvo · {len(avisos)} avisos de fonte · {len(erros)} erros fatais")
sys.exit(1 if (erros or faltas) else 0)
PY
