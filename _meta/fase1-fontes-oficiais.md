# Fase 1 — Fontes oficiais: NRs de SST para Construção Civil

Levantamento das Normas Regulamentadoras (NRs) brasileiras de segurança e saúde no
trabalho relevantes para construção civil, com URLs oficiais validadas.

**Fonte oficial:** portal gov.br — Ministério do Trabalho e Emprego, seção "Normas
Regulamentadoras Vigentes" da Comissão Tripartite Paritária Permanente (CTPP).

- Índice geral: https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/inspecao-do-trabalho/seguranca-e-saude-no-trabalho/ctpp-nrs/normas-regulamentadoras-nrs
- Cada NR tem página própria em:
  `.../comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/<slug>`

**Metodologia de validação:**
1. Busca do índice oficial + página individual de cada NR (fetch das 22 páginas, todas HTTP 200).
2. Extração do link do PDF "vigente" (o marcado como texto atual na página, distinto de
   versões históricas arquivadas).
3. Validação de cada PDF com `curl` GET (não HEAD — o WAF do gov.br bloqueia HEAD com 403
   mas permite GET) verificando `HTTP 200` + `Content-Type: application/pdf`.
4. Download de cada PDF e extração de texto da primeira página (`pdftotext`) para confirmar,
   como fonte primária (o cabeçalho oficial "Alterações/Atualizações" impresso no próprio
   PDF), o título oficial e a portaria/data da última alteração — em vez de confiar apenas no
   texto de apoio ("Última modificação: ...") da página HTML, que em alguns casos mostrou
   divergências pontuais de data em relação ao PDF (ex.: NR-35).
5. Data de referência da checagem: 19/08/2026.

Todos os 22 PDFs e todas as 22 páginas retornaram **HTTP 200** — nenhuma falha de validação.

---

## Tabela — NRs relevantes para construção civil

