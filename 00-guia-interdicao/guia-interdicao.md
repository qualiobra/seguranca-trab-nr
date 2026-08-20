---
tipo: destilado
titulo: Guia de Interdição e Embargo em Obras
versao: 1.0
data: 2026-08-19
publico:
  - engenheiro e técnico de segurança de obra
  - encarregado / mestre / gestor de canteiro
  - agentes de IA operando em canteiro (RDO, checklist, priorização de risco)
fontes_locais:
  - _meta/fase1-dossie-interdicoes.md
  - 01-nrs-texto-oficial/prioridade-3/NR-03/NR-03.md
  - 01-nrs-texto-oficial/prioridade-3/NR-28/NR-28.md
  - 01-nrs-texto-oficial/prioridade-1/NR-01/NR-01.md
  - 01-nrs-texto-oficial/prioridade-1/NR-06/NR-06.md
  - 01-nrs-texto-oficial/prioridade-1/NR-10/NR-10.md
  - 01-nrs-texto-oficial/prioridade-1/NR-11/NR-11.md
  - 01-nrs-texto-oficial/prioridade-1/NR-12/NR-12.md
  - 01-nrs-texto-oficial/prioridade-1/NR-18/NR-18.md
  - 01-nrs-texto-oficial/prioridade-1/NR-24/NR-24.md
  - 01-nrs-texto-oficial/prioridade-1/NR-35/NR-35.md
  - 01-nrs-texto-oficial/prioridade-2/NR-07/NR-07.md
  - 01-nrs-texto-oficial/prioridade-2/NR-33/NR-33.md
versoes_das_nrs_conferidas:
  NR-03: Portaria SEPRT nº 1.068, de 23/09/2019
  NR-28: Portaria MTE nº 104, de 29/01/2026
  NR-18: Portaria MTE nº 836, de 13/05/2026
  NR-35: Portaria MTE nº 1.259, de 15/07/2026
convencoes:
  - "[OFICIAL] / [NOTÍCIA] / [ESTIMATIVA SETORIAL]: marcações herdadas do dossiê de pesquisa (fase1-dossie-interdicoes.md) — preservadas para rastreabilidade."
  - "[PRÁTICA]: recomendação operacional sem item de norma citável. Não é exigência legal."
  - "Todo item de NR citado neste guia foi conferido no arquivo local correspondente."
aviso: >-
  Documento destilado para uso operacional. NÃO substitui o texto oficial das Normas
  Regulamentadoras; em qualquer divergência, o PDF oficial publicado no DOU prevalece.
  Os arquivos .md locais são conversão automática (pdftotext -layout) dos PDFs oficiais.
---

# Guia de Interdição e Embargo em Obras

> **Como usar (humano ou agente):** este guia responde a três perguntas de canteiro — (1) *o que pode parar minha obra?*, (2) *o que o fiscal vai olhar quando chegar?*, (3) *o que faço para destravar?*. Cada afirmação normativa traz NR + item. Onde não há item citável, está marcado **[PRÁTICA]**.

---

## 1. Embargo vs. interdição

### 1.1 O critério que decide tudo: grave e iminente risco (GIR)

**Definição oficial:** "toda condição ou situação de trabalho que possa causar acidente ou doença com **lesão grave** ao trabalhador" (NR-03, item 3.2.1).

O GIR é o único gatilho de embargo/interdição. Não é gravidade percebida, não é "obra suja", não é falta de documento: é risco de lesão grave, aferido por método.

### 1.2 As duas medidas

| | **Embargo** | **Interdição** |
|---|---|---|
| O que para | A **obra** — paralisação parcial ou total (NR-03, 3.2.2.1) | A **atividade**, a **máquina ou equipamento**, o **setor de serviço** ou o **estabelecimento** — paralisação parcial ou total (NR-03, 3.2.2.2) |
| Natureza | Medida de urgência a partir da constatação de GIR (NR-03, 3.2.2) | Idem (NR-03, 3.2.2) |
| Combinação | Podem ser aplicados juntos, associados a uma ou mais das hipóteses acima (NR-03, 3.2.2.3) | Idem |
| Alcance | O Auditor-Fiscal do Trabalho (AFT) **deve adotar a medida na menor unidade** onde for constatado o GIR (NR-03, 3.2.2.3.1) | Idem |

**Leitura prática:** a norma empurra o fiscal para a *menor* unidade possível (NR-03, 3.2.2.3.1). Ou seja, uma serra circular sem proteção tende a gerar interdição da máquina, não embargo da obra inteira — a menos que o quadro geral do canteiro caracterize GIR generalizado. Isso é uma alavanca de negociação técnica real do engenheiro em campo **[PRÁTICA]**.

### 1.3 Quem lavra — e uma divergência entre normas que você precisa conhecer

Há dois textos locais que tratam do mesmo ato de forma diferente:

- **NR-03 (2019), item 3.2.2.3.1:** "**O Auditor Fiscal do Trabalho deve adotar** o embargo ou a interdição na menor unidade onde for constatada situação de grave e iminente risco." → o AFT adota o ato.
- **NR-28, item 28.2.1** (redação dada pela Portaria DNSST nº 7, de 05/10/1992): quando constatar GIR, o agente de inspeção "**deverá propor de imediato à autoridade regional competente** a interdição [...] ou o embargo parcial ou total da obra, determinando as medidas que deverão ser adotadas para a correção das situações de risco."

A NR-03 é a norma específica e mais recente sobre a matéria; o item 28.2.1 conserva redação de 1992. Na prática de campo o ato chega ao canteiro pelas mãos do AFT.

> **[OFICIAL/jurídico — via dossiê, não conferível nos .md locais de NR]** A base legal é o **art. 161 da CLT**, que atribui ao órgão regional competente, mediante laudo técnico que demonstre GIR, o poder de interditar estabelecimento, setor de serviço, máquina ou equipamento e de embargar obra, indicando as providências de prevenção. O dossiê registra ainda que a **Portaria nº 1.069 (SIT/MTE)** estendeu a atribuição diretamente aos AFTs em campo, sem autorização judicial prévia. **Nem o art. 161 nem essa portaria são citados no texto local da NR-03 ou da NR-28** — se o dado for usado como fundamento formal, conferir na fonte primária.

### 1.4 Como o fiscal decide: a metodologia da NR-03

O AFT não improvisa. A NR-03 impõe um método em três etapas (item 3.3.11):

1. **Risco atual** (situação encontrada) — o nível de risco observado, já considerando as medidas de controle existentes (3.3.11 "a").
2. **Risco de referência** (situação objetivo) — o risco remanescente se as medidas de prevenção devidas estivessem implementadas (3.3.11 "b"). **As condições previstas nas NRs são, por definição, a situação objetivo** (3.3.12.1).
3. **Excesso de risco** — a interseção entre os dois na Tabela 3.3 ou 3.4 (3.3.11 "c").

Em cada etapa determina-se **primeiro a consequência, depois a probabilidade** (3.3.12), sempre considerando a consequência de maior previsibilidade de ocorrência (3.3.12.2).

