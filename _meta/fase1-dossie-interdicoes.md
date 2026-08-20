# Dossiê — Embargos e Interdições em Obras de Construção Civil no Brasil

**Objetivo:** fundamentar um "guia de interdição" para uso por agentes de IA no dia a dia de canteiro (RDO, checklist de fiscalização, priorização de risco).

**Data da pesquisa:** 19/08/2026
**Método:** pesquisa em fontes públicas (legislação, portais gov.br, imprensa especializada, publicações técnicas). Cada afirmação é marcada como **[OFICIAL]** (norma, dado governamental primário), **[NOTÍCIA]** (fato jornalístico verificável, geralmente uma operação específica) ou **[ESTIMATIVA SETORIAL]** (consultoria de SST, blog técnico, síntese de mercado — sem tabela oficial rastreável por trás).

---

## 1. Resumo executivo

Embargo (paralisação da obra) e interdição (paralisação de máquina, setor ou estabelecimento) são medidas administrativas cautelares — não punitivas — previstas no art. 161 da CLT e regulamentadas pela NR-3, aplicáveis quando um Auditor-Fiscal do Trabalho constata "grave e iminente risco" (GIR) à vida ou saúde do trabalhador. A paralisação não afeta os salários: a empresa continua obrigada a pagá-los normalmente. Cabe recurso administrativo em 10 dias, que pode ter efeito suspensivo. As multas por infração a NRs seguem a gradação da NR-28 (Anexo I, por número de empregados) somada à classificação da infração (Anexo II), com valores que a literatura de mercado reporta na faixa de ~R$ 400 a ~R$ 6.700 por infração em casos "comuns" — não há, porém, tabela oficial em texto puro que eu tenha conseguido extrair diretamente do PDF da NR-28 nesta pesquisa (ver nota na seção 6). A construção civil segue como um dos setores mais acidentados do país: quedas de altura respondem por cerca de 40% dos acidentes de trabalho no Brasil, com 65% dessas quedas ocorrendo na construção civil e letalidade de 74% quando ocorrem nesse setor **[ESTIMATIVA SETORIAL, sem fonte primária localizada]**. Em 2023 o setor teve queda relevante nos indicadores (>30% menos acidentes típicos, -71% mortalidade) segundo estudo CBIC/SESI com base em AEPS/CATWEB **[dado oficial de fonte previdenciária, veiculado por associação patronal]**. Não localizei uma tabela pública, oficial e atualizada que ranqueie os motivos de embargo/interdição por item de NR especificamente para a construção civil — o ranking da seção 4 é, portanto, uma síntese qualitativa (não numérica) construída a partir de casos noticiados, normas técnicas e publicações de mercado, e deve ser tratado como hipótese de trabalho, não como estatística. Dentro dessa ressalva, a priorização citada no briefing (NR-18/35, 12, 10, 33, 06, 01) é plausível e consistente com o que a pesquisa encontrou, mas eu ajustaria o peso relativo — ver seção "Validação da priorização" ao final.

---

## 2. Base legal

### 2.1 CLT, art. 161 — fundamento da paralisação