| NR | Título oficial | Última alteração (conforme cabeçalho do PDF vigente) | Status | HTTP (PDF) | URL do PDF |
|---|---|---|---|---|---|
| NR-01 | Disposições Gerais e Gerenciamento de Riscos Ocupacionais | Portaria MTE nº 765, de 15/05/2025 | Vigente. Adiou para 25/05/2026 a exigibilidade do capítulo 1.5 (riscos psicossociais no GRO/PGR) — prazo já decorrido na data desta checagem, item já exigível. | 200 | [nr-01-atualizada-2024-i-1.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-01-atualizada-2024-i-1.pdf) |
| NR-03 | Embargo e Interdição | Portaria SEPRT nº 1.068, de 23/09/2019 | Vigente | 200 | [nr-03_atualizada_2019.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-03_atualizada_2019.pdf) |
| NR-04 | Serviços Especializados em Segurança e em Medicina do Trabalho | Portaria MTP nº 4.219, de 20/12/2022 | Vigente | 200 | [nr-04-atualizada-2023.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-04-atualizada-2023.pdf) |
| NR-05 | Comissão Interna de Prevenção de Acidentes e de Assédio — CIPA | Portaria MTP nº 4.219, de 20/12/2022 | Vigente. Nome/escopo ampliado para incluir prevenção de assédio. Possui Anexo I específico "CIPA da Indústria da Construção". | 200 | [NR05atualizada2023.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/NR05atualizada2023.pdf) |
| NR-06 | Equipamentos de Proteção Individual — EPI | Portaria MTE nº 57, de 16/01/2025 | Vigente | 200 | [nr-06-atualizada-2025-ii.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-06-atualizada-2025-ii.pdf) |
| NR-07 | Programa de Controle Médico de Saúde Ocupacional — PCMSO | Portaria MTP nº 567, de 10/03/2022 | Vigente | 200 | [nr-07-atualizada-2022-1.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-07-atualizada-2022-1.pdf) |
| NR-08 | Edificações | Portaria MTP nº 2.188, de 28/07/2022 | Vigente | 200 | [nr-08-atualizada-2022.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-08-atualizada-2022.pdf) |
| NR-09 | Avaliação e Controle das Exposições Ocupacionais a Agentes Físicos, Químicos e Biológicos | Portaria MTE nº 105, de 29/01/2026 | Vigente. Ver nota específica abaixo sobre o escopo pós-GRO. | 200 | [nr-09-atualizada-2026.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-09-atualizada-2026.pdf) |
| NR-10 | Segurança em Instalações e Serviços em Eletricidade | Portaria SEPRT nº 915, de 30/07/2019 (texto **atualmente vigente**) | **Vigente o texto de 2019** — mas já existe nova redação aprovada e publicada pela **Portaria MTE nº 737, de 29/05/2026** (DOU 01/06/2026), com vacatio legis de 1 ano: só entra em vigor em **01/06/2027**. Até lá, o PDF oficial "vigente" no site continua sendo o de 2019 (é o que está publicado na página oficial e foi o validado). Ver alerta abaixo. | 200 | [nr-10-atualizada-2019-1.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-10-atualizada-2019-1.pdf) |
| NR-11 | Transporte, Movimentação, Armazenagem e Manuseio de Materiais | Portaria MTPS nº 505, de 29/04/2016 | Vigente | 200 | [nr-11-atualizada-2016.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-11-atualizada-2016.pdf) |
| NR-12 | Segurança no Trabalho em Máquinas e Equipamentos | Portaria MTE nº 344, de 21/03/2024 | Vigente | 200 | [nr-12-atualizada-2025.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-12-atualizada-2025.pdf) |
| NR-15 | Atividades e Operações Insalubres | Portaria MTE nº 2.021, de 03/12/2025 | Vigente | 200 | [nr-15-atualizada-2025.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-15-atualizada-2025.pdf) |
| NR-17 | Ergonomia | Portaria MTP nº 4.219, de 20/12/2022 | Vigente | 200 | [nr-17-atualizada-2023.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-17-atualizada-2023.pdf) |
| NR-18 | Segurança e Saúde no Trabalho na Indústria da Construção | Portaria MTE nº 836, de 13/05/2026 | Vigente. Base da reformulação: Portaria SEPRT nº 3.733/2020, com prazos diferenciados por item (já decorridos). | 200 | [NR18atualizada2026I.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/NR18atualizada2026I.pdf) |
| NR-20 | Segurança e Saúde no Trabalho com Inflamáveis e Combustíveis | Portaria MTE nº 60, de 21/01/2025 | Vigente | 200 | [nr-20-atualizada-2025.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-20-atualizada-2025.pdf) |
| NR-21 | Trabalhos a Céu Aberto | Portaria MTE nº 2.037, de 15/12/1999 | Vigente. Norma muito enxuta (10 itens) e sem atualização desde 1999 — não redigida no padrão "moderno" (sem GRO/PGR explícito). | 200 | [nr-21.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-21.pdf) |
| NR-23 | Proteção Contra Incêndios | Portaria MTP nº 2.769, de 05/09/2022 | Vigente | 200 | [nr-23-atualizada-2022.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-23-atualizada-2022.pdf) |
| NR-24 | Condições Sanitárias e de Conforto nos Locais de Trabalho | Portaria MTP nº 2.772, de 05/09/2022 | Vigente | 200 | [nr-24-atualizada-2022.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-24-atualizada-2022.pdf) |
| NR-26 | Sinalização de Segurança | Portaria MTP nº 2.770, de 05/09/2022 | Vigente | 200 | [nr-26-atualizada-2022.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-26-atualizada-2022.pdf) |
| NR-28 | Fiscalização e Penalidades | Portaria MTE nº 104, de 29/01/2026 | Vigente | 200 | [nr-28-atualizada-2026.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-28-atualizada-2026.pdf) |
| NR-33 | Segurança e Saúde nos Trabalhos em Espaços Confinados | Portaria SEPRT/MTE nº 1.690, de 15/06/2022 | Vigente (entrou em vigor em 03/10/2022, já decorrido) | 200 | [nr-33-atualizada-2022-_retificada.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-33-atualizada-2022-_retificada.pdf) |
| NR-35 | Trabalho em Altura | Portaria MTE nº 1.259, de 15/07/2026 | Vigente. **Atenção:** o texto de apoio da própria página gov.br cita a data "15 de junho de 2026" para esta portaria, mas o cabeçalho oficial impresso no PDF vigente registra "15 de julho de 2026" — usei o PDF (fonte primária) como referência; vale checagem pontual antes de citar a data em documento formal. | 200 | [nr-35-atualizada-2025-1.pdf](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-35-atualizada-2025-1.pdf) |

### Páginas oficiais (url_pagina) de cada NR

Todas retornaram HTTP 200.

| NR | URL da página oficial |
|---|---|
| NR-01 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/nr-1 |
| NR-03 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-3-nr-3 |
| NR-04 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-4-nr-4 |
| NR-05 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-5-nr-5 |
| NR-06 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-6-nr-6 |
| NR-07 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-7-nr-7 |
| NR-08 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-8-nr-8 |
| NR-09 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-9-nr-9 |
| NR-10 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-10-nr-10 |
| NR-11 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-11-nr-11 |
| NR-12 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-12-nr-12 |
| NR-15 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-15-nr-15 |
| NR-17 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-17-nr-17 |
| NR-18 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-18-nr-18 |
| NR-20 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-20-nr-20 |
| NR-21 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-21-nr-21 |
| NR-23 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-23-nr-23 |
| NR-24 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-24-nr-24 |
| NR-26 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-26-nr-26 |
| NR-28 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-28-nr-28 |
| NR-33 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-33-nr-33 |
| NR-35 | https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-35-nr-35 |

---

## Notas e respostas às perguntas específicas

### 1) NR nova ou revogada em 2025–2026 que afete a lista?

- **Nenhuma NR nova** criada em 2025–2026 foi identificada como relevante para construção
  civil (não há indício de NR-39/NR-40 ou similar recém-criada). A busca aponta 38 NRs no
  total do sistema hoje, com **NR-2 (Inspeção Prévia)** e **NR-27 (Registro Profissional do
  Técnico de Segurança do Trabalho)** já revogadas há mais tempo — nenhuma das duas está na
  lista solicitada, então não afeta o escopo.