- **Consequência** (NR-03, Tabela 3.1): MORTE · SEVERA (lesão/sequela permanente) · SIGNIFICATIVA (incapacidade temporária > 15 dias) · LEVE (≤ 15 dias) · NENHUMA.
- **Probabilidade** (NR-03, Tabela 3.2): PROVÁVEL (medidas inexistentes ou reconhecidamente inadequadas) · POSSÍVEL (desvios ou problemas significativos, sem garantia de manutenção) · REMOTA (medidas adequadas com pequenos desvios) · RARA (medidas adequadas e com garantia de continuidade).
- **Tabela 3.3** = exposição individual ou reduzido número de vítimas (3.3.8). **Tabela 3.4** = risco de lesão/adoecimento de **diversas vítimas simultaneamente** (3.3.9) — é sensivelmente mais severa: em "Morte/Severa + Provável" a Tabela 3.4 devolve **E** em toda a linha.
- **Descritores do excesso de risco** (3.3.10): **E** extremo · **S** substancial · **M** moderado · **P** pequeno · **N** nenhum.

**Regra de corte:**

| Excesso de risco | Consequência |
|---|---|
| **E — extremo** | Passível de embargo/interdição "com a brevidade que a ocorrência exigir" (NR-03, 3.4.1) |
| **S — substancial** | Passível de embargo/interdição, **consideradas as circunstâncias do caso específico** (NR-03, 3.4.2) |
| **M / P / N** | **Não** são passíveis de embargo ou interdição (NR-03, 3.4.4) |

**Duas saídas que o canteiro precisa conhecer:**

- **Adequação imediata (NR-03, 3.4.3 e 3.4.3.1):** o AFT **deve considerar se a situação é passível de imediata adequação**. Concluindo que sim, ele determina a paralisação *das atividades relacionadas à situação de risco* e a adoção imediata de medidas de prevenção que saneiem o risco sem gerar riscos adicionais. Na prática, é a diferença entre "resolve agora" e "obra embargada" **[PRÁTICA]**.
- **Dispensa da metodologia (NR-03, 3.5.1.1):** quando a condição já está **definida como grave e iminente risco na própria NR**, o AFT fica dispensado de aplicar as tabelas. Não há discussão de matriz — é embargo/interdição direto.

Ainda: quando não houver previsão normativa da situação objetivo, o AFT deve incluir na fundamentação os critérios técnicos que usou (NR-03, 3.5.2.1). E a metodologia da NR-03 **não é** metodologia de gestão de riscos do empregador (NR-03, 3.5.1) — não serve de base para o PGR.

### 1.5 Efeitos práticos da paralisação

| Efeito | Base |
|---|---|
| **Salários continuam devidos.** "Durante a paralisação do serviço, em decorrência da interdição ou do embargo, os trabalhadores receberão os salários como se estivessem em efetivo exercício." | NR-03, **3.5.5** |
| **Pode-se trabalhar para corrigir.** Durante a vigência do embargo/interdição podem ser desenvolvidas as atividades necessárias à correção do GIR, desde que garantidas condições de segurança e saúde aos envolvidos. | NR-03, **3.5.4** |
| **Não é punição.** Embargo e interdição são medidas de proteção emergencial, não punitivas. | NR-03, **3.5.2** |
| **Mas não substituem a multa.** A imposição de embargo ou interdição **não elide** a lavratura de autos de infração pelas normas descumpridas. | NR-03, **3.5.3** |
| **Descumprir o ato é infração autônoma.** O quadro de classificação de infrações da NR-28 (Anexo II) tipifica os itens 3.2.2.1 (embargo), 3.2.2.2 (interdição), 3.5.4 e 3.5.5 da NR-03 — os três primeiros como **infração grau 4** (o mais alto), tipo Segurança. | NR-28, **Anexo II — NR-3** (códigos 103008-6, 103009-4, 103010-8; 3.5.5 = grau 2, código 103011-6) |

> **Traduzindo:** obra parada = folha rodando integralmente, sem produção. O custo real de um embargo é folha + prazo contratual + multa contratual do cliente + autos de infração — não a multa da NR-28 isoladamente **[PRÁTICA]**.

---

## 2. Como funciona a fiscalização na prática

### 2.1 Chegada do Auditor-Fiscal

A fiscalização segue o Decreto nº 4.552/2002, o Título VII da CLT e a Lei nº 5.889/1973 (NR-28, 28.1.1, com redação da Portaria MTE nº 104, de 29/01/2026). Não há aviso prévio e não há hora marcada **[PRÁTICA]**.

**O que o AFT pode fazer, por norma:**

- **Usar todos os meios de prova, inclusive audiovisuais**, para comprovar a infração, e anexar aos processos quaisquer documentos, de pormenorização de fatos ou comprobatórios (NR-28, **28.1.2**). Fotos e vídeos do canteiro são prova regular.
- **Lavrar auto de infração** à vista do descumprimento de preceito de NR, **considerando o critério da dupla visita** previsto no Decreto nº 4.552/2002, no Título VII da CLT e no § 3º do art. 6º da Lei nº 7.855/1989 (NR-28, **28.1.3**, redação da Portaria MTE nº 104/2026).
- **Notificar com prazo para correção**, com base em critérios técnicos (NR-28, **28.1.4**).
- **Lavrar auto com base em laudo técnico** de engenheiro de segurança do trabalho ou médico do trabalho habilitado (NR-28, **28.1.5**).
- **Propor/adotar embargo ou interdição** quando constatar GIR, **determinando as medidas de correção** (NR-28, **28.2.1**; NR-03, 3.2.2 e 3.2.2.3.1).

### 2.2 Prazos de notificação — o relógio que a obra precisa controlar

| Situação | Prazo | Base |
|---|---|---|
| Prazo para cumprir os itens notificados | **máximo 60 dias** | NR-28, **28.1.4.1** |
| Pedido de prorrogação (por escrito, com exposição de motivos relevantes), apresentado à autoridade regional | **em até 10 dias** do recebimento da notificação | NR-28, **28.1.4.2** |
| Prorrogação possível | até **120 dias** contados da data do Termo de Notificação | NR-28, **28.1.4.2** |
| Prazo superior a 120 dias | condicionado a **prévia negociação com o sindicato** dos empregados, com presença da autoridade regional | NR-28, **28.1.4.3** |
| Recorrer ou pedir prorrogação de **cada item** notificado | **até 10 dias** da data de emissão da notificação | NR-28, **28.1.4.4** |

> **Atenção, agentes de IA:** estes prazos são de **notificação/auto de infração** (NR-28). **Não** são o prazo de recurso contra o embargo/interdição — ver seção 5.

### 2.3 Descumprimento reiterado

A autoridade regional pode, à vista de relatório circunstanciado do AFT, **convocar o representante legal da empresa** para apurar o motivo da irregularidade e propor solução (NR-28, **28.2.3**). Entende-se por **descumprimento reiterado** a lavratura de auto de infração **por 3 (três) vezes** quanto ao **mesmo item** de NR, ou a negligência do empregador em cumprir as disposições, violando-as reiteradamente, deixando de atender advertências, intimações ou sanções, sob reiterada ação fiscal (NR-28, **28.2.3.1**).

### 2.4 Documentos que a obra deve ter à mão

