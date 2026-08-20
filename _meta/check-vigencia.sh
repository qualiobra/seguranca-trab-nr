#!/bin/bash
# check-vigencia.sh — detector determinístico de mudança normativa nas 22 NRs da base
# (plano v2, item 6; F-13/F-23). Compatível com bash 3.2 (macOS): sem array associativo.
#
# O QUE É COMPARADO, por NR (revisão adversarial):
#   1) PÁGINA  — conjunto de hrefs .pdf da página oficial da NR (sha256 do conjunto ordenado);
#                pega nova consolidação/portaria publicada na página.
#   2) PDF     — sha256 do CONTEÚDO do PDF vigente (as mesmas URLs de _meta/download-nrs.sh);
#                pega troca de conteúdo sob a MESMA URL — invisível para o hash de hrefs.
#   3) TEXTO   — sha256 do texto extraído (pdftotext -layout) do MESMO PDF. Separa "mudança de
#                arquivo" (reexportação: bytes diferentes, texto idêntico) de "mudança do conteúdo
#                NORMATIVO" (texto diferente) — as duas contam como mudança e bloqueiam a promoção
#                do baseline, mas o relatório diz qual é qual. Sem pdftotext no PATH, o campo fica
#                "SEM-PDFTOTEXT" e a comparação de texto é omitida (nunca vira falso "sem mudança").
#   4) URL     — a URL do PDF no manifesto abaixo vs. a registrada no snapshot aprovado.
# LA-001: detecção por CONTEÚDO, nunca por rótulo/data da página.
# Caso real (20/08/2026): a NR-35 teve o PDF reexportado sob a MESMA URL (bytes diferentes, texto
# extraído idêntico) — o hash de hrefs da página não acusaria nada.
#
# Correções de revisão adversarial:
#   [8] baixa e hasheia o PDF normativo, além do conjunto de hrefs (ver acima).
#   [9] o snapshot APROVADO é IMUTÁVEL durante o run: o resultado por NR é gravado em
#       _meta/vigencia-resultado.txt ANTES de qualquer promoção; o snapshot só é promovido em run
#       COMPLETO (zero falhas de rede) e SEM mudança. Havendo mudança, o candidato fica em
#       _meta/vigencia-candidato.txt e o baseline permanece intacto — a mudança volta a ser
#       reportada em todo run até haver RNC + aprovação humana (`check-vigencia.sh --aprovar`).
#       Mudanças e falhas COEXISTEM no relatório: as duas listas são sempre impressas e nenhum
#       exit code mascara o outro (exit 1 = houve mudança OU falha; o detalhe está no stdout e no
#       resultado.txt).
#  [10] manifesto fixo de 22 IDs: redução, duplicidade ou ausência de NR — no manifesto, no
#       resultado ou no snapshot — é ERRO DE ESTRUTURA, nunca "0 mudanças".
#
# Uso:
#   check-vigencia.sh            roda a verificação (não promove baseline se houver mudança/falha)
#   check-vigencia.sh --aprovar  promove _meta/vigencia-candidato.txt a baseline aprovado
#                                (só depois de RNC/auditoria registrada — decisão humana)
# Exit: 0 = limpo (22/22 verificadas, sem mudança, sem erro de estrutura); 1 = mudança OU falha
#       OU erro de estrutura. Contrato antigo (2 = falha de rede) foi retirado: falha e mudança
#       podem ocorrer juntas e não cabem em códigos mutuamente exclusivos.
set -u

BASE="$(cd "$(dirname "$0")/.." && pwd)"
META="$BASE/_meta"
SNAP="$META/vigencia-snapshot.txt"      # baseline APROVADO (imutável durante o run)
RES="$META/vigencia-resultado.txt"      # resultado estruturado do run (candidato)
CAND="$META/vigencia-candidato.txt"     # snapshot candidato quando há mudança (aguarda aprovação)
CAB_SNAP="# vigencia-snapshot v3 · baseline APROVADO · formato: NR|sha256_hrefs_pagina|sha256_pdf|sha256_texto_pdf|url_pdf"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)"
PG="https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes"
GOV="https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente"
VIG="$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes"
ARQ="$GOV/arquivos/normas-regulamentadoras"

TMPD="$(mktemp -d "${TMPDIR:-/tmp}/vigencia.XXXXXX")"
trap 'rm -rf "$TMPD"' EXIT INT TERM

