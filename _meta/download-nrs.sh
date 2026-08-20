#!/bin/bash
# Baixa os PDFs oficiais das NRs (gov.br / MTE-CTPP) e gera conversão .md via pdftotext.
# Fonte das URLs: _meta/fase1-fontes-oficiais.md (validadas em 19/08/2026).
# Reexecutável: rode novamente para atualizar (ex.: quando a nova NR-10 entrar em vigor em 01/06/2027,
# troque a URL da NR-10 abaixo pela nova versão publicada na página oficial).
set -u
BASE="$(cd "$(dirname "$0")/.." && pwd)/01-nrs-texto-oficial"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36"
DATA=$(date +%Y-%m-%d)
GOV="https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente"

# formato: numero|prioridade|titulo|ultima_alteracao|nota|url
NRS=(
"NR-01|prioridade-1|Disposições Gerais e Gerenciamento de Riscos Ocupacionais|Portaria MTE nº 765, de 15/05/2025|Capítulo 1.5 (riscos psicossociais no GRO/PGR) exigível desde 26/05/2026 (retificação de 19/08/2026 — Anexo I do texto ainda carrega a data pré-adiamento 26/05/2025). CORREÇÃO 19/08/2026: usar a consolidação 2025 (inclui Portaria 1.419/2024); a 2024 não traz os riscos psicossociais.|$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-01-atualizada-2025-i-3.pdf"
"NR-06|prioridade-1|Equipamentos de Proteção Individual - EPI|Portaria MTE nº 57, de 16/01/2025||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-06-atualizada-2025-ii.pdf"
"NR-10|prioridade-1|Segurança em Instalações e Serviços em Eletricidade|Portaria SEPRT nº 915, de 30/07/2019|ATENÇÃO: nova redação já publicada (Portaria MTE nº 737/2026, DOU 01/06/2026) entra em vigor em 01/06/2027; até lá vigora este texto de 2019. Atualizar este arquivo em jun/2027.|$GOV/arquivos/normas-regulamentadoras/nr-10-atualizada-2019-1.pdf"
"NR-11|prioridade-1|Transporte, Movimentação, Armazenagem e Manuseio de Materiais|Portaria MTPS nº 505, de 29/04/2016||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-11-atualizada-2016.pdf"
"NR-12|prioridade-1|Segurança no Trabalho em Máquinas e Equipamentos|Portaria MTE nº 344, de 21/03/2024||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-12-atualizada-2025.pdf"
"NR-18|prioridade-1|Segurança e Saúde no Trabalho na Indústria da Construção|Portaria MTE nº 836, de 13/05/2026||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/NR18atualizada2026I.pdf"
"NR-24|prioridade-1|Condições Sanitárias e de Conforto nos Locais de Trabalho|Portaria MTP nº 2.772, de 05/09/2022||$GOV/arquivos/normas-regulamentadoras/nr-24-atualizada-2022.pdf"
"NR-35|prioridade-1|Trabalho em Altura|Portaria MTE nº 1.259, de 15/07/2026|Página gov.br cita 15/06/2026, cabeçalho do PDF diz 15/07/2026 (PDF usado como fonte primária).|$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-35-atualizada-2025-1.pdf"
"NR-04|prioridade-2|Serviços Especializados em Segurança e em Medicina do Trabalho|Portaria MTP nº 4.219, de 20/12/2022||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-04-atualizada-2023.pdf"
"NR-05|prioridade-2|Comissão Interna de Prevenção de Acidentes e de Assédio - CIPA|Portaria MTP nº 4.219, de 20/12/2022|Possui Anexo I específico: CIPA da Indústria da Construção.|$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/NR05atualizada2023.pdf"
"NR-07|prioridade-2|Programa de Controle Médico de Saúde Ocupacional - PCMSO|Portaria MTP nº 567, de 10/03/2022||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-07-atualizada-2022-1.pdf"
"NR-09|prioridade-2|Avaliação e Controle das Exposições Ocupacionais a Agentes Físicos, Químicos e Biológicos|Portaria MTE nº 105, de 29/01/2026|Norma técnica subordinada ao GRO/PGR da NR-01 (não existe mais PPRA).|$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-09-atualizada-2026.pdf"
"NR-15|prioridade-2|Atividades e Operações Insalubres|Portaria MTE nº 2.021, de 03/12/2025||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-15-atualizada-2025.pdf"
"NR-17|prioridade-2|Ergonomia|Portaria MTP nº 4.219, de 20/12/2022||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-17-atualizada-2023.pdf"
"NR-26|prioridade-2|Sinalização de Segurança|Portaria MTP nº 2.770, de 05/09/2022||$GOV/arquivos/normas-regulamentadoras/nr-26-atualizada-2022.pdf"
"NR-33|prioridade-2|Segurança e Saúde nos Trabalhos em Espaços Confinados|Portaria SEPRT/MTE nº 1.690, de 15/06/2022||$GOV/arquivos/normas-regulamentadoras/nr-33-atualizada-2022-_retificada.pdf"
"NR-03|prioridade-3|Embargo e Interdição|Portaria SEPRT nº 1.068, de 23/09/2019||$GOV/arquivos/normas-regulamentadoras/nr-03_atualizada_2019.pdf"
"NR-08|prioridade-3|Edificações|Portaria MTP nº 2.188, de 28/07/2022||$GOV/arquivos/normas-regulamentadoras/nr-08-atualizada-2022.pdf"
"NR-20|prioridade-3|Segurança e Saúde no Trabalho com Inflamáveis e Combustíveis|Portaria MTE nº 60, de 21/01/2025||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-20-atualizada-2025.pdf"
"NR-21|prioridade-3|Trabalhos a Céu Aberto|Portaria MTE nº 2.037, de 15/12/1999|Norma enxuta, sem atualização desde 1999 (anterior ao padrão GRO/PGR).|$GOV/arquivos/normas-regulamentadoras/nr-21.pdf"
"NR-23|prioridade-3|Proteção Contra Incêndios|Portaria MTP nº 2.769, de 05/09/2022||$GOV/arquivos/normas-regulamentadoras/nr-23-atualizada-2022.pdf"
"NR-28|prioridade-3|Fiscalização e Penalidades|Portaria MTE nº 104, de 29/01/2026||$GOV/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-28-atualizada-2026.pdf"
)