Obrigação-mãe: o empregador deve **disponibilizar à Inspeção do Trabalho todas as informações relativas à segurança e saúde no trabalho** (NR-01, **1.4.1 "f"**). E os documentos do PGR devem estar **sempre disponíveis** aos trabalhadores, seus representantes e à Inspeção do Trabalho (NR-01, **1.5.7.2.1**).

| Documento | Base | Observação |
|---|---|---|
| **Comunicação Prévia de Obra** em sistema informatizado da SIT, feita **antes do início das atividades** | NR-18, **18.3.1 "b"** | NR-28 Anexo II: grau 3, cód. 318140-5 |
| **PGR do canteiro**, elaborado por profissional legalmente habilitado em segurança do trabalho | NR-18, **18.4.1** e **18.4.2** | Em canteiro até 7 m de altura e no máximo 10 trabalhadores, pode ser elaborado por profissional *qualificado* (NR-18, 18.4.2.1) |
| **Inventário de riscos** + **plano de ação** (documentos mínimos do PGR) | NR-01, **1.5.7.1 "a" e "b"** | Devem ser datados e assinados (NR-01, 1.5.7.2) |
| **PGR atualizado conforme a etapa** em que se encontra o canteiro | NR-18, **18.4.3.1** | Obra em fundação e PGR de acabamento = achado clássico **[PRÁTICA]** |
| **Projetos anexos ao PGR:** área de vivência; elétrico das instalações temporárias; sistemas de proteção coletiva; SPIQ quando aplicável; relação de EPI com especificações | NR-18, **18.4.3 "a" a "e"** | Todos por profissional legalmente habilitado |
| **Inventário de riscos das contratadas**, fornecido ao contratante e contemplado no PGR do canteiro | NR-18, **18.4.4** | Cobrar de subempreiteiro antes da mobilização **[PRÁTICA]** |
| **PCMSO** e **ASO** de cada trabalhador | NR-07, **7.5.1** (PCMSO) e **7.5.19** (emissão de ASO a cada exame clínico ocupacional) | NR-28 Anexo II: 7.5.1 = grau **4**, tipo Medicina (cód. 107104-1) |
| **Ordens de serviço** sobre SST, com ciência dos trabalhadores | NR-01, **1.4.1 "c"** | |
| **Registro de fornecimento de EPI** (livro, ficha ou sistema eletrônico, inclusive biométrico) | NR-06, **6.5.1 "d"** | |
| **Registros de capacitação** (inicial/periódico/eventual), com avaliação de aprendizado **exceto para o treinamento inicial** | NR-18, **18.14.1**, **18.14.1.1** (carga horária, periodicidade e conteúdo conforme Anexo I da NR-18) e **18.14.5** ("os treinamentos devem possuir avaliação [...] **exceto para o treinamento inicial**") | Treinamento básico deve ser **presencial** (NR-18, 18.14.3) |
| **Autorização formal para trabalho em altura**, consignada nos documentos funcionais | NR-35, **35.4.1** e **35.4.1.3**; sistema de identificação da abrangência em **35.4.1.3.1** | |
| **Análise de Risco (AR)** e, quando aplicável, **Permissão de Trabalho (PT)** para altura | NR-35, **35.3.1 "b"** e **35.5.5** | Documentação de altura deve ser arquivada por **no mínimo 5 anos** (NR-35, 35.3.1 "j") |
| **Laudos de inspeção e medição elétrica** das instalações temporárias, com aterramento | NR-18, **18.6.7** | |
| **Registro formal de liberação de uso do andaime**, assinado por profissional **qualificado** em segurança do trabalho **ou** pelo responsável pela frente de trabalho ou da obra | NR-18, **18.12.4** | |
| **Projeto de montagem de andaime** por profissional legalmente habilitado | NR-18, **18.12.2** | |
| **Termo de entrega técnica e liberação para uso** de grua após montagem/manutenção | NR-18, **18.10.1.39** (conferido no Anexo II da NR-28 como grau 2, cód. 318323-8) | |
| **Manuais e procedimentos de máquinas** e registro de capacitação de operadores | NR-12, **12.13.1** e **12.13.2** (manual de instruções do fabricante, em português, no local de trabalho); **12.14.1** (procedimentos de trabalho e segurança a partir da apreciação de riscos); **12.16.1** e **12.16.2** (operação/manutenção/inspeção só por trabalhador capacitado e formalmente autorizado, com capacitação providenciada pelo empregador) | Os itens 12.16.1/12.16.2 sustentam apenas a **capacitação**; manual e procedimentos têm itens próprios |

### 2.5 Direitos e deveres da empresa

**Deveres (todos com item citável):**

- Cumprir e fazer cumprir as disposições legais e regulamentares de SST — NR-01, **1.4.1 "a"**.
- Informar aos trabalhadores riscos existentes, medidas de prevenção adotadas, resultados de exames médicos e de avaliações ambientais — NR-01, **1.4.1 "b"**, incisos I a IV.
- **Permitir que representantes dos trabalhadores acompanhem a fiscalização** — NR-01, **1.4.1 "d"**.
- Disponibilizar à Inspeção do Trabalho **todas** as informações de SST — NR-01, **1.4.1 "f"**.
- Determinar procedimentos para caso de acidente ou doença relacionada ao trabalho, **incluindo a análise de suas causas** — NR-01, **1.4.1 "e"**.
- **Vedar o ingresso ou a permanência** de trabalhador no canteiro sem que esteja resguardado pelas medidas da NR-18 — NR-18, **18.3.1 "a"**.
- Implementar medidas na ordem de prioridade: eliminação → proteção coletiva → medidas administrativas/organizacionais → EPI — NR-01, **1.4.1 "g"**, I a IV; reafirmado para a construção em NR-18, **18.16.1**, e para altura em NR-35, **35.5.2 "a" a "c"**.

**Direitos e garantias procedimentais:**

- **Critério da dupla visita** na lavratura do auto de infração — NR-28, **28.1.3**.
- **Prazo para correção** por notificação, com pedido de prorrogação — NR-28, **28.1.4** a **28.1.4.4**.
- **Trabalhar durante a paralisação para corrigir o risco** — NR-03, **3.5.4**.
- **Fundamentação técnica obrigatória**: a classificação de consequência e probabilidade é feita "de forma fundamentada pelo Auditor-Fiscal do Trabalho" (NR-03, **3.3.4**); e, sem previsão normativa da situação objetivo, os critérios técnicos devem constar da fundamentação (NR-03, **3.5.2.1**).
- **Suspensão do ato mediante novo laudo** — NR-28, **28.2.2** (ver seção 5).

> **[PRÁTICA] Postura recomendada em campo:** acompanhar o AFT do início ao fim, registrar por escrito tudo o que ele apontar (item de NR, local, equipamento, foto), não discutir mérito no canteiro e não remover/alterar a cena antes do registro. Discussão técnica se faz por escrito, com laudo — não com o fiscal em cima da laje.

---

## 3. Ranking das situações que mais embargam/interditam obra