# --- manifesto fixo das 22 NRs: NR|pagina_oficial|pdf_vigente ---------------------------------
# URLs dos PDFs = as mesmas de _meta/download-nrs.sh (fonte: _meta/fase1-fontes-oficiais.md).
# Ao trocar uma URL aqui (ex.: NR-10 nova redação em 01/06/2027), trocar TAMBÉM em download-nrs.sh.
MAN="$TMPD/manifesto.txt"
cat > "$MAN" <<EOF
NR-01|$PG/nr-1|$VIG/nr-01-atualizada-2025-i-3.pdf
NR-03|$PG/norma-regulamentadora-no-3-nr-3|$ARQ/nr-03_atualizada_2019.pdf
NR-04|$PG/norma-regulamentadora-no-4-nr-4|$VIG/nr-04-atualizada-2023.pdf
NR-05|$PG/norma-regulamentadora-no-5-nr-5|$VIG/NR05atualizada2023.pdf
NR-06|$PG/norma-regulamentadora-no-6-nr-6|$VIG/nr-06-atualizada-2025-ii.pdf
NR-07|$PG/norma-regulamentadora-no-7-nr-7|$VIG/nr-07-atualizada-2022-1.pdf
NR-08|$PG/norma-regulamentadora-no-8-nr-8|$ARQ/nr-08-atualizada-2022.pdf
NR-09|$PG/norma-regulamentadora-no-9-nr-9|$VIG/nr-09-atualizada-2026.pdf
NR-10|$PG/norma-regulamentadora-no-10-nr-10|$ARQ/nr-10-atualizada-2019-1.pdf
NR-11|$PG/norma-regulamentadora-no-11-nr-11|$VIG/nr-11-atualizada-2016.pdf
NR-12|$PG/norma-regulamentadora-no-12-nr-12|$VIG/nr-12-atualizada-2025.pdf
NR-15|$PG/norma-regulamentadora-no-15-nr-15|$VIG/nr-15-atualizada-2025.pdf
NR-17|$PG/norma-regulamentadora-no-17-nr-17|$VIG/nr-17-atualizada-2023.pdf
NR-18|$PG/norma-regulamentadora-no-18-nr-18|$VIG/NR18atualizada2026I.pdf
NR-20|$PG/norma-regulamentadora-no-20-nr-20|$VIG/nr-20-atualizada-2025.pdf
NR-21|$PG/norma-regulamentadora-no-21-nr-21|$ARQ/nr-21.pdf
NR-23|$PG/norma-regulamentadora-no-23-nr-23|$ARQ/nr-23-atualizada-2022.pdf
NR-24|$PG/norma-regulamentadora-no-24-nr-24|$ARQ/nr-24-atualizada-2022.pdf
NR-26|$PG/norma-regulamentadora-no-26-nr-26|$ARQ/nr-26-atualizada-2022.pdf
NR-28|$PG/norma-regulamentadora-no-28-nr-28|$VIG/nr-28-atualizada-2026.pdf
NR-33|$PG/norma-regulamentadora-no-33-nr-33|$ARQ/nr-33-atualizada-2022-_retificada.pdf
NR-35|$PG/norma-regulamentadora-no-35-nr-35|$VIG/nr-35-atualizada-2025-1.pdf
EOF
ESPERADAS=22

erros_estrutura=0
erro_est() { echo "ERRO-ESTRUTURA $*"; erros_estrutura=$((erros_estrutura+1)); }

# --- validação do manifesto (achado 10) -------------------------------------------------------
n_man=$(grep -c '^NR-' "$MAN")
[ "$n_man" -eq "$ESPERADAS" ] || erro_est "manifesto tem $n_man NRs, esperado $ESPERADAS (redução/edição acidental?)"
dups=$(cut -d'|' -f1 "$MAN" | sort | uniq -d | tr '\n' ' ')
[ -z "$dups" ] || erro_est "IDs duplicados no manifesto: $dups"
incompletas=$(awk -F'|' 'NF!=3 || $1=="" || $2=="" || $3=="" {print $1}' "$MAN" | tr '\n' ' ')
[ -z "$incompletas" ] || erro_est "linhas incompletas no manifesto: $incompletas"