fail=0
for entry in "${NRS[@]}"; do
  IFS='|' read -r nr prio titulo portaria nota url <<< "$entry"
  dir="$BASE/$prio/$nr"
  mkdir -p "$dir"
  pdf="$dir/$nr.pdf"
  code=$(curl -sL -A "$UA" -w '%{http_code}' -o "$pdf" "$url")
  mime=$(file -b --mime-type "$pdf")
  if [ "$code" != "200" ] || [ "$mime" != "application/pdf" ]; then
    echo "FALHA $nr: http=$code mime=$mime url=$url"
    fail=1
    continue
  fi
  txt="$dir/.tmp.txt"
  if ! pdftotext -layout "$pdf" "$txt" 2>/dev/null; then
    echo "FALHA $nr: pdftotext"
    fail=1
    continue
  fi
  md="$dir/$nr.md"
  {
    echo "---"
    echo "nr: $nr"
    echo "titulo: $titulo"
    echo "ultima_alteracao: $portaria"
    [ -n "$nota" ] && echo "nota: $nota"
    echo "fonte_pdf: $url"
    echo "data_download: $DATA"
    echo "sha256_pdf: $(shasum -a 256 "$pdf" | cut -d' ' -f1)"
    echo "conversao: automática (pdftotext -layout) — em divergência, o PDF oficial prevalece"
    echo "---"
    echo
    cat "$txt"
  } > "$md"
  rm -f "$txt"
  echo "OK $nr | http $code | $(du -h "$pdf" | cut -f1 | tr -d ' ') | $(wc -l < "$md" | tr -d ' ') linhas md | $prio"
  sleep 1
done
exit $fail