> ### ⚠ Leia antes de usar este ranking
>
> **Este ranking é síntese qualitativa, não estatística.** Conforme o dossiê de pesquisa (`_meta/fase1-dossie-interdicoes.md`, seções 3.1 e 4):
>
> - **Não existe tabela oficial e pública que ranqueie numericamente os motivos de embargo/interdição por item de NR na construção civil** — a pesquisa de 19/08/2026 não localizou série histórica de embargos/interdições por ano com quebra por motivo/NR **[ESTIMATIVA SETORIAL / gap de dado oficial]**.
> - O **Radar SIT**, painel público de transparência da fiscalização (lançado em 15/09/2021), **estava fora do ar em agosto de 2026**, em reconstrução para "uma versão mais moderna e robusta" — não foi possível extrair números atuais do painel **[OFICIAL, mas ferramenta indisponível]**.
> - A ordenação abaixo combina: (a) o que a metodologia da NR-03 estruturalmente classifica como excesso de risco E/S em obra, (b) casos reais noticiados, (c) conteúdo técnico de SST de canteiro. **Trate como hipótese de trabalho e priorização de checklist — nunca como estatística citável.**
>
> **Correção de fonte importante:** o dossiê referencia itens da NR-18 na numeração **anterior** à revisão de 2020 (ex.: "18.15 andaimes", "18.17 periferia", "18.7 escavações", "18.14 gruas", "18.4 áreas de vivência"). A NR-18 vigente no arquivo local (**Portaria MTE nº 836, de 13/05/2026**) usa outra numeração. **Os itens da tabela abaixo foram reconferidos no texto local** e substituem os do dossiê. O dossiê também atribui gruas à NR-11 — o texto local da NR-11 **não menciona gruas**; gruas em obra estão na NR-18, item 18.10.1.33 e seguintes.

*Coluna "grau": classificação da infração no Anexo II da NR-28 (escala 1 a 4; 4 = mais grave). Tipo S = Segurança, M = Medicina.*