sha256() { shasum -a 256 "$1" | cut -d' ' -f1; }
TEM_PDFTOTEXT=1
command -v pdftotext > /dev/null 2>&1 || { TEM_PDFTOTEXT=0; echo "AVISO: pdftotext não encontrado no PATH — a comparação do TEXTO do PDF fica desativada (bytes ainda são comparados)."; }

# --- modo --aprovar ---------------------------------------------------------------------------
if [ "${1:-}" = "--aprovar" ]; then
  [ -f "$CAND" ] || { echo "ERRO: não há candidato em $CAND — nada a aprovar."; exit 1; }
  n_c=$(grep -c '^NR-' "$CAND"); d_c=$(cut -d'|' -f1 "$CAND" | grep '^NR-' | sort | uniq -d | tr '\n' ' ')
  if [ "$n_c" -ne "$ESPERADAS" ] || [ -n "$d_c" ] || grep -q 'FALHA' "$CAND"; then
    echo "ERRO: candidato inválido (NRs=$n_c, duplicados='$d_c', contém FALHA?) — rode o check de novo."; exit 1
  fi
  # candidato obsoleto: só é aprovável o candidato gerado pelo ÚLTIMO run (senão promoveria um
  # estado anterior, mascarando o que o run mais recente encontrou)
  run_cand=$(grep -m1 '^# CANDIDATO gerado em ' "$CAND" | sed 's/^# CANDIDATO gerado em //;s/ .*//')
  run_res=$(grep -m1 '^# vigencia-resultado' "$RES" 2>/dev/null | sed 's/^.* run //;s/ .*//')
  if [ -z "$run_res" ] || [ "$run_cand" != "$run_res" ]; then
    echo "ERRO: candidato ($run_cand) não é do último run ($run_res) — rode $0 de novo e aprove o resultado atual."; exit 1
  fi
  falt_c=$(comm -23 <(cut -d'|' -f1 "$MAN" | sort) <(grep '^NR-' "$CAND" | cut -d'|' -f1 | sort) | tr '\n' ' ')
  [ -z "$falt_c" ] && [ "$erros_estrutura" -eq 0 ] || { echo "ERRO: candidato não cobre o manifesto (faltam: $falt_c; erros de manifesto: $erros_estrutura)."; exit 1; }
  if [ -f "$SNAP" ]; then
    echo "diff do baseline aprovado -> candidato:"
    diff <(grep '^NR-' "$SNAP") <(grep '^NR-' "$CAND") | sed 's/^/  /'
  fi
  { echo "$CAB_SNAP"
    echo "# APROVADO em $(date +"%Y-%m-%dT%H:%M:%S%z") a partir do candidato do run $run_cand (aprovação humana)"
    grep '^NR-' "$CAND"; } > "$SNAP.tmp" && mv "$SNAP.tmp" "$SNAP" && rm -f "$CAND"
  echo "OK: baseline aprovado atualizado ($SNAP). Registre o hash desta promoção na RNC/auditoria."
  exit 0
fi
if [ "${1:-}" = "--ajuda" ] || [ "${1:-}" = "-h" ]; then sed -n '2,40p' "$0"; exit 0; fi

# --- validação do snapshot aprovado (achado 10) -----------------------------------------------
tem_snap=0
if [ -f "$SNAP" ]; then
  tem_snap=1
  if ! head -1 "$SNAP" | grep -q 'vigencia-snapshot v3'; then
    echo "ERRO: $SNAP está em formato antigo (v1/v2 — sem hash do texto do PDF)."
    echo "      Mova-o (ex.: mv vigencia-snapshot.txt vigencia-snapshot.v2.bak) e rode de novo para"
    echo "      gerar o baseline v3 (sha256 de página + sha256 do PDF + sha256 do texto do PDF)."
    exit 1
  fi
  n_s=$(grep -c '^NR-' "$SNAP")
  [ "$n_s" -eq "$ESPERADAS" ] || erro_est "snapshot aprovado tem $n_s NRs, esperado $ESPERADAS (conjunto monitorado reduzido!)"
  d_s=$(grep '^NR-' "$SNAP" | cut -d'|' -f1 | sort | uniq -d | tr '\n' ' ')
  [ -z "$d_s" ] || erro_est "IDs duplicados no snapshot aprovado: $d_s"
  faltando_s=$(comm -23 <(cut -d'|' -f1 "$MAN" | sort) <(grep '^NR-' "$SNAP" | cut -d'|' -f1 | sort) | tr '\n' ' ')
  [ -z "$faltando_s" ] || erro_est "NRs do manifesto ausentes do snapshot aprovado: $faltando_s"
  sobrando_s=$(comm -13 <(cut -d'|' -f1 "$MAN" | sort) <(grep '^NR-' "$SNAP" | cut -d'|' -f1 | sort) | tr '\n' ' ')
  [ -z "$sobrando_s" ] || erro_est "NRs no snapshot aprovado que não estão no manifesto: $sobrando_s"