- **Achado relevante não solicitado explicitamente, mas importante:** a **NR-10** tem uma
  nova redação já **assinada e publicada** (Portaria MTE nº 737, de 29/05/2026, DOU
  01/06/2026), que reformula a norma (prioriza desenergização sobre EPI, trata arco elétrico,
  integra o risco elétrico ao GRO). Essa nova redação **só entra em vigor em 01/06/2027**
  (vacatio legis de 1 ano). Por isso, na data desta checagem (19/08/2026), o texto
  oficialmente "vigente" no site do MTE — e o que foi validado nesta pesquisa — ainda é o de
  2019 (Portaria SEPRT nº 915/2019). **Recomendação:** revisitar este levantamento perto de
  01/06/2027 para trocar o PDF de referência da NR-10.
- **NR-01**: o capítulo 1.5 (gerenciamento de riscos ocupacionais, incluindo riscos
  psicossociais) teve a exigibilidade adiada pela Portaria MTE nº 765/2025 para 25/05/2026 —
  prazo já vencido na data desta checagem, ou seja, já plenamente exigível.

### 2) A NR-09 ainda existe como norma autônoma? Qual o escopo atual pós-GRO?

Sim, continua existindo como norma autônoma, mas com escopo **reduzido e subordinado** ao
GRO/PGR da NR-01. Após a reforma que extinguiu o PPRA (substituído pelo PGR sob o GRO da
NR-01), a NR-09 passou a se chamar **"Avaliação e Controle das Exposições Ocupacionais a
Agentes Físicos, Químicos e Biológicos"** e hoje funciona como norma **técnica/instrumental**:
estabelece os critérios técnicos de avaliação (quando e como avaliar quantitativamente
exposição a ruído, calor, poeiras, agentes químicos, biológicos etc.), mas só se aplica
"quando identificados no Programa de Gerenciamento de Riscos (PGR)" (item 9.1.1 do texto
vigente) — os resultados dessas avaliações alimentam o inventário de riscos do PGR. Ou seja,
não há mais um "programa" próprio da NR-09 (como era o PPRA); ela é insumo técnico do GRO.

### 3) NR adicional indispensável para canteiro de obra não incluída na lista?

A lista fornecida já cobre praticamente todo o núcleo clássico de SST aplicável a canteiros
(riscos gerais, CIPA, EPI, PCMSO, edificações, exposições ocupacionais, elétrica, transporte
de materiais, máquinas, insalubridade, ergonomia, construção civil propriamente dita,
inflamáveis, trabalho a céu aberto, incêndio, condições sanitárias, sinalização, fiscalização,
espaços confinados, altura). A lacuna mais defensável é:

- **NR-19 — Explosivos**: obras de terraplenagem em rocha, abertura de túneis, fundações
  especiais e demolições controladas em canteiros de maior porte frequentemente envolvem uso,
  transporte e armazenamento de explosivos — atividade regulada por norma própria, não
  incluída na lista original.

---

## Resumo técnico das validações

- 22/22 páginas oficiais (`url_pagina`): HTTP 200.
- 22/22 PDFs oficiais (`url_pdf`): HTTP 200, `Content-Type: application/pdf`, conteúdo
  conferido via `pdftotext` (título e portaria de última alteração extraídos do próprio
  cabeçalho do documento).
- Nenhuma falha de validação (nenhum 403/404/timeout no PDF final).
- Observação técnica: requisições `HEAD` (`curl -I`) ao domínio gov.br retornam 403
  sistematicamente (WAF bloqueia HEAD); foi necessário usar `GET` com `-o /dev/null` para
  obter o código HTTP real. Isso não indica problema com os links — apenas uma peculiaridade
  do WAF do gov.br.

---

## CORREÇÃO (19/08/2026, pós-fase 3)

**NR-01:** a URL originalmente validada (`nr-01-atualizada-2024-i-1.pdf`) aponta para a
consolidação de 2024, que NÃO contém as alterações da Portaria MTE nº 1.419/2024 (riscos
psicossociais no GRO/PGR). A página oficial também publica `nr-01-atualizada-2025-i-3.pdf`
(consolidação 2025, com as alterações da 1.419/2024 incorporadas e 5 menções a "psicossociais").
A base local foi atualizada para a consolidação 2025 — detectado pelo agente de destilação da
ficha NR-01, que estranhou a ausência do tema no texto e sinalizou em vez de inventar.

**Retificação (19/08/2026, retificação de 19/08/2026 —):** este relatório afirma (L34 e
L106) que a Portaria MTE nº 765/2025 adiou a exigibilidade do cap. 1.5 "para 25/05/2026". O
cabeçalho do capítulo no texto oficial diz "Entra em vigor em 26 de maio de 2026" — ou seja, a
redação anterior valeu ATÉ 25/05/2026 e a exigência vale DESDE 26/05/2026. As linhas originais
foram preservadas como registro histórico; prevalece esta retificação.