| # | Situação de risco | NR / item (conferido) | Grau NR-28 | O que o fiscal observa | Prevenção |
|---|---|---|---|---|---|
| **1** | **Queda de altura — periferia de laje, aberturas no piso, poço de elevador** | NR-18 **18.9.1** (proteção coletiva onde houver risco de queda, projetada por habilitado); **18.9.2** (fechamento ou proteção das aberturas no piso); **18.9.3** (fechamento provisório dos vãos de acesso às caixas de elevador); **18.9.4** (proteção de periferia **a partir do início dos serviços de concretagem da 1ª laje**); **18.9.4.2** (guarda-corpo: travessão superior a 1,2 m/90 kgf/m, intermediário a 0,7 m/66 kgf/m, rodapé 0,15 m/22 kgf/m, vãos preenchidos com tela) | 3 (S) | Periferia sem guarda-corpo ou com altura/resistência fora de especificação; abertura de shaft tapada com chapa solta; poço de elevador aberto; plataforma de proteção sobrecarregada (18.9.4.3 "c") | Guarda-corpo conforme 18.9.4.2 desde a 1ª laje; fechamento **travado ou fixado à estrutura** (18.9.2 "a", 18.9.3); projeto de proteção coletiva no PGR (18.4.3 "c"); inspeção semanal de redes de segurança (18.9.4.4.5) |
| **2** | **Trabalho em altura sem sistema de proteção, autorização ou AR** | NR-35 **35.6.1** (obrigatório SPQ sempre que não for possível evitar o trabalho em altura); **35.4.1** (só trabalhador formalmente autorizado); **35.5.5** (todo trabalho em altura precedido de AR); **35.3.1 "g"** (só iniciar após adotadas as medidas); **35.3.1 "h"** (suspender o trabalho diante de risco não previsto) | **4** (S) para 35.4.1, 35.6.1 e 35.3.1 "h" | Trabalhador com cinto sem talabarte conectado; ancoragem improvisada; ausência de AR; nenhum plano de resgate (35.5.5.1 "k"); trabalhador sem autorização nos documentos funcionais | Hierarquia da 35.5.2: evitar → eliminar → minimizar consequência; AR cobrindo as 13 alíneas de 35.5.5.1; autorização documentada (35.4.1.3); treinamento inicial de **8 h** antes de iniciar a atividade (35.4.2.1); inspeção inicial/rotineira/periódica do SPIQ (35.6.6) |
| **3** | **Andaime irregular / plataforma de trabalho** | NR-18 **18.12.1** (requisitos do andaime); **18.12.2** (montagem conforme projeto de profissional legalmente habilitado); **18.12.4** (**registro formal de liberação de uso**, assinado por profissional qualificado em segurança do trabalho ou pelo responsável pela frente de trabalho/da obra); **18.12.5** (superfície resistente, forração completa); **18.12.3** (torre não estaiada ou não fixada à estrutura **não pode exceder 4× a menor dimensão da base de apoio**); **18.12.11** (proibido trabalhar em plataforma sobre cavaletes com altura > **1,5 m** e largura < **0,9 m**); **18.12.17** (proibido deslocar andaime com trabalhador sobre ele) | 3 (S) | Andaime sem forração completa, sem travamento, sem estaiamento, sem termo de liberação; guarda-corpo ausente na plataforma; andaime suspenso com cabo enrolado no corpo do guincho (18.12.20) | Projeto + liberação formal antes do uso (18.12.2 e 18.12.4); montagem/desmontagem conforme 18.12.6; manutenção por trabalhador capacitado sob supervisão (18.12.10) |
| **4** | **Escavação sem contenção, sem faixa livre na borda, sem acesso** | NR-18 **18.7.2.3** (escavação > 1,25 m só com liberação e autorização de profissional legalmente habilitado); **18.7.2.8** (escavação > 1,25 m protegida com talude ou escoramento definidos em projeto, com escadas ou rampas próximas); **18.7.2.7** (**faixa de proteção mínima de 1 m livre de cargas** na borda, e proteção contra entrada de águas superficiais); **18.7.2.2** (sinalização de advertência, inclusive noturna, e barreira de isolamento em todo o perímetro); **18.7.2.1** (projeto por habilitado) | 3 (S) | Vala funda sem escoramento; bota-fora encostado na borda; ausência de escada de acesso; perímetro sem isolamento | Projeto e liberação antes de abrir (18.7.2.1 e 18.7.2.3); escoramento/talude de projeto + escada/rampa próxima (18.7.2.8); manter 1 m de faixa livre (18.7.2.7). **Risco de múltiplas vítimas → Tabela 3.4 da NR-03, que é mais severa** |
| **5** | **Máquina/equipamento sem proteção nas zonas de perigo (serra circular, policorte, betoneira)** | NR-12 **12.5.1** (zonas de perigo devem possuir sistemas de segurança — proteções fixas, móveis e dispositivos interligados); **12.16.1** e **12.16.2** (operação, manutenção e inspeção somente por trabalhadores capacitados, habilitados, qualificados ou autorizados) | **4** (S) para 12.5.1 (cód. 312358-8); 2 (S) para 12.16.x | Serra circular sem coifa/cutelo divisor; proteção removida "para agilizar"; operador sem capacitação registrada; dispositivo de parada de emergência inoperante (NR-12, 12.6) | Proteção nas zonas de perigo antes de liberar a máquina (12.5.1); manutenção conforme 12.11.1; capacitação compatível com a máquina utilizada (NR-18, 18.14.2) |
| **6** | **Instalações elétricas provisórias improvisadas** | NR-18 **18.6.2** (instalações temporárias executadas e mantidas conforme **projeto elétrico** de profissional legalmente habilitado); **18.6.4** (**proibida a existência de partes vivas expostas e acessíveis** a não autorizados); **18.6.5** (condutores: sem obstruir circulação, protegidos contra impacto e umidade, isolação conforme norma, isolação dupla/reforçada para equipamentos móveis ou portáteis); **18.6.6** (conexões, emendas e derivações com resistência mecânica, condutividade e isolação compatíveis); **18.6.7** (aterramento + inspeções e medições periódicas com laudo); **18.6.3** e **18.6.1** (serviços por trabalhadores autorizados, conforme NR-10). NR-10 **10.2.1** (medidas preventivas de controle do risco elétrico mediante análise de risco); **10.4.1**/**10.4.2**; **10.8.8** (trabalhadores autorizados) | 3 (S) na NR-18; **4** (S) para NR-10 10.2.1 (cód. 210122-0), 10.4.1 e 10.4.2 | Emenda com fita isolante em área molhada; quadro sem DR ou sem aterramento; cabo passando sobre estrutura metálica; extensão improvisada alimentando betoneira | Projeto elétrico das temporárias no PGR (NR-18, 18.4.3 "b"); zero partes vivas acessíveis (18.6.4); laudo de aterramento e medições periódicas (18.6.7); serviço só com trabalhador autorizado (18.6.3) |
| **7** | **Grua, elevador de obra e movimentação vertical de cargas** | NR-18 **18.10.1.21** (**manter isolamento e sinalização da área sob carga suspensa**); **18.10.1.33** (requisitos da grua: cabine de comando acoplada à parte giratória, luz de obstáculo, limitador/contador de giro etc.); **18.10.1.34** (proibições específicas de operação — inclui, na alínea "c", afastamento da rede elétrica conforme a concessionária e mínimo de **3 m de qualquer obstáculo**, com análise de risco por habilitado para distâncias menores); **18.10.1.36** (ancoragem/estaiamento); **18.10.1.38** (montagem, telescopagem e desmontagem de gruas ascensionais); **18.10.1.26** (guindastes e gruas: indicadores e dispositivos). Elevadores: **18.11.2** (proibido elevador tracionado com cabo único), **18.11.13** (barreira/cancela em todos os acessos de entrada à torre), **18.11.14** (fechamento da base da torre), **18.11.17** (proibido transportar pessoas junto com materiais, salvo exceção), **18.11.18** e **18.11.19** (itens mínimos de segurança), **18.11.11** (torres afastadas ou isoladas de redes elétricas). NR-11 **11.1.1** (poços de elevadores e monta-cargas cercados solidamente em toda a altura), **11.1.3** e **11.1.3.1** (equipamentos conservados; cabos de aço, correntes, roldanas e ganchos inspecionados permanentemente), **11.1.3.2** (carga máxima indicada em local visível), **11.1.5** (treinamento específico do operador) | 3 (S) na NR-18; **4** (S) para NR-11 11.1.1, 11.1.3, 11.1.3.1 e 11.1.3.3 | Área de projeção de carga sem isolamento; cabo de aço com fios rompidos; carga máxima não indicada; operação com vento acima do limite (18.10.1.34 "b"); acesso à torre sem cancela | Termo de entrega técnica após montagem/manutenção; inspeção permanente de cabos, correntes, roldanas e ganchos (NR-11, 11.1.3.1); isolamento da área; operador treinado (NR-11, 11.1.5). **Baixa frequência, altíssima letalidade — caso Pelotas/RS, 3 mortos [NOTÍCIA]** |
| **8** | **Áreas de vivência inadequadas ou inexistentes** | NR-18 **18.5.1** (áreas de vivência com condições mínimas de segurança, conforto e privacidade, em perfeito estado de conservação, higiene e limpeza, contemplando instalação sanitária, vestiário, local para refeição e alojamento quando houver trabalhador alojado); **18.5.3** (1 conjunto sanitário para cada 20 trabalhadores ou fração; 1 chuveiro para cada 10 ou fração); **18.5.4** (instalações obrigatórias do alojamento); **18.5.2** (aplicação subsidiária da NR-24). NR-24 **24.2.1** (instalação sanitária com bacia sifonada, assento com tampo e lavatório) | 3 (S) na NR-18; 2 (S) na NR-24 | Banheiro químico único para frente inteira; ausência de água potável; alojamento superlotado; local de refeição inexistente | Projeto da área de vivência anexo ao PGR (NR-18, 18.4.3 "a"); dimensionar por 18.5.3 e revisar a cada mobilização. **Item recorrente em embargos ligados a resgate de trabalho análogo à escravidão — força-tarefa PB: 14 obras fiscalizadas, 10 (71%) embargadas total ou parcialmente [NOTÍCIA]** |
| **9** | **Espaço confinado sem PET e sem monitoramento de atmosfera (cisterna, poço, fossa, subsolo)** | NR-33 **33.7.1 "a", "b" e "c"** (proibição expressa de entrada e trabalho **sem prévia autorização**, **sem avaliação atmosférica antes da entrada e sem monitoramento contínuo** e **sem vigia**); **33.5.5** (toda e qualquer entrada deve ser precedida da emissão da **PET**) e **33.5.6 "a"–"h"** (campos mínimos da PET); **33.5.15.1** (avaliação atmosférica imediatamente antes da entrada, com o supervisor fora do espaço) e **33.5.15.3** (monitoramento contínuo durante toda a permanência); **33.5** (medidas de prevenção em espaços confinados); PET conforme NR-33 (adaptação do modelo de Permissão de Entrada e Trabalho é atribuição do responsável técnico — **33.3.2 "b"**; cadastro de espaços confinados — 33.3.2 "a"; plano de resgate — 33.3.2 "e") | **4** (S) para 33.7.1 (cód. 133141-8), 33.5.15.1 (133122-1), 33.5.15.3 (133123-0) e 33.5 (133107-8); 3 (S) para 33.5.5/33.5.6 (133142-6) | Entrada em cisterna sem medição de atmosfera, sem vigia, sem PET | Rara no canteiro predial comum, determinante em infraestrutura/saneamento. Múltiplas vítimas são comuns (o resgatador também morre) → **Tabela 3.4 da NR-03** |
| **10** | **Documental: PGR, PCMSO/ASO, capacitação** *(agravante, raramente causa isolada de embargo)* | NR-01 **1.5.3.1** (implementar o gerenciamento de riscos por estabelecimento), **1.5.7.1** (PGR = inventário de riscos + plano de ação), **1.5.7.2.1** (documentos sempre disponíveis à Inspeção); NR-18 **18.4.1**, **18.4.2**, **18.4.3**, **18.4.3.1**; NR-07 **7.5.1** (PCMSO) e **7.5.19** (ASO) | NR-01 1.5.3.1 = 3 (S); NR-01 1.5.7.1 "a" = 2 (S); NR-18 18.4.1 = 3 (S); **NR-07 7.5.1 = 4 (M)** | PGR inexistente ou desatualizado em relação à etapa; ASO admissional posterior à entrada no canteiro; treinamento sem avaliação de aprendizado | **Auto de infração quase certo em qualquer fiscalização, mas por si só raramente configura GIR imediato** — costuma acompanhar e agravar outros achados [ESTIMATIVA SETORIAL] |
| **11** | **EPI ausente, inadequado ou sem registro** *(agravante)* | NR-06 **6.5.1 "c"** (fornecer gratuitamente EPI adequado ao risco, em perfeito estado, observada a hierarquia de medidas), **6.5.1 "e"** (exigir o uso), **6.5.1 "a"** (adquirir somente o aprovado), **6.5.1 "d"** (registrar o fornecimento), **6.5.1 "g"** (substituir imediatamente quando danificado ou extraviado) | **4** (S) para 6.5.1 "b", "c" e "e"; 3 (S) para "a" e "g"; 2 (S) para "d" | EPI vencido, sem CA, sem ficha de entrega; capacete de terceiro | **Campeã de autuação, não de embargo isolado**: falta de talabarte em trabalho em altura é enquadrada como NR-35, não como "NR-06 pura" [ESTIMATIVA SETORIAL] |

### 3.1 Por que a ordem é essa — em uma linha

Quedas lideram porque produzem a combinação que a NR-03 classifica direto como excesso de risco extremo: **consequência MORTE + probabilidade PROVÁVEL** (medidas de prevenção inexistentes) contra uma situação-objetivo normativa clara (NR-03, Tabelas 3.1, 3.2 e 3.3; 3.3.12.1). Escavação, espaço confinado e grua sobem de peso porque acionam a **Tabela 3.4** (múltiplas vítimas simultâneas — NR-03, 3.3.9), que devolve **E** em muito mais combinações. Documental e EPI ficam por último **para fins de embargo** — não para fins de multa, onde são os mais frequentes.

**Contexto do setor [dados do dossiê, com as marcações originais]:**
- 2.888 acidentes fatais registrados no Brasil em 2023 (eSocial/MTE) **[OFICIAL]**.
- Estudo CBIC/SESI (base AEPS/AEAT/CATWEB), ano-base 2023: acidentes típicos na construção civil −30%+, doenças do trabalho −25%, letalidade −60%, mortalidade −71%; 6ª posição em acidentes típicos e 9ª em doenças ocupacionais entre setores; 20.224 afastamentos previdenciários **[OFICIAL — fonte previdenciária, divulgação por entidade patronal]**.
- Quedas de altura ≈ 40% dos acidentes de trabalho no Brasil, 65% delas na construção civil, 74% de letalidade quando ocorrem no setor **[ESTIMATIVA SETORIAL — sem fonte primária localizada; usar como indicativo de gravidade, não como número oficial]**.

---

## 4. Multas e gradação (NR-28)

### 4.1 A mecânica em três passos

> "As infrações aos preceitos legais e/ou regulamentadores sobre segurança e saúde do trabalhador terão as penalidades aplicadas conforme o disposto no **quadro de gradação de multas (Anexo I)**, obedecendo às infrações previstas no **quadro de classificação das infrações (Anexo II)** desta Norma." — NR-28, **28.3.1**

1. **Identificar o item de NR descumprido** → o Anexo II da NR-28 devolve, para cada item/subitem, um **código** de infração, um **grau de infração (1 a 4)** e o **tipo (S = Segurança, M = Medicina)**.
   *Exemplo conferido:* NR-12, item 12.5.1 → código 312358-8, infração **4**, tipo **S**. NR-07, item 7.5.1 → código 107104-1, infração **4**, tipo **M**.
2. **Levar grau + tipo ao Anexo I** → a linha é o **número de empregados** da empresa e a coluna é o grau (I1 a I4), separadas por Segurança e Medicina. O cruzamento devolve a **faixa** da multa.
3. **Converter a faixa** — ver 4.3 abaixo. É aqui que quase todo mundo erra.

### 4.2 Anexo I — gradação de multas, em BTN (valores do texto local)

**Segurança do Trabalho**

| Nº de empregados | I1 | I2 | I3 | I4 |
|---|---|---|---|---|
| 01–10 | 630–729 | 1129–1393 | 1691–2091 | 2252–2792 |
| 11–25 | 730–830 | 1394–1664 | 2092–2495 | 2793–3334 |
| 26–50 | 831–936 | 1665–1935 | 2496–2898 | 3335–3876 |
| 51–100 | 964–1104 | 1936–2200 | 2899–3302 | 3877–4418 |
| 101–250 | 1105–1241 | 2201–2471 | 3303–3718 | 4419–4948 |
| 251–500 | 1242–1374 | 2472–2748 | 3719–4121 | 4949–5490 |
| 501–1000 | 1375–1507 | 2749–3020 | 4122–4525 | 5491–6033 |
| Mais de 1000 | 1508–1646 | 3021–3284 | 4526–4929 | 6034–6304 |

**Medicina do Trabalho**

| Nº de empregados | I1 | I2 | I3 | I4 |
|---|---|---|---|---|
| 01–10 | 378–428 | 676–839 | 1015–1254 | 1350–1680 |
| 11–25 | 429–498 | 840–1002 | 1255–1500 | 1681–1998 |
| 26–50 | 499–580 | 1003–1166 | 1501–1746 | 1999–2320 |
| 51–100 | 581–662 | 1167–1324 | 1747–1986 | 2321–2648 |
| 101–250 | 663–744 | 1325–1482 | 1987–2225 | 2649–2976 |
| 251–500 | 745–826 | 1483–1646 | 2226–2471 | 2977–3297 |
| 501–1000 | 827–906 | 1647–1810 | 2472–2717 | 3298–3618 |
| Mais de 1000 | 907–990 | 1811–1973 | 2718–2957 | 3619–3782 |

*Fonte: NR-28, Anexo I (alterado pela Portaria DNSST nº 3, de 1º/07/1992), conforme arquivo local.*

### 4.3 Sobre os valores em R$ — a armadilha

- **O Anexo I está em BTN, não em reais.** O guia não converte, e agente de IA não deve converter por conta própria.
- **A conversão é normativa e anual:** "Os valores de multas previstos nesta NR devem ser reajustados anualmente na forma do **art. 634, § 2º, da CLT**, com redação da Lei nº 13.467/2017, e conforme regulamentação da **portaria que estipula os parâmetros para a aplicação das multas administrativas** previstas na legislação trabalhista" (NR-28, **28.3.3**, inserido pela Portaria MTE nº 104/2026). **Para o valor em R$ do exercício corrente, consultar a portaria de parâmetros vigente.**
- **⚠ O Anexo IA da NR-28 traz valores em R$ — mas NÃO se aplica à construção.** Seu título é explícito: "Valor das multas específicas de **trabalho portuário (NR-29)**". Usar essa tabela para obra é erro grosseiro.
- **Nas atividades rurais** (agricultura, pecuária, silvicultura, exploração florestal, aquicultura e as previstas nos itens 31.2.2 e 31.2.2.1 da NR-31), o cálculo segue o art. 18, *caput*, da Lei nº 5.889/1973 (NR-28, **28.3.2**, inserido pela Portaria MTE nº 104/2026) — também fora do escopo de obra urbana.
- **Valores em R$ que circulam em blogs de SST** (a faixa "R$ 402,53 a mais de R$ 6.708,00 por infração comum") são **[ESTIMATIVA SETORIAL]** segundo o dossiê, não confirmados em fonte primária. **Não usar como número oficial.**

### 4.4 Reincidência, embaraço e fraude — o teto

Em caso de **reincidência**, **embaraço ou resistência à fiscalização**, ou **emprego de artifício ou simulação com o objetivo de fraudar a lei**, a multa é aplicada na forma do **art. 201, parágrafo único, da CLT**, nos seguintes valores (NR-28, **28.3.1.1**):

| | Valor da multa (em UFIR) |
|---|---|
| **Segurança do Trabalho** | **6.304** |
| **Medicina do Trabalho** | **3.782** |

> Note que o texto da NR-28 usa **BTN** no Anexo I e **UFIR** no item 28.3.1.1 — os números coincidem com o teto da última faixa do Anexo I. Ambos são índices extintos, o que reforça a regra do 28.3.3: o valor efetivo vem da portaria de parâmetros.

### 4.5 O que multa e o que para: não confundir

| | Embargo / Interdição | Auto de infração / multa |
|---|---|---|
| Natureza | Medida de proteção emergencial, **não punitiva** (NR-03, 3.5.2) | Sanção administrativa |
| Efeito | Obra ou máquina parada, salários devidos (NR-03, 3.5.5) | Valor em dinheiro |
| Convivem? | **Sim.** A imposição de embargo/interdição não elide a lavratura dos autos (NR-03, **3.5.3**) | Sim |
| Trabalhar durante o ato | **Infração autônoma grau 4** (NR-28, Anexo II — NR-3, itens 3.2.2.1 e 3.2.2.2) | — |

---

## 5. Recurso e levantamento do embargo

### 5.1 O caminho normativo do levantamento (base local, item citável)

> "A autoridade regional competente, **à vista de novo laudo técnico do agente da inspeção do trabalho**, procederá à suspensão ou não da interdição ou embargo." — NR-28, **28.2.2**

Isto é o eixo operacional: **quem levanta o embargo é a autoridade regional, e o insumo é um novo laudo técnico do AFT**. Ou seja, o caminho é *sanar o risco* e *provocar nova verificação* — não é discutir.

Somam-se a isso:

- O AFT, ao adotar a medida, **determina as medidas que deverão ser adotadas para a correção das situações de risco** (NR-28, **28.2.1**). Esse texto é a "lista de tarefas" oficial da desinterdição — não invente escopo além ou aquém dele **[PRÁTICA]**.
- Durante a vigência do embargo/interdição, **é permitido executar as atividades necessárias à correção do GIR**, garantidas condições de segurança e saúde aos trabalhadores envolvidos (NR-03, **3.5.4**). É o que autoriza mobilizar equipe para instalar guarda-corpo com a obra embargada.
- Enquanto isso, **salários seguem devidos** (NR-03, **3.5.5**) — o relógio de custo já está rodando.

### 5.2 Recurso administrativo — prazo de 10 dias

> **[OFICIAL/jurídico — via dossiê; NÃO consta do texto local da NR-03 nem da NR-28]** Conforme o dossiê de pesquisa: cabe **recurso administrativo à Coordenação-Geral de Recursos (CGR)** da Secretaria do Trabalho, apresentado na **SRT/GRT da localidade** do embargo/interdição, **no prazo de 10 dias** contados do dia seguinte à notificação do ato; a **CGR pode conceder efeito suspensivo** ao recurso (**art. 161, § 3º, da CLT**). Antes de usar como fundamento formal, conferir na fonte primária (CLT/portaria), pois este guia não conseguiu validar o dispositivo nos arquivos locais de NR.

> **⚠ Não confundir prazos.** Os "10 dias" da **NR-28, 28.1.4.2 e 28.1.4.4** referem-se a **notificação de irregularidades** (pedido de prorrogação e recurso de itens notificados), não ao recurso contra embargo/interdição. São institutos diferentes, com efeitos diferentes.

### 5.3 Roteiro de regularização e pedido de desinterdição

| # | Passo | Base |
|---|---|---|
| 1 | **Obter e ler o ato**: qual é a unidade paralisada (obra, setor, máquina, atividade) e **quais medidas de correção foram determinadas** | NR-28, 28.2.1; NR-03, 3.2.2.1/3.2.2.2/3.2.2.3.1 |
| 2 | **Isolar fisicamente** a unidade embargada/interditada e comunicar todas as frentes e subempreiteiras — trabalhar na área é infração grau 4 | NR-28, Anexo II — NR-3 (3.2.2.1, 3.2.2.2) |
| 3 | **Manter a folha** e comunicar RH — os trabalhadores recebem como se em efetivo exercício | NR-03, **3.5.5** |
| 4 | **Mobilizar a correção** dentro da área paralisada, com condições de segurança para quem executa o saneamento | NR-03, **3.5.4** |
| 5 | **Atacar exatamente as medidas determinadas** pelo AFT, item por item, com evidência fotográfica datada e ART/laudo do profissional habilitado quando o item exigir projeto (ex.: NR-18, 18.4.3 "c", 18.12.2, 18.6.2) | NR-28, 28.2.1 |
| 6 | **Atualizar o PGR** conforme a etapa e incorporar a causa-raiz ao inventário de riscos e ao plano de ação | NR-18, **18.4.3.1**; NR-01, **1.5.7.1** |
| 7 | **Protocolar o pedido de suspensão** junto à autoridade regional, instruído com as evidências, e solicitar a nova verificação — a suspensão depende de **novo laudo técnico do AFT** | NR-28, **28.2.2** |
| 8 | **Recurso administrativo**, se for o caso, em paralelo e sem parar a correção — 10 dias, CGR, com possibilidade de efeito suspensivo | **[OFICIAL/jurídico — via dossiê, art. 161 § 3º CLT; confirmar na fonte primária]** |
| 9 | **Não retomar** a atividade antes da suspensão formal do ato | NR-28, 28.2.2 |
| 10 | **Fechar o ciclo documental**: análise de causas do evento e ordens de serviço atualizadas | NR-01, **1.4.1 "e"** e **1.4.1 "c"** |

> **[PRÁTICA] Estratégia:** correção e recurso são trilhas paralelas, não alternativas. Recurso não destrava obra — laudo novo destrava. Priorize sempre o passo 7.

> **Atenção à reincidência:** três autos de infração sobre o **mesmo item** de NR caracterizam descumprimento reiterado (NR-28, **28.2.3.1**), o que habilita a convocação do representante legal da empresa (NR-28, **28.2.3**) e agrava a multa na forma do art. 201, parágrafo único, da CLT (NR-28, **28.3.1.1**).

---

## 6. Checklist rápido — "o fiscal chegou"

*Para uso imediato por encarregado, técnico de segurança ou agente de IA acionado em campo.*

1. **Receber e identificar** o Auditor-Fiscal do Trabalho; acionar imediatamente o engenheiro/técnico de segurança responsável e a direção. Nunca deixe o AFT circular sozinho **[PRÁTICA]**.
2. **Chamar o representante dos trabalhadores** para acompanhar a fiscalização — é obrigação do empregador permitir esse acompanhamento (NR-01, **1.4.1 "d"**).
3. **Não obstruir, não omitir, não "arrumar" a cena.** Embaraço ou resistência à fiscalização eleva a multa ao patamar do art. 201, parágrafo único, da CLT (NR-28, **28.3.1.1**).
4. **Disponibilizar toda informação de SST solicitada** (NR-01, **1.4.1 "f"**) e o PGR (NR-01, **1.5.7.2.1**).
5. **Separar a pasta da obra em minutos**: Comunicação Prévia (NR-18, 18.3.1 "b") · PGR + inventário de riscos + plano de ação (NR-18, 18.4.1; NR-01, 1.5.7.1) · projetos anexos ao PGR (NR-18, 18.4.3 "a" a "e") · PCMSO e ASOs (NR-07, 7.5.1 e 7.5.19) · fichas de EPI (NR-06, 6.5.1 "d") · registros de treinamento (NR-18, 18.14) · autorizações de trabalho em altura + AR/PT (NR-35, 35.4.1 e 35.5.5) · laudo elétrico (NR-18, 18.6.7) · liberação de andaimes (NR-18, 18.12.4) · inventários de risco das contratadas (NR-18, 18.4.4).
6. **Varredura relâmpago das cinco frentes que mais param obra:** periferia e aberturas de laje (NR-18, 18.9.2/18.9.3/18.9.4) · trabalhadores em altura conectados a SPQ (NR-35, 35.6.1) · proteções nas zonas de perigo das máquinas (NR-12, 12.5.1) · quadros e cabos elétricos sem partes vivas acessíveis (NR-18, 18.6.4) · área sob carga suspensa isolada e sinalizada (NR-18, 18.10.1.21) e acesso à torre do elevador com barreira/cancela (NR-18, 18.11.13).
7. **Sanar o que der para sanar na hora.** A NR-03 obriga o AFT a considerar se a situação é **passível de imediata adequação** (**3.4.3** e **3.4.3.1**) — corrigir no ato pode substituir a paralisação da obra pela paralisação apenas da atividade de risco.
8. **Suspender qualquer trabalho em altura** onde houver condição de risco não prevista e não neutralizável de imediato — é obrigação da organização, não favor ao fiscal (NR-35, **35.3.1 "h"**).
9. **Vedar a permanência** no canteiro de qualquer trabalhador não resguardado pelas medidas da NR-18 (NR-18, **18.3.1 "a"**).
10. **Registrar tudo em paralelo**: anotar item de NR, local exato, equipamento, hora e fotografar o mesmo ponto que o fiscal fotografar. O AFT pode usar todos os meios, inclusive audiovisuais (NR-28, **28.1.2**) — a obra também deve ter seu registro **[PRÁTICA]**.
11. **Anotar cada prazo dado**: notificação vale no máximo 60 dias (NR-28, **28.1.4.1**); prorrogação e recurso de item notificado devem ser pedidos em **até 10 dias** (NR-28, **28.1.4.2** e **28.1.4.4**).
12. **Se houver embargo/interdição**: identificar a unidade exata paralisada (NR-03, **3.2.2.3.1**), isolá-la fisicamente, e transcrever literalmente as medidas de correção determinadas (NR-28, **28.2.1**).
13. **Não parar a folha** — salários seguem devidos durante a paralisação (NR-03, **3.5.5**) — e **mobilizar a correção**, que é permitida durante a vigência do ato (NR-03, **3.5.4**).
14. **Abrir o pedido de suspensão** assim que o risco estiver sanado, com evidências, ciente de que a suspensão depende de **novo laudo técnico do AFT** (NR-28, **28.2.2**).
15. **No dia seguinte**: análise de causas do evento (NR-01, **1.4.1 "e"**), atualização do PGR conforme a etapa (NR-18, **18.4.3.1**) e verificação se o item já foi autuado antes — três autos no mesmo item = descumprimento reiterado (NR-28, **28.2.3.1**).

---

## 7. Notas de rastreabilidade e limitações

1. **Divergência NR-03 × NR-28 sobre quem adota o ato:** NR-03, 3.2.2.3.1 (o AFT adota) × NR-28, 28.2.1 (o agente propõe à autoridade regional, redação de 1992). Registrada na seção 1.3.
2. **Numeração da NR-18 corrigida:** o dossiê usa a numeração anterior à revisão de 2020 (18.4 vivência, 18.7 escavações, 18.14 gruas, 18.15 andaimes, 18.17 periferia). A NR-18 local (Portaria MTE nº 836, de 13/05/2026) organiza a matéria em 18.5 (áreas de vivência), 18.6 (instalações elétricas), 18.7 (etapas de obra, incl. 18.7.2 escavação), 18.9 (prevenção contra queda de altura), 18.10 (máquinas, equipamentos, ferramentas — gruas em 18.10.1.33+), 18.11 (movimentação e transporte de materiais e pessoas / elevadores), 18.12 (andaime e plataforma de trabalho), 18.14 (capacitação). **Este guia usa a numeração vigente.**
3. **Gruas não são NR-11 nesta base:** o texto local da NR-11 não contém a palavra "grua". A NR-11 trata de elevadores, guindastes, transportadores e movimentação/armazenamento em geral (11.1.1 a 11.4.1); gruas de obra estão na NR-18, 18.10.1.33 e seguintes. O dossiê atribuía gruas à NR-11.
4. **Portaria MTE nº 104/2026 confirmada:** o dossiê a registrava como **[ESTIMATIVA SETORIAL — não confirmada em fonte primária]**. O arquivo local da NR-28 (baixado em 19/08/2026, sha256 `58e58df7...`) traz **Portaria MTE nº 104, de 29 de janeiro de 2026, DOU 30/01/26** no quadro de alterações e em três dispositivos (28.1.1, 28.1.3, 28.3.2 e 28.3.3). **Passa a [OFICIAL].**
5. **Art. 161 da CLT e Portaria SIT nº 1.069 não constam** dos textos locais da NR-03 e da NR-28 — permanecem **[OFICIAL/jurídico — via dossiê]**, a conferir em fonte primária.
6. **Prazo de 10 dias para recurso à CGR** também não consta dos textos locais — mesma ressalva.
7. **Valores de multa em R$ não foram derivados.** O Anexo I local está em BTN; o Anexo IA em R$ aplica-se exclusivamente ao trabalho portuário (NR-29). A conversão depende da portaria anual de parâmetros (NR-28, 28.3.3).
8. **O ranking da seção 3 não é estatística.** Não há fonte oficial que ranqueie embargos/interdições por item de NR na construção civil; o Radar SIT estava fora do ar em 08/2026. Próximos passos sugeridos pelo dossiê: Radar SIT/ENIT quando restabelecido, SmartLab (`smartlabbr.org/sst`) por CNAE da seção F, e pedido via LAI ao MTE.
9. **Anexo II da NR-28 não foi reproduzido integralmente** — apenas os graus de infração dos itens efetivamente citados neste guia, conferidos um a um no arquivo local. Para qualquer outro item, consultar diretamente `01-nrs-texto-oficial/prioridade-3/NR-28/NR-28.md`.