fi

# --- coleta -----------------------------------------------------------------------------------
LINHAS_RES="$TMPD/res.txt"; : > "$LINHAS_RES"
LINHAS_CAND="$TMPD/cand.txt"; : > "$LINHAS_CAND"
MUDS="$TMPD/mudancas.txt"; : > "$MUDS"
FALS="$TMPD/falhas.txt"; : > "$FALS"
INICIO=$(date +"%Y-%m-%dT%H:%M:%S%z")

baixa() { # $1 url  $2 destino -> ecoa "OK" ou "FALHA(http=...,curl=...)"
  local url="$1" out="$2" tentativa code rc
  for tentativa in 1 2; do
    code=$(curl -sL -A "$UA" --max-time 180 -o "$out" -w '%{http_code}' "$url" < /dev/null 2>/dev/null); rc=$?
    if [ "$rc" -eq 0 ] && [ "$code" = "200" ] && [ -s "$out" ]; then echo "OK"; return 0; fi
    sleep 3
  done
  echo "FALHA(http=$code,curl=$rc)"; return 1
}

while IFS='|' read -r nr pagina pdfurl; do
  case "$nr" in ''|\#*) continue;; esac

  # 1) página oficial
  st_pag="OK"; hash_pag="-"
  r=$(baixa "$pagina" "$TMPD/pag.html") || st_pag="$r"
  if [ "$st_pag" = "OK" ]; then
    hrefs=$(grep -oiE 'href="[^"]*\.pdf"' "$TMPD/pag.html" | sort -u)
    if [ -z "$hrefs" ]; then
      st_pag="FALHA(sem-href-pdf)"   # 200 sem PDF nenhum = scraping quebrado/WAF, não "sem mudança"
    else
      hash_pag=$(printf '%s\n' "$hrefs" | shasum -a 256 | cut -d' ' -f1)
    fi
  fi
  sleep 1

  # 2) PDF normativo vigente (conteúdo) e 3) texto extraído do MESMO PDF
  st_pdf="OK"; sha_pdf="-"; st_txt="NAO-AVALIADO"; sha_txt="-"
  r=$(baixa "$pdfurl" "$TMPD/nr.pdf") || st_pdf="$r"
  if [ "$st_pdf" = "OK" ]; then
    mime=$(file -b --mime-type "$TMPD/nr.pdf")
    tam=$(wc -c < "$TMPD/nr.pdf" | tr -d ' ')
    if [ "$mime" != "application/pdf" ] || [ "$tam" -lt 10000 ]; then
      st_pdf="FALHA(mime=$mime,bytes=$tam)"
    else
      sha_pdf=$(sha256 "$TMPD/nr.pdf")
      if [ "$TEM_PDFTOTEXT" -eq 0 ]; then
        st_txt="SEM-PDFTOTEXT"
      elif pdftotext -layout "$TMPD/nr.pdf" "$TMPD/nr.txt" 2>/dev/null; then
        st_txt="OK"; sha_txt=$(sha256 "$TMPD/nr.txt")
      else
        st_txt="FALHA(pdftotext)"
      fi
    fi
  fi
  rm -f "$TMPD/nr.pdf" "$TMPD/nr.txt" "$TMPD/pag.html"
  sleep 1

  # 4) comparação com o baseline APROVADO (nunca escrito aqui)
  old_pag="-"; old_pdf="-"; old_txt="-"; old_url="-"
  if [ "$tem_snap" -eq 1 ]; then
    snapline=$(grep "^$nr|" "$SNAP" | head -1)
    if [ -n "$snapline" ]; then
      old_pag=$(printf '%s' "$snapline" | cut -d'|' -f2)
      old_pdf=$(printf '%s' "$snapline" | cut -d'|' -f3)
      old_txt=$(printf '%s' "$snapline" | cut -d'|' -f4)
      old_url=$(printf '%s' "$snapline" | cut -d'|' -f5)
    fi
  fi
  if [ "$st_pag" = "OK" ]; then
    if [ "$old_pag" = "-" ]; then st_pag="NOVO"
    elif [ "$old_pag" != "$hash_pag" ]; then
      st_pag="MUDANCA"
      echo "MUDANCA-PAGINA $nr — conjunto de PDFs da página oficial mudou (possível consolidação/portaria nova): $old_pag -> $hash_pag" >> "$MUDS"
    fi
  fi
  if [ "$st_txt" = "OK" ]; then
    if [ "$old_txt" = "-" ]; then st_txt="NOVO"
    elif [ "$old_txt" != "$sha_txt" ]; then st_txt="MUDANCA"; fi
  fi
  if [ "$st_pdf" = "OK" ]; then
    if [ "$old_pdf" = "-" ]; then st_pdf="NOVO"
    elif [ "$old_pdf" != "$sha_pdf" ]; then
      st_pdf="MUDANCA"
      if [ "$st_txt" = "MUDANCA" ]; then
        echo "MUDANCA-TEXTO $nr — CONTEÚDO NORMATIVO mudou sob a mesma URL (texto extraído difere): pdf $old_pdf -> $sha_pdf · texto $old_txt -> $sha_txt ($pdfurl)" >> "$MUDS"
      elif [ "$st_txt" = "OK" ] || [ "$st_txt" = "NOVO" ]; then
        echo "MUDANCA-ARQUIVO $nr — PDF reexportado sob a mesma URL: bytes mudaram ($old_pdf -> $sha_pdf) mas o TEXTO extraído é IDÊNTICO ($sha_txt) — provável reexportação, confirmar e aprovar ($pdfurl)" >> "$MUDS"
      else
        echo "MUDANCA-PDF $nr — bytes do PDF vigente mudaram sob a mesma URL ($old_pdf -> $sha_pdf); texto não comparado ($st_txt) ($pdfurl)" >> "$MUDS"
      fi
    fi
  fi
  if [ "$old_url" != "-" ] && [ "$old_url" != "$pdfurl" ]; then
    echo "MUDANCA-URL $nr — URL do PDF no manifesto difere do baseline aprovado: $old_url -> $pdfurl" >> "$MUDS"
  fi
  case "$st_pag$st_pdf$st_txt" in *FALHA*) echo "NAO-VERIFICADA $nr — pagina: $st_pag · pdf: $st_pdf · texto: $st_txt" >> "$FALS";; esac

  printf '%s · %s · %s · %s · %s · %s · %s\n' "$nr" "$st_pag" "$st_pdf" "$st_txt" "$hash_pag" "$sha_pdf" "$sha_txt" >> "$LINHAS_RES"
  case "$st_pag$st_pdf$st_txt" in
    *FALHA*) : ;;   # linha com falha nunca entra em candidato a baseline
    *) printf '%s|%s|%s|%s|%s\n' "$nr" "$hash_pag" "$sha_pdf" "$sha_txt" "$pdfurl" >> "$LINHAS_CAND";;
  esac
  echo "verificada $nr · pagina: $st_pag · pdf: $st_pdf · texto: $st_txt"
