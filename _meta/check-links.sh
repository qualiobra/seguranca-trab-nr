#!/bin/bash
# check-links.sh — gate determinístico dos links markdown internos da base (plano v2, item 5).
#
# Correções de revisão adversarial:
#   [6] UTF-8 ESTRITO: UnicodeDecodeError vira falha com arquivo e offset (antes: errors="ignore"
#       certificava uma representação diferente do conteúdo armazenado).
#   [7] destino cujo realpath sai da base (../.. ou caminho absoluto para fora) é REJEITADO
#       (FORA-DA-BASE) mesmo que o arquivo exista na máquina local — a base tem de ser
#       autocontida; âncoras (#secao) passam a ser conferidas contra os headings do alvo;
#       sintaxe de destino com título ("...") e com <...> passa a ser reconhecida; blocos de
#       código cercados (```) são ignorados; cobertura zero (0 links) é falha.
#
# Classes de saída:
#   ERRO ...            -> fatal (encoding inválido, cobertura zero)
#   QUEBRADO ...        -> fatal (destino relativo dentro da base que não existe)
#   FORA-DA-BASE ...    -> fatal (destino escapa da raiz da base: ../.. ou absoluto externo)
#   AVISO ancora-nao-confirmada -> aviso (o slug do fragmento não casou com nenhum heading do
#                          alvo; a slugificação é aproximada — por isso NUNCA é fatal)
#   AVISO caminho-absoluto      -> aviso (link absoluto que só resolve nesta máquina)
#   AVISO ancora-de-linha       -> aviso (convenção "arquivo.md:123" de revisão/editor: o arquivo
#                          é validado, o ":123" não é âncora markdown válida)
#   AVISO link-de-referencia    -> aviso, ver LIMITAÇÃO CONHECIDA abaixo
#
# LIMITAÇÃO CONHECIDA (declarada, não simulada): links de referência CommonMark — `[texto][id]`
# com definição `[id]: destino` — NÃO têm o destino resolvido. Este parser é por linha e não
# constrói a tabela de definições do documento. A base atual não usa essa sintaxe (0 ocorrências);
# se alguma aparecer, o script a CONTA e emite "AVISO link-de-referencia" para que a lacuna fique
# visível. Corrigir com parser CommonMark de verdade se a sintaxe passar a ser usada.
#
# Exit: 0 = sem fatais; 1 = caso contrário.
set -u
BASE="$(cd "$(dirname "$0")/.." && pwd)"
python3 - "$BASE" << 'PY'
import re, sys, glob, os, unicodedata, urllib.parse

base = os.path.realpath(sys.argv[1])
erros, quebrados, fora, avisos = [], [], [], []

def dentro(p):
    return p == base or p.startswith(base + os.sep)

def ler(caminho):
    try:
        with open(caminho, encoding="utf-8") as fh:
            return fh.read()
    except UnicodeDecodeError as e:
        erros.append(f"ERRO ENCODING-INVALIDO {os.path.relpath(caminho, base)}: "
                     f"bytes {e.start}-{e.end} não são UTF-8 válido ({e.reason})")
        return None

# --- âncoras: slug simples (minúsculas, espaços->hífens, sem pontuação) ----------------------
def slug(texto):
    t = re.sub(r"\{#[^}]+\}\s*$", "", texto.strip())
    t = re.sub(r"`([^`]*)`", r"\1", t)
    t = re.sub(r"!?\[([^\]]*)\]\([^)]*\)", r"\1", t)   # [texto](link) -> texto
    t = re.sub(r"[*_~]", "", t).lower()
    t = re.sub(r"[^\w\s-]", "", t, flags=re.UNICODE)   # remove pontuação
    return re.sub(r"\s+", "-", t.strip())

def sem_acento(s):
    return "".join(c for c in unicodedata.normalize("NFKD", s) if not unicodedata.combining(c))

_cache_ancoras = {}
def ancoras(caminho):
    """Slugs de heading + ids explícitos ({#id}, <a name=/id=) do arquivo alvo."""
    if caminho in _cache_ancoras:
        return _cache_ancoras[caminho]
    conj = set()
    txt = ler(caminho) if caminho.lower().endswith(".md") else None
    if txt is not None:
        vistos, cerca = {}, False
        for linha in txt.split("\n"):
            if re.match(r"^\s{0,3}(```|~~~)", linha):
                cerca = not cerca
                continue
            if cerca:
                continue
            mid = re.search(r"\{#([^}\s]+)\}", linha)
            if mid:
                conj.add(mid.group(1).lower())
            for m in re.finditer(r"<a[^>]+(?:name|id)=[\"']([^\"']+)[\"']", linha, re.I):
                conj.add(m.group(1).lower())
            mh = re.match(r"^\s{0,3}#{1,6}\s+(.*?)\s*#*\s*$", linha)
            if mh:
                s = slug(mh.group(1))
                if not s:
                    continue
                n = vistos.get(s, 0)
                vistos[s] = n + 1
                conj.add(s if n == 0 else f"{s}-{n}")     # duplicatas: slug, slug-1, slug-2 (GitHub)
                conj.add(sem_acento(s) if n == 0 else sem_acento(f"{s}-{n}"))
    _cache_ancoras[caminho] = conj
    return conj

