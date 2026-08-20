# Instruções para agentes de IA — Base NR Construção Civil

Você está consultando uma base de conhecimento sobre Normas Regulamentadoras (NRs) de
segurança e saúde no trabalho, focada em obras de construção civil no Brasil.
Snapshot montado e verificado em **19/08/2026**.

## Hierarquia de confiança (use nesta ordem)

1. **PDF oficial** (`01-nrs-texto-oficial/*/NR-XX/NR-XX.pdf`) — fonte da verdade absoluta.
2. **Markdown do texto oficial** (`NR-XX.md` ao lado do PDF) — conversão automática fiel
   (pdftotext); use para busca e citação; em divergência, o PDF prevalece. O front-matter
   traz portaria da versão, URL oficial, data de download e sha256.
3. **Destilados** (guia, fichas, matrizes, templates, treinamentos) — resumos operacionais
   verificados por revisão adversarial multiagente (~1.700 citações conferidas contra o texto oficial), mas NÃO
   substituem o texto oficial.

## Regras de citação

- Ao responder sobre exigência normativa, **cite sempre NR + item** (ex.: "NR-18, 18.9.1")
  e confirme o item no texto oficial local antes de afirmar — não cite de memória.
- **`[PRÁTICA]`** marca prática consagrada de mercado SEM item de norma citável (ex.: DDS,
  APR como formulário, ficha função→EPI). Nunca apresente algo marcado [PRÁTICA] como
  exigência legal; apresente como recomendação e diga de onde vem a obrigação real, se houver.
- No guia de interdição, as marcações **[OFICIAL] / [NOTÍCIA] / [ESTIMATIVA SETORIAL]**
  indicam a qualidade da fonte — preserve-as ao reutilizar o conteúdo.
- **⚠️** nos checklists/matrizes = não conformidade com potencial de embargo/interdição
  (classificação de campo; o enquadramento formal de grave e iminente risco é do
  Auditor-Fiscal do Trabalho). **▲** = autuação documental imediata provável.

## Por onde começar cada tipo de pergunta

| Pergunta | Comece por |
|---|---|
| "Qual norma/item se aplica a X?" | `03-matrizes/matriz-temas.md` |
| "O que pode embargar/interditar a obra?" | `00-guia-interdicao/guia-interdicao.md` |
| "Que documentos a obra precisa ter?" | `03-matrizes/matriz-documentos-obrigatorios.md` |
| "O que inspecionar e quando?" | `03-matrizes/matriz-inspecoes-periodicidades.md` |
| "Detalhes de uma NR específica" | `02-fichas-operacionais/ficha-NR-XX.md`, depois o texto oficial |
| "Elaborar controle de EPI, APR, PT, OS, DDS" | `04-templates/` (leia o README da pasta) |
| "Checklist de vistoria de campo" | `04-templates/checklists/` |
| "Treinamento: carga horária, reciclagem, conteúdo" | `05-treinamentos/requisitos-treinamento-por-nr.md` |
| "Gerar slides HTML de treinamento" | `05-treinamentos/instrucoes-slides-html.md` + `modelo-estrutura-deck.md` |

## Avisos de vigência (críticos)

- **NR-10**: o texto local é o VIGENTE (2019), mas a Portaria MTE nº 737/2026 entra em
  vigor em **01/06/2027** — a partir dessa data, este snapshot da NR-10 fica obsoleto.
  Ao gerar documento baseado em NR-10 perto dessa data, avise o usuário.
- **Ranking de interdições é síntese qualitativa** — não existe estatística oficial por
  item de NR (Radar SIT fora do ar em 08/2026). Não apresente o ranking como estatística.
- Snapshot de 19/08/2026: NRs mudam por portaria a qualquer momento. Para documentos
  formais, recomende conferir a página oficial (URLs em `_meta/fase1-fontes-oficiais.md`).
  Para atualizar a base: `_meta/como-atualizar.md`. Mantenha sua própria rotina de atualização — este snapshot é datado.

## Precedências que agentes costumam errar

- Canteiro de obra: em conflito NR-18 × NR-24 (chuveiros, bebedouros), **NR-18 prevalece** (18.5.2).
- **Grua = NR-18** (18.10.1.x); a NR-11 não trata de grua. Elevador de carga = NR-11 + NR-18.
- Serra circular/betoneira: requisitos construtivos na **NR-18**; NR-12 rege o geral de
  máquinas (a NR-12 remete equipamentos da construção à norma setorial — 12.2.9).
- PPRA não existe mais: o programa é o **PGR** (GRO da NR-01); a NR-09 é norma técnica de
  medição subordinada ao PGR.
- Riscos psicossociais no PGR: **exigíveis desde 26/05/2026** (NR-01, cap. 1.5).