done < "$MAN"

# --- validação do conjunto verificado (achado 10) ---------------------------------------------
n_res=$(grep -c '^NR-' "$LINHAS_RES"); n_res=${n_res:-0}
[ "$n_res" -eq "$ESPERADAS" ] || erro_est "resultado cobre $n_res NRs, esperado $ESPERADAS"
d_r=$(awk '{print $1}' "$LINHAS_RES" | sort | uniq -d | tr '\n' ' ')
[ -z "$d_r" ] || erro_est "NRs duplicadas no resultado: $d_r"
falt_r=$(comm -23 <(cut -d'|' -f1 "$MAN" | sort) <(awk '{print $1}' "$LINHAS_RES" | sort) | tr '\n' ' ')
[ -z "$falt_r" ] || erro_est "NRs do manifesto ausentes do resultado: $falt_r"

mudancas=$(grep -c '^MUDANCA' "$MUDS"); mudancas=${mudancas:-0}
falhas=$(grep -c '^NAO-VERIFICADA' "$FALS"); falhas=${falhas:-0}

# --- resultado estruturado: gravado ANTES de qualquer promoção (achado 9) ----------------------
{
  echo "# vigencia-resultado v2 · run $INICIO · fim $(date +"%Y-%m-%dT%H:%M:%S%z")"
  echo "# CANDIDATO do run — NÃO é o baseline aprovado (baseline: vigencia-snapshot.txt)"
  echo "# formato: NR · status_pagina · status_pdf · status_texto · sha256_hrefs_pagina · sha256_pdf · sha256_texto"
  cat "$LINHAS_RES"
  echo "# --- mudanças ($mudancas) ---"
  if [ "$mudancas" -gt 0 ]; then sed 's/^/# /' "$MUDS"; else echo "# (nenhuma)"; fi
  echo "# --- falhas ($falhas) ---"
  if [ "$falhas" -gt 0 ]; then sed 's/^/# /' "$FALS"; else echo "# (nenhuma)"; fi
  echo "# --- erros de estrutura: $erros_estrutura ---"
} > "$RES.tmp" && mv "$RES.tmp" "$RES"

