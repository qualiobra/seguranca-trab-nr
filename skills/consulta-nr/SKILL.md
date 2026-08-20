---
name: consulta-nr
description: Use quando a pergunta envolver Normas Regulamentadoras (NRs), segurança do trabalho em obra ou canteiro — fiscalização, embargo, interdição, EPI, andaimes, altura, máquinas, treinamentos, dimensionamentos, áreas de vivência — ou quando for elaborar documentos de SST (controle de EPI, APR, PT, DDS, OS, checklists) e a base "Base NR Construção Civil" estiver disponível na máquina.
---

# Consulta à Base NR — Construção Civil

## Localizar a base

Raiz = a pasta que contém `AGENTS.md` e `01-nrs-texto-oficial/` (procure com Glob por
`**/01-nrs-texto-oficial` a partir do diretório de trabalho ou de `~/Downloads`). Leia o
`AGENTS.md` da base UMA vez por sessão — ele tem o roteamento e as precedências.

## O contrato da resposta (a forma é obrigatória)

Toda resposta sobre norma construída com esta base TEM esta forma:

1. **Rotear primeiro**: abra `03-matrizes/matriz-temas.md` e vá ao arquivo indicado para o tema
   (ficha, matriz, checklist, template, treinamentos). Não reconstrua o que a base já tem pronto —
   **aponte o artefato** (ex.: dimensionamento de sanitários vive em
   `04-templates/checklists/checklist-areas-vivencia.md` com a tabela de cálculo).
2. **Todo número de item de norma que aparecer na resposta foi LIDO no texto oficial local NESTA
   sessão** (`grep` do item em `01-nrs-texto-oficial/*/NR-XX/NR-XX.md`). Item que você conhece
   de memória mas não localizou no texto local entra SEM número, como **"[A CONFERIR no texto
   oficial]"** — ou não entra. Não existe terceira opção. E conferir tem dois limites: **a sua
   frase não pode dizer MAIS do que o dispositivo diz** (se o item lista 4 matérias, não o cite
   como regra geral) e **o número citado é o do item onde a palavra está, não o do vizinho**.
3. **Recomendação sem item citável = marcar `[PRÁTICA]`** (prática consagrada, não exigência
   legal). A base usa essa marca; preserve-a ao citar fichas.
4. **Checar vigência antes de afirmar**: a base é um snapshot datado (`_meta/CHANGELOG.md`).
   Se a data do snapshot for antiga ou houver aviso de mudança agendada (ex.: **NR-10 muda em
   01/06/2027**) que afete o tema, abra a resposta com esse aviso.
5. Divergência entre um destilado e o texto oficial local → **o PDF/texto oficial prevalece**;
   diga isso e sugira registrar o achado.

## Roteamento rápido

| Pergunta | Comece por |
|---|---|
| "Qual norma/item vale para X?" | `03-matrizes/matriz-temas.md` |
| "O que embarga/interdita?" | `00-guia-interdicao/guia-interdicao.md` |
| "Que documentos a obra precisa?" | `03-matrizes/matriz-documentos-obrigatorios.md` |
| "O que inspecionar/quando?" | `03-matrizes/matriz-inspecoes-periodicidades.md` + checklists |
| Detalhe de uma NR | `02-fichas-operacionais/ficha-NR-XX.md` → depois o texto oficial |
| Gerar documento (EPI, APR, PT, OS, DDS) | `04-templates/` — preencher o template, nunca criar do zero |
| Treinamento (carga, reciclagem, conteúdo) | `05-treinamentos/requisitos-treinamento-por-nr.md` |

## Armadilhas que derrubam respostas de memória

- Canteiro: em conflito NR-18 × NR-24, **NR-18 prevalece** (18.5.2). Grua = NR-18, não NR-11.
- O 12.2.9 da NR-12 **não desloca a NR-12 inteira** para a norma setorial — só sinalização,
  arranjo físico, circulação e armazenamento; o resto da NR-12 continua valendo na máquina de canteiro.
- **PPRA não existe mais** (o programa é o PGR/GRO da NR-01). "Prontuário NR-12" não existe na
  norma. Treinamento da NR-35 é **presencial obrigatório** desde a Portaria 1.259/2026.
- A lista completa vive no `AGENTS.md` da base — são os erros que a memória do modelo comete.

## Racionalizações — pare se pensar isso

| Pensamento | Realidade |
|---|---|
| "Esse item eu sei de cor" | A memória do modelo é anterior às portarias recentes. Conferir é um grep de 10 segundos. |
| "O usuário tem pressa" | Resposta rápida e errada em SST vira embargo ou acidente. O contrato não tem modo expresso. |
| "Vou montar um checklist pra ele" | A base tem 8 checklists com 326 itens verificados. Aponte o pronto; personalize depois. |
| "A base não cobre isso" | Diga explicitamente que não cobre, indique a fonte oficial (gov.br) e NÃO preencha o vazio com memória. |