O art. 161 da CLT atribui ao órgão regional competente em segurança e saúde no trabalho (hoje, na prática, ao próprio Auditor-Fiscal do Trabalho, por delegação consolidada em portarias) o poder de, mediante laudo técnico do serviço competente que demonstre grave e iminente risco para o trabalhador, **interditar estabelecimento, setor de serviço, máquina ou equipamento**, ou **embargar obra**, indicando na decisão as providências necessárias à prevenção de infortúnios do trabalho.
Pontos centrais reportados pelas fontes consultadas [OFICIAL/jurídico]:
- É medida cautelar/administrativa, não penalidade.
- Historicamente a competência era do "Delegado Regional do Trabalho" (hoje Superintendência Regional do Trabalho); a Portaria nº 1.069 (SIT/MTE) estendeu a atribuição de embargar/interditar diretamente aos Auditores-Fiscais do Trabalho em campo, sem necessidade de autorização judicial prévia — ponto que já foi objeto de disputa jurídica quanto à constitucionalidade, mas está consolidado na prática de fiscalização.
- **Efeito sobre salários:** durante a paralisação decorrente de embargo/interdição legítimo, a empresa permanece obrigada a pagar os salários dos empregados (o ônus da paralisação é do empregador, não do trabalhador).
- **Recurso:** cabe recurso administrativo à Coordenação-Geral de Recursos (CGR) da Secretaria do Trabalho, apresentado na SRT/GRT da localidade do embargo/interdição, **no prazo de 10 dias** contados do dia seguinte à notificação do ato; a CGR pode conceder efeito suspensivo ao recurso (art. 161, §3º, CLT).
- Fontes: [Art. 161 CLT — Jusbrasil/tópicos](https://www.jusbrasil.com.br/topicos/10748282/artigo-161-do-decreto-lei-n-5452-de-01-de-maio-de-1943), [SINAIT — artigo sobre embargo de obra e interdição de estabelecimento](https://www.sinait.org.br/acervo/artigos/o-embargo-de-obra-e-a-interdicao-de-estabelecimento/download), [TST — reconhecimento da competência dos AFTs para interditar/embargar](https://www.tst.jus.br/en/-/uni%C3%A3o-reconhece-compet%C3%AAncia-dos-auditores-fiscais-do-trabalho-para-interditar-estabelecimentos-e-embargar-obras%C2%A0).

### 2.2 NR-3 — Embargo ou Interdição (versão vigente)

- Redação atual: **Portaria SEPRT nº 1.068, de 23/09/2019** (a busca também aparece referenciada como "Portaria 1.068" e, em fonte comercial, "Portaria SIT 787/2018" para a revisão geral das NRs) — vigente desde **22/01/2020**, com atualização de referência registrada em 12/12/2023. Texto oficial: [gov.br — NR-3](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-3-nr-3) [OFICIAL].
- **Metodologia de risco da NR-3** (é o núcleo técnico que decide se cabe embargo/interdição):
  1. **Risco Atual** — classifica a gravidade da consequência e a probabilidade, a partir das condições reais observadas na inspeção.
  2. **Risco de Referência** — classifica com base nas medidas de prevenção que deveriam estar implementadas por lei/norma.
  3. **Excesso de Risco** — compara Risco Atual x Risco de Referência via tabelas de classificação (para exposição individual e para exposição de múltiplas vítimas simultâneas).
  - Se o excesso de risco resultar **E-Extremo** ou **S-Substancial** → a atividade, máquina, setor, estabelecimento ou obra é passível de embargo/interdição pelo AFT. Resultados M-Moderado, P-Pequeno ou N-Nenhum não geram a medida.
- Natureza: medida cautelar, não punitiva — objetivo é evitar acidente/doença com lesão grave, não punir a empresa.
- Fontes adicionais: [Engehall — NR-3 atualizada](https://engehall.com.br/nr-3/), [Seg&Company — NR-3](https://www.segecompany.com.br/2024/09/norma-regulamentadora-n-o-03-nr-3-embargo-interdicao-e-como-evitar/), [texto NR-3 2019 (PDF gov.br)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-03_atualizada_2019.pdf).

### 2.3 Diferença entre embargo e interdição

| | Embargo | Interdição |
|---|---|---|
| Objeto | **Obra** (construção civil) — paralisação total ou parcial dos trabalhos | **Estabelecimento, setor de serviço, máquina ou equipamento** — inclusive dentro de uma obra |
| Abrangência típica | Toda a frente de obra ou parte dela | Um equipamento específico (ex.: uma betoneira), um pavimento, uma atividade |
| Base legal | Art. 161 CLT + NR-3 | Art. 161 CLT + NR-3 |
| Quem lavra | Auditor-Fiscal do Trabalho (com base em laudo técnico) | Auditor-Fiscal do Trabalho |

Fonte: [Sallus Engenharia Jurídica — Embargo e interdição: entenda a diferença](https://www.sallusengenhariajuridica.com.br/blog/embargo-e-interdicao/), [segurancadotrabalhonwn.com — diferenças e aplicações práticas](https://segurancadotrabalhonwn.com/embargo-e-interdicao-as-diferencas/) [ESTIMATIVA SETORIAL/didático, mas consistente com o texto legal].

---

## 3. Dados e estatísticas da Inspeção do Trabalho

### 3.1 Radar SIT / Painel de Indicadores da Inspeção

- O **Radar SIT** é o painel público de transparência da fiscalização do trabalho, lançado em 15/09/2021 durante a CANPAT 2021 (com apoio da CBIC). Módulos: evolução temporal, atividades econômicas, regiões (mapa de calor), perfil acidentário e ocupações (CBO). Cobertura original: 01/01/2014 a 07/06/2021, com atualização automática prevista. **[OFICIAL, mas ferramenta]**
  Fonte: [CBIC — Inspeção do Trabalho lança Radar SIT](https://cbic.org.br/inspecao-do-trabalho-lanca-radar-sit-de-acidentes-do-trabalho/)
- Em pesquisa direta no domínio atual (`sit.trabalho.gov.br/radar/`), a página indica que o Radar **esteve fora do ar** para reconstrução de uma versão "mais moderna e robusta" — não consegui, nesta pesquisa, extrair números atuais diretamente do painel (falha de certificado/timeout no fetch). **Recomendo tentativa de acesso manual** por quem tiver navegador local, e como alternativa o módulo "Painel de Informações e Estatísticas da Inspeção do Trabalho no Brasil" em `enit.trabalho.gov.br/radar/`, que teria módulos de Vínculos, FGTS, Autuações, Aprendizagem, PcD, SST, Acidentes de Trabalho e Trabalho Escravo.
  Fonte: [e-Auditoria — Dados da Inspeção do Trabalho disponíveis para consulta](https://www.e-auditoria.com.br/dados-da-inspecao-do-trabalho-ja-estao-disponiveis-para-consulta-pelo-cidadao/)
- **Consulta de Auto de Infração Trabalhista** (individual, por empresa/processo) está disponível em `gov.br/pt-br/servicos/consultar-auto-de-infracao-trabalhista` — útil para verificação pontual, não para estatística agregada.
- **Gap identificado:** não localizei, nesta pesquisa, uma série histórica oficial e pública que informe diretamente "nº de embargos/interdições na construção civil por ano" com quebra por motivo/NR. Isso é uma limitação real dos dados abertos disponíveis (ou exige acesso ao painel Radar/ENIT quando ele estiver operacional, ou pedido via LAI).

### 3.2 Estatísticas de acidentes de trabalho — construção civil

- **2.888 acidentes fatais registrados no Brasil em 2023**, segundo dados do eSocial/MTE (nota oficial de julho de 2024). Não é exclusivo da construção, mas é o número-piso nacional. **[OFICIAL]**
  Fonte: [gov.br/MTE — nota sobre 2.888 acidentes fatais em 2023 (eSocial)](https://www.gov.br/trabalho-e-emprego/pt-br/noticias-e-conteudo/2024/Julho/no-brasil-foram-registrados-2-888-acidentes-fatais-em-2003-segundo-dados-esocial)
- Estudo **CBIC/SESI** (Comissão de Política de Relações Trabalhistas/CPRT), com dados de **AEPS, AEAT e CATWEB/INSS**, ano-base 2023 dentro de série 2010–2024:
  - Acidentes típicos na construção civil: **redução de mais de 30%** frente a 2022.
  - Doenças do trabalho: **-25%**, menor índice da série histórica.
  - Letalidade: **-60%** frente a 2022.
  - Mortalidade: **-71%**.
  - Ranking do setor: **6ª posição** em acidentes típicos e **9ª posição** em doenças ocupacionais entre os setores econômicos (ou seja, não é mais o pior colocado nesses dois recortes, apesar da percepção de alto risco).
  - Em 2023, a construção civil também registrou **20.224 afastamentos previdenciários**. **[OFICIAL — fonte previdenciária, divulgação por entidade patronal]**
  Fonte: [CBIC — Estudo aponta redução histórica nos acidentes de trabalho na construção civil](https://cbic.org.br/estudo-aponta-reducao-historica-nos-acidentes-de-trabalho-na-construcao-civil/)
- **Quedas de altura:** representam cerca de **40% do total de acidentes de trabalho por ano no Brasil**; a construção civil concentra **65% das quedas de altura**; e, dentro da construção, **74% dos casos de queda terminam em morte** (26% de sobrevivência). **[ESTIMATIVA SETORIAL — não localizei o estudo primário por trás desses percentuais, que circulam em conteúdo de blog/EPI; tratar como indicativo de gravidade, não como número oficial fechado]**.
  Fonte: [SINTRICOMB — Estudo mostra que 40% dos acidentes de trabalho no Brasil são por queda de altura](https://sintricomb.com.br/estudo-mostra-que-40-dos-acidentes-de-trabalho-no-brasil-sao-por-queda-de-altura/), [Metroform — impacto das quedas nos índices de mortes na construção civil](https://metroform.com.br/blog/mortes-na-construcao-civil-quedas/)

### 3.3 Operações de fiscalização recentes (evidência de campo, não estatística nacional)

- **Paraíba (dez/2024–mar/2025):** força-tarefa do MTE/MPT resgatou **175 trabalhadores em condição análoga à escravidão** em obras de João Pessoa e região metropolitana (82 no recorte específico "só construção civil", dez/2024–fev/2025). Fiscalizadas **14 obras** de médio/grande porte em João Pessoa e Santa Rita, das quais **10 (71%) sofreram embargo total ou parcial**. Irregularidades encontradas: ausência de proteção contra quedas, poços de elevador sem isolamento, andaimes mal montados, equipamentos sem dispositivo de segurança, instalações elétricas improvisadas, alojamentos superlotados sem banheiro/água potável adequados. **[NOTÍCIA — caso real, mas não é amostra nacional representativa]**
  Fonte: [MPT-PB — força-tarefa na construção civil, 71% das obras têm riscos graves](https://www.prt13.mpt.mp.br/informe-se/noticias-do-mpt-pb/351-forca-tarefa-na-construcao-civil-71-das-obras-tem-riscos-graves)
- **Pelotas/RS (2026):** falha em grua mata três trabalhadores e leva à interdição de obra — ilustra risco de NR-11/NR-18 (gruas) como gatilho de interdição com morte múltipla. **[NOTÍCIA]**
  Fonte: [Extra Classe — falha em grua mata três trabalhadores em Pelotas](https://www.extraclasse.org.br/justica/2026/04/falha-em-grua-mata-tres-trabalhadores-e-leva-a-interdicao-de-obra-em-pelotas/)
- Nota de escopo: o relatório **Fiscobras** do TCU (17 de 23 obras públicas fiscalizadas com indício de irregularidade grave em 2024; 21 de 31 em 2023) trata de **irregularidades de execução orçamentária/contratual em obras públicas**, não de segurança do trabalho — é um universo diferente do embargo trabalhista e **não deve ser confundido** com dados de SST. Cito apenas para descartar como fonte pertinente ao guia de interdição.
  Fonte: [TCU — Fiscobras 2024](https://portal.tcu.gov.br/imprensa/noticias/dezessete-obras-no-pais-tem-indicio-de-irregularidade-grave-aponta-fiscobras-2024)

### 3.4 Outras fontes de dados que valem consulta futura (não exploradas a fundo nesta rodada)
- **SmartLab — Observatório de Segurança e Saúde no Trabalho** (parceria MPT/USP), com dados por município e CNAE: `smartlabbr.org/sst`. Ferramenta robusta para aprofundar números de óbito/CNAE construção. [gov.br — SmartLab](https://smartlabbr.org/sst)
- **Painel de Indicadores da Rede de Observatórios do Trabalho (MTE)**: `gov.br/trabalho-e-emprego/.../painel-de-indicadores-da-rede-de-observatorios-do-trabalho`.

---

## 4. Ranking (qualitativo) dos motivos mais frequentes de embargo/interdição em canteiro

**Importante:** não existe, até onde esta pesquisa alcançou, uma tabela oficial e pública que ranqueie numericamente os motivos de embargo/interdição por item de NR na construção civil. O ranking abaixo é uma **síntese qualitativa [ESTIMATIVA SETORIAL]**, construída a partir de: (a) o que a NR-3 classifica estruturalmente como GIR mais provável em obra (excesso de risco E/S), (b) casos reais noticiados de embargo/interdição/morte, (c) conteúdo técnico de SST voltado a canteiro. Ordenação por plausibilidade de gerar "risco grave e iminente" clássico + frequência de menção nas fontes — não por contagem de autos.

| # | Motivo típico | NR / item | Por que dispara GIR |
|---|---|---|---|
| 1 | Ausência/falha de proteção contra queda de altura — periferia de laje, aberturas no piso, guarda-corpo, cinturão/trava-quedas, andaimes mal montados | **NR-35** (trabalho em altura) + **NR-18** (item 18.15 andaimes / 18.17 periferia e aberturas) | Queda de altura é a maior causa de óbito no setor; é o cenário clássico de "vítima única, consequência letal, probabilidade alta" que a NR-3 classifica como Excesso de Risco Extremo/Substancial |
| 2 | Escavações sem contenção/talude adequado, sem escada de acesso, material de bota-fora na borda | **NR-18** (item 18.7 escavações) | Soterramento é causa recorrente de morte em obra; risco de múltiplas vítimas se houver mais de um trabalhador na vala |
| 3 | Máquinas e equipamentos sem proteção (serra circular, betoneira, policorte) sem dispositivo de segurança/capacitação do operador | **NR-12** | Amputações e mutilações são o dano típico; jurisprudência de inspeção (acesso.trabalho.gov.br) documenta casos reais de amputação de dedos em serra circular por falta de treinamento NR-12 |
| 4 | Instalações elétricas provisórias improvisadas (emendas expostas, quadro sem DR, fiação sobre estrutura metálica) | **NR-10** | Choque elétrico com contato indireto (ex.: escada metálica energizada) é causa de óbito documentada; risco imediato e de difícil percepção pelo trabalhador |
| 5 | Gruas, elevadores de obra e movimentação de carga sem isolamento de área, sobrecarga, falha estrutural | **NR-11** / **NR-18** (item 18.14) | Baixa frequência, mas altíssima letalidade — potencial de múltiplas vítimas simultâneas (ex.: caso de Pelotas/RS, 3 mortos) |
| 6 | Áreas de vivência inadequadas/inexistentes — sem banheiro, água potável, alojamento superlotado, sem local de refeição | **NR-24** / **NR-18** (item 18.4) | Menos "GIR" no sentido estrito de acidente típico, mas é item recorrente em embargos ligados a resgates de trabalho análogo à escravidão (caso Paraíba) |
| 7 | Espaços confinados sem PET (Permissão de Entrada e Trabalho), sem monitoramento de atmosfera — cisternas, poços, fossas, subsolos | **NR-33** | Baixa frequência em obra predial comum, mas risco de morte súbita por asfixia/intoxicação quando ocorre; múltiplas vítimas comuns (resgatador também morre) |
| 8 | Ausência de PGR (Programa de Gerenciamento de Riscos) e/ou PCMSO, ASO admissional não realizado antes da entrada no canteiro | **NR-01** / **NR-07** | Gera auto de infração quase certo, mas por si só raramente configura GIR imediato — costuma acompanhar outros achados, não ser causa isolada de embargo |
| 9 | Ausência ou uso incorreto de EPI (capacete, óculos, protetor auricular, botina) | **NR-06** | Item de autuação frequentíssimo, mas de menor força isolada para embargo — normalmente agrava a autuação de outro item (ex.: falta de cinto em trabalho em altura vira NR-35, não "NR-06 pura") |

Fontes de apoio a este ranking: [Fundacentro/CBIC — máquinas e equipamentos, serra circular de bancada](https://cbic.org.br/maquinas-e-equipamentos-na-construcao-o-uso-da-serra-circular-de-bancada/), [caso real de inspeção — amputação em serra circular](https://acesso.trabalho.gov.br/data/files/FF8080814F4D225D014F5CE2E2663BDD/Amputa%C3%A7%C3%A3o%20e%20fratura%20de%20dedos%20da%20m%C3%A3o%20direita%20em%20serra%20circular%20em%20obra.pdf), [Sienge — Área de vivência no canteiro de obra](https://sienge.com.br/blog/area-de-vivencia-no-canteiro-de-obra/), [Sienge — NR-33](https://sienge.com.br/blog/nr-33/), [gov.br — Instalações Elétricas Provisórias em Canteiros de Obras (CANPAT)](https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/inspecao-do-trabalho/seguranca-e-saude-no-trabalho/canpat-2/canpat-2022/elaine-castilho-instalacoes-eletricas-nos-canteiros-de-obras.pdf), [MPT-PB — força-tarefa construção civil](https://www.prt13.mpt.mp.br/informe-se/noticias-do-mpt-pb/351-forca-tarefa-na-construcao-civil-71-das-obras-tem-riscos-graves), [Extra Classe — grua Pelotas](https://www.extraclasse.org.br/justica/2026/04/falha-em-grua-mata-tres-trabalhadores-e-leva-a-interdicao-de-obra-em-pelotas/).

---

## 5. Multas — gradação (NR-28)

- A **NR-28** disciplina fiscalização e penalidades por descumprimento de NR. Foi atualizada por **Portaria MTE nº 553, de 16/04/2024** (DOU 17/04/2024), e há menção (fonte secundária, não confirmada em texto primário nesta pesquisa) a uma atualização adicional via **Portaria MTE nº 104/2026**, revisando códigos de infração, critérios de fiscalização e valores. **[OFICIAL a existência da Portaria 553/2024; ESTIMATIVA SETORIAL/não confirmada a Portaria 104/2026 — checar antes de usar como base normativa]**
- Estrutura: **Anexo I** = quadro de gradação de multa por **número de empregados** da empresa (faixas em BTN — Base de Cálculo da Unidade Fiscal, herdada de UFIR); **Anexo II** = classificação das infrações por NR/item, associando cada item de norma a um grau de gravidade.
- Faixas de gradação reportadas por fonte secundária (não confirmadas no PDF oficial, que não foi possível extrair como texto nesta pesquisa — arquivo em stream comprimido): **630 a 1.746 BTN** para infrações de Segurança do Trabalho e **378 a 1.982 BTN** para Medicina do Trabalho, variando conforme o nº de empregados expostos. **[ESTIMATIVA SETORIAL — não verificado no documento primário]**
- Faixa de valor por infração citada por fonte secundária: **R$ 402,53 a mais de R$ 6.708,00** por infração "comum", podendo escalar para valores muito maiores em reincidência, embaraço à fiscalização ou fraude (art. 201, parágrafo único, CLT). **[ESTIMATIVA SETORIAL]**
- Embargo/interdição em si **não é multa** — é medida cautelar preventiva; mas normalmente **acompanha** autuações por infração aos itens de NR que motivaram o GIR, e o auto de infração por "descumprir o embargo/interdição" (trabalhar mesmo com a obra paralisada) é tratado como infração autônoma e grave.
- **Recomendação para o guia:** tratar os valores de multa acima como indicativos de ordem de grandeza, não como tabela definitiva — para uso operacional no canteiro, o PDF oficial do Anexo I/II da NR-28 precisa ser lido por OCR/extração de texto (o fetch direto nesta pesquisa não conseguiu decodificar o PDF).
  Fonte: [gov.br — NR-28 (PDF)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-28-atualizada-2022-1.pdf), [Cobli — NR-28 fiscalização e penalidades](https://www.cobli.co/blog/nr-28/), [sistemaeso — como calcular multas NR-28](https://sistemaeso.com.br/blog/seguranca-no-trabalho/como-calcular-os-valores-das-multas-descritas-na-nr-28), [genyo — NR-28 atualizada 2026](https://genyo.com.br/nr-28/).

---

## 6. Validação da priorização proposta (NR-18/35, 12, 10, 33, 06, 01)

A hipótese de trabalho do briefing — **NR-18, 35, 12, 10, 33, 06, 01 como "campeãs de interdição"** — se confirma como conjunto correto de normas relevantes, mas eu ajustaria a **ordem de prioridade** para um guia de canteiro focado em risco de embargo/interdição (GIR), com base no que a pesquisa trouxe:

1. **Confirma-se no topo:** NR-35 (queda de altura) e NR-18 (estrutural/geral, incluindo escavação e andaimes) devem liderar — é o padrão de acidente fatal nº 1 do setor e o cenário clássico de Excesso de Risco Extremo da NR-3.
2. **NR-12 confirma-se em posição alta** — é o motivo mais documentado de dano grave "não-queda" (amputação), com jurisprudência de inspeção específica encontrada.
3. **NR-10 confirma-se, mas eu subiria sua posição** — choque elétrico por instalação provisória tem letalidade alta e é citado como causa de morte recorrente; no ranking do briefing ela vem em 4º entre as citadas, o que parece adequado.
4. **Sugiro adicionar/subir NR-11 (gruas/elevadores de obra)** — não estava na lista original do briefing, mas apareceu na pesquisa como causa de interdição com múltiplas fatalidades simultâneas (caso Pelotas) — merece entrar no "top" ao lado de NR-12/NR-10, mesmo sendo de menor frequência, pela gravidade quando ocorre.
5. **NR-33 (espaço confinado) confirma-se, mas eu rebaixaria sua prioridade relativa** em obra predial/residencial comum — é mais determinante em obras de infraestrutura/saneamento (cisternas, poços, redes) do que no canteiro genérico; para um guia geral, colocá-la abaixo de NR-11 parece mais realista.
6. **NR-06 (EPI) e NR-01 (PGR/documentação) confirmam-se como "campeãs de autuação", mas não necessariamente de embargo isolado** — a pesquisa sugere que elas raramente geram GIR sozinhas; costumam **acompanhar** e agravar autuações por outros itens (ex.: falta de talabarte é enquadrada como NR-35, não como "NR-06 pura"), e ausência de PGR é quase automática em qualquer fiscalização, mas de menor força cautelar isolada. Para o guia de interdição especificamente (diferente de um guia de autuação/multa geral), eu manteria as duas na lista mas com uma nota de que **por si só raramente embargam** — funcionam mais como "gatilho de checklist documental" do que como causa de paralisação de obra.
7. **Adicionaria explicitamente NR-24 (áreas de vivência)** ao conjunto prioritário — apareceu com força nos casos reais de embargo ligados a resgate de trabalho análogo à escravidão (Paraíba, 71% das obras fiscalizadas embargadas), que é justamente o tipo de evento que gera embargo em massa e repercussão.

**Limitação a registrar no guia final:** essa reordenação é qualitativa, baseada em casos e normas, não em contagem oficial de autos por item de NR — não localizei uma fonte primária com esse dado quebrado. Se for necessário fundamentar o guia com números oficiais e não apenas casos/normas, os próximos passos recomendados são: (1) tentar acesso ao Radar SIT/ENIT quando reestabelecido, (2) consultar SmartLab (`smartlabbr.org/sst`) por CNAE de construção, (3) pedido via LAI ao MTE pedindo série histórica de embargos/interdições por NR e CNAE.

---

## 7. Lista de fontes (todas citadas ao longo do documento)

**Legislação e normas oficiais**
- [CLT, art. 161 — tópico Jusbrasil](https://www.jusbrasil.com.br/topicos/10748282/artigo-161-do-decreto-lei-n-5452-de-01-de-maio-de-1943)
- [NR-3 — Ministério do Trabalho e Emprego (texto vigente)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/normas-regulamentadora/normas-regulamentadoras-vigentes/norma-regulamentadora-no-3-nr-3)
- [NR-3 atualizada 2019 (PDF)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-03_atualizada_2019.pdf)
- [NR-28 atualizada (PDF)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-28-atualizada-2022-1.pdf)
- [NR-10 (PDF)](https://www.gov.br/trabalho-e-emprego/pt-br/acesso-a-informacao/participacao-social/conselhos-e-orgaos-colegiados/comissao-tripartite-partitaria-permanente/arquivos/normas-regulamentadoras/nr-10.pdf)
- [Consultar Auto de Infração Trabalhista (serviço gov.br)](https://www.gov.br/pt-br/servicos/consultar-auto-de-infracao-trabalhista)
- [gov.br/MTE — Instalações Elétricas Provisórias em Canteiros de Obras (CANPAT 2022)](https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/inspecao-do-trabalho/seguranca-e-saude-no-trabalho/canpat-2/canpat-2022/elaine-castilho-instalacoes-eletricas-nos-canteiros-de-obras.pdf)
- [gov.br/MTE — nota "2.888 acidentes fatais em 2023" (eSocial)](https://www.gov.br/trabalho-e-emprego/pt-br/noticias-e-conteudo/2024/Julho/no-brasil-foram-registrados-2-888-acidentes-fatais-em-2003-segundo-dados-esocial)
- [Resumo de acidente analisado pela Inspeção — amputação em serra circular](https://acesso.trabalho.gov.br/data/files/FF8080814F4D225D014F5CE2E2663BDD/Amputa%C3%A7%C3%A3o%20e%20fratura%20de%20dedos%20da%20m%C3%A3o%20direita%20em%20serra%20circular%20em%20obra.pdf)

**Estatísticas e painéis**
- [CBIC — Inspeção do Trabalho lança Radar SIT de Acidentes do Trabalho](https://cbic.org.br/inspecao-do-trabalho-lanca-radar-sit-de-acidentes-do-trabalho/)
- [Radar SIT (Comunicado à sociedade)](https://sit.trabalho.gov.br/radar/)
- [e-Auditoria — Dados da Inspeção do Trabalho disponíveis para consulta pelo cidadão](https://www.e-auditoria.com.br/dados-da-inspecao-do-trabalho-ja-estao-disponiveis-para-consulta-pelo-cidadao/)
- [SmartLab — Observatório de Segurança e Saúde no Trabalho](https://smartlabbr.org/sst)
- [Painel de Indicadores da Rede de Observatórios do Trabalho — MTE](https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas-trabalho/painel-de-indicadores-da-rede-de-observatorios-do-trabalho)
- [CBIC — Estudo aponta redução histórica nos acidentes de trabalho na construção civil](https://cbic.org.br/estudo-aponta-reducao-historica-nos-acidentes-de-trabalho-na-construcao-civil/)
- [SINTRICOMB — Estudo mostra que 40% dos acidentes de trabalho no Brasil são por queda de altura](https://sintricomb.com.br/estudo-mostra-que-40-dos-acidentes-de-trabalho-no-brasil-sao-por-queda-de-altura/)
- [Metroform — O impacto das quedas nos índices de mortes na construção civil](https://metroform.com.br/blog/mortes-na-construcao-civil-quedas/)

**Casos reais / notícias**
- [MPT-PB — Força-Tarefa na construção civil: 71% das obras têm riscos graves](https://www.prt13.mpt.mp.br/informe-se/noticias-do-mpt-pb/351-forca-tarefa-na-construcao-civil-71-das-obras-tem-riscos-graves)
- [Extra Classe — Falha em grua mata três trabalhadores e leva à interdição de obra em Pelotas](https://www.extraclasse.org.br/justica/2026/04/falha-em-grua-mata-tres-trabalhadores-e-leva-a-interdicao-de-obra-em-pelotas/)
- [TST — União reconhece competência dos auditores fiscais do trabalho para interditar estabelecimentos e embargar obras](https://www.tst.jus.br/en/-/uni%C3%A3o-reconhece-compet%C3%AAncia-dos-auditores-fiscais-do-trabalho-para-interditar-estabelecimentos-e-embargar-obras%C2%A0)
- [TCU — Fiscobras 2024 (nota de escopo: NÃO é dado de SST)](https://portal.tcu.gov.br/imprensa/noticias/dezessete-obras-no-pais-tem-indicio-de-irregularidade-grave-aponta-fiscobras-2024)

**Jurídico / doutrina**
- [SINAIT — O embargo de obra e a interdição de estabelecimento, de máquinas e de setor de serviço previstos no art. 161 da CLT (PDF)](https://www.sinait.org.br/acervo/artigos/o-embargo-de-obra-e-a-interdicao-de-estabelecimento/download)
- [Jus.com.br — Embargo de obra e interdição de máquinas (art. 161 CLT)](https://jus.com.br/artigos/18541/o-embargo-de-obra-e-a-interdicao-de-estabelecimento-de-maquinas-e-de-setor-de-servico-previstos-no-art-161-da-clt)
- [Sallus Engenharia Jurídica — Embargo e interdição: entenda a diferença](https://www.sallusengenhariajuridica.com.br/blog/embargo-e-interdicao/)
- [segurancadotrabalhonwn.com — Embargo e interdição: diferenças e aplicações práticas](https://segurancadotrabalhonwn.com/embargo-e-interdicao-as-diferencas/)

**NRs específicas — conteúdo técnico de mercado (ESTIMATIVA SETORIAL, usado só para reforçar itens de norma e riscos típicos)**
- [Engehall — NR-3 atualizada (2026)](https://engehall.com.br/nr-3/)
- [Seg&Company — NR-3: embargo, interdição empresarial](https://www.segecompany.com.br/2024/09/norma-regulamentadora-n-o-03-nr-3-embargo-interdicao-e-como-evitar/)
- [Sienge — NR-3 atualizada: embargo e interdição](https://sienge.com.br/blog/nr-3/)
- [CBIC — Máquinas e Equipamentos na construção: uso da serra circular de bancada](https://cbic.org.br/maquinas-e-equipamentos-na-construcao-o-uso-da-serra-circular-de-bancada/)
- [Sienge — Área de vivência no canteiro de obra](https://sienge.com.br/blog/area-de-vivencia-no-canteiro-de-obra/)
- [Sienge — NR-33 espaço confinado atualizada](https://sienge.com.br/blog/nr-33/)
- [CBIC — Nova NR-33: segurança e saúde no trabalho em espaços confinados](https://cbic.org.br/nova-nr-33-seguranca-e-saude-no-trabalho-em-espacos-confinados/)
- [Cobli — NR-28: fiscalização e penalidades, como funciona](https://www.cobli.co/blog/nr-28/)
- [sistemaeso — Como calcular os valores das multas descritas na NR-28](https://sistemaeso.com.br/blog/seguranca-no-trabalho/como-calcular-os-valores-das-multas-descritas-na-nr-28)
- [genyo — NR-28 atualizada: multas e penalidades para infrações 2026](https://genyo.com.br/nr-28/)
- [Climec — PGR (GRO): como elaborar conforme a NR-01 e atender o eSocial](https://climec.com.br/blog/pgr-gro-como-elaborar-conforme-a-nr-01-e-atender-o-esocial-climec-sst/)

---

## 8. Gaps explícitos para próxima rodada de pesquisa

1. Série histórica oficial de nº de embargos/interdições por ano e por NR na construção civil (Radar SIT/ENIT quando disponível, ou LAI ao MTE).
2. Texto integral extraído (OCR) dos Anexos I e II da NR-28 para valores de multa exatos e atuais em R$.
3. Confirmação formal da existência e conteúdo da Portaria MTE nº 104/2026 (mencionada em fonte secundária, não verificada em fonte primária).
4. Cruzamento CNAE construção civil (seção F do CNAE) com dados SmartLab para óbitos/afastamentos por subsetor (edificações x obras de infraestrutura x incorporação).