# --- relatório (mudanças e falhas COEXISTEM: as duas listas sempre saem) -----------------------
echo
echo "== MUDANÇAS ($mudancas) =="
if [ "$mudancas" -gt 0 ]; then cat "$MUDS"; else echo "(nenhuma)"; fi
echo "== FALHAS ($falhas) =="
if [ "$falhas" -gt 0 ]; then cat "$FALS"; else echo "(nenhuma)"; fi

# --- promoção do baseline (só em run completo e sem mudança) ----------------------------------
promo="NAO-PROMOVIDO"
if [ "$falhas" -eq 0 ] && [ "$erros_estrutura" -eq 0 ] && [ "$(grep -c '^NR-' "$LINHAS_CAND")" -eq "$ESPERADAS" ]; then
  if [ "$mudancas" -eq 0 ]; then
    if [ "$tem_snap" -eq 1 ] && diff -q <(grep '^NR-' "$SNAP") "$LINHAS_CAND" > /dev/null 2>&1; then
      promo="INALTERADO(baseline-confirmado)"    # nada mudou: não reescreve o arquivo aprovado
      rm -f "$CAND"
    else
      { echo "$CAB_SNAP"; echo "# atualizado em $INICIO por check-vigencia.sh (run limpo, $ESPERADAS/$ESPERADAS)"; cat "$LINHAS_CAND"; } > "$SNAP.tmp" \
        && mv "$SNAP.tmp" "$SNAP"
      rm -f "$CAND"
      promo="PROMOVIDO"
      [ "$tem_snap" -eq 0 ] && promo="PROMOVIDO(baseline-inicial)"
    fi
  else
    { echo "$CAB_SNAP"; echo "# CANDIDATO gerado em $INICIO — aguarda RNC + aprovação humana"; cat "$LINHAS_CAND"; } > "$CAND.tmp" \
      && mv "$CAND.tmp" "$CAND"
    promo="NAO-PROMOVIDO(mudanca-pendente-de-aprovacao)"
    echo
    echo "Baseline aprovado NÃO foi alterado. Candidato salvo em $CAND."
    echo "Abra RNC/auditoria extraordinária e, depois de aprovada, rode: $0 --aprovar"
  fi
else
  rm -f "$CAND.tmp"
  [ "$falhas" -gt 0 ] && promo="NAO-PROMOVIDO(run-incompleto)"
  [ "$erros_estrutura" -gt 0 ] && promo="NAO-PROMOVIDO(erro-de-estrutura)"
  echo
  [ -f "$CAND" ] && echo "AVISO: $CAND é de um run anterior e NÃO pode ser aprovado enquanto este run estiver incompleto (--aprovar recusa candidato obsoleto)."
  echo "Baseline aprovado NÃO foi alterado (run incompleto/inválido): as NRs acima continuarão"
  echo "sendo comparadas contra o baseline atual no próximo run — nenhuma mudança se perde."
fi

echo "RESUMO: verificadas=$n_res/$ESPERADAS · mudancas=$mudancas · falhas=$falhas · erros_estrutura=$erros_estrutura · snapshot=$promo"
echo "resultado por NR: $RES"
if [ "$mudancas" -gt 0 ] || [ "$falhas" -gt 0 ] || [ "$erros_estrutura" -gt 0 ]; then exit 1; fi
exit 0