# --- varredura ------------------------------------------------------------------------------
arquivos = sorted(f for f in glob.glob(f"{base}/**/*.md", recursive=True)
                  if "/01-nrs-texto-oficial/" not in f and "/.git/" not in f)
# destino: <...> ou token sem espaço/parênteses; título opcional entre "", '' ou ()
LINK = re.compile(r"\]\(\s*(<[^<>\n]*>|[^()\s]+)(?:\s+(?:\"[^\"\n]*\"|'[^'\n]*'|\([^()\n]*\)))?\s*\)")
REFLINK = re.compile(r"\][ \t]?\[[^\]\n]*\]")
EXTERNO = re.compile(r"^(?:https?:|mailto:|tel:|ftp:|data:|//)", re.I)

total = externos = referencias = 0
for f in arquivos:
    txt = ler(f)
    if txt is None:
        continue
    rel = os.path.relpath(f, base)
    cerca = False
    for i, linha in enumerate(txt.split("\n"), 1):
        if re.match(r"^\s{0,3}(```|~~~)", linha):
            cerca = not cerca
            continue
        if cerca:
            continue
        linha = re.sub(r"`[^`]*`", "", linha)          # code spans não são links (N-02)
        for m in REFLINK.finditer(linha):
            if not re.search(r"^\s*\[[^\]]+\]:", linha):
                referencias += 1
                avisos.append(f"AVISO link-de-referencia {rel}:{i} -> {m.group(0)} — sintaxe "
                              f"[texto][id] NÃO verificada (limitação conhecida, ver cabeçalho)")
        for m in LINK.finditer(linha):
            alvo = m.group(1)
            if alvo.startswith("<") and alvo.endswith(">"):
                alvo = alvo[1:-1].strip()
            if not alvo or EXTERNO.match(alvo):
                externos += 1
                continue
            total += 1
            partes = alvo.split("#", 1)
            destino = urllib.parse.unquote(partes[0])
            frag = urllib.parse.unquote(partes[1]) if len(partes) > 1 else None

            if not destino:                                    # âncora pura (#secao) no próprio arquivo
                if frag and slug(frag) not in ancoras(f) and sem_acento(slug(frag)) not in ancoras(f):
                    avisos.append(f"AVISO ancora-nao-confirmada {rel}:{i} -> #{frag} — nenhum "
                                  f"heading do próprio arquivo gera esse slug (slug aproximado)")
                continue

            mlin = re.match(r"^(.+\.[A-Za-z0-9]+):(\d+)$", destino)   # convenção arquivo.md:123
            linha_ref = None
            if mlin:
                destino, linha_ref = mlin.group(1), mlin.group(2)

            prim = os.path.realpath(os.path.join(os.path.dirname(f), destino))
            alt = os.path.realpath(os.path.join(base, destino))
            if not dentro(prim) and not dentro(alt):
                fora.append(f"FORA-DA-BASE {rel}:{i} -> {alvo} — o destino sai da raiz da base "
                            f"({prim}); a base precisa ser autocontida (usar caminho relativo "
                            f"interno ou code span)")
                continue
            resolvido = None
            for cand in (prim, alt):
                if dentro(cand) and os.path.exists(cand):
                    resolvido = cand
                    break
            if resolvido is None:
                quebrados.append(f"QUEBRADO {rel}:{i} -> {alvo}")
                continue
            if destino.startswith("/"):
                avisos.append(f"AVISO caminho-absoluto {rel}:{i} -> {destino} — resolve dentro da "
                              f"base, mas só nesta máquina; preferir caminho relativo")
            if linha_ref:
                avisos.append(f"AVISO ancora-de-linha {rel}:{i} -> {destino}:{linha_ref} — arquivo "
                              f"validado; ':{linha_ref}' não é âncora markdown (convenção de revisão)")
            if frag:
                conj = ancoras(resolvido)
                if not resolvido.lower().endswith(".md"):
                    avisos.append(f"AVISO ancora-nao-confirmada {rel}:{i} -> {alvo} — alvo não é .md")
                elif slug(frag) not in conj and sem_acento(slug(frag)) not in conj:
                    avisos.append(f"AVISO ancora-nao-confirmada {rel}:{i} -> {alvo} — nenhum heading "
                                  f"de {os.path.relpath(resolvido, base)} gera o slug '{slug(frag)}' "
                                  f"(slug aproximado: minúsculas, espaços->hífens, sem pontuação)")

if not arquivos:
    erros.append("ERRO COBERTURA-ZERO: nenhum arquivo .md casou com o glob da base")
elif total == 0:
    erros.append(f"ERRO COBERTURA-ZERO: 0 links internos verificados em {len(arquivos)} arquivos "
                 f"(parser ou base quebrados)")

for linha in erros + quebrados + fora + avisos:
    print(linha)
print(f"total: {total} verificados, {len(quebrados)} quebrados, {len(fora)} fora-da-base, "
      f"{len(avisos)} avisos ({referencias} links de referência não verificados — limitação "
      f"conhecida), {externos} externos ignorados, {len(arquivos)} arquivos, {len(erros)} erros fatais")
sys.exit(1 if (erros or quebrados or fora) else 0)
PY
