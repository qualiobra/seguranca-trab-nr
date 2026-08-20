---
tipo: matriz
titulo: "Matriz de inspeções e periodicidades — canteiro de obras"
escopo: >-
  O que inspecionar, com que frequência, com que base normativa e com que registro,
  consolidado das 16 fichas operacionais. Responde à pergunta "o que inspecionar e quando?"
data: 2026-08-19
idioma: pt-BR
regra_de_ouro: >-
  Toda periodicidade aqui é a que consta do texto da norma, com o item indicado. Onde a NR
  manda inspecionar mas NÃO fixa intervalo, ou manda inspecionar mas NÃO exige registro,
  isso está escrito de forma explícita e marcado [PRÁTICA]. Não há prazo estimado,
  praxe de mercado nem número de memória.
fontes:
  fichas_operacionais:
    - ../02-fichas-operacionais/ficha-NR-01.md
    - ../02-fichas-operacionais/ficha-NR-04.md
    - ../02-fichas-operacionais/ficha-NR-05.md
    - ../02-fichas-operacionais/ficha-NR-06.md
    - ../02-fichas-operacionais/ficha-NR-07.md
    - ../02-fichas-operacionais/ficha-NR-09.md
    - ../02-fichas-operacionais/ficha-NR-10.md
    - ../02-fichas-operacionais/ficha-NR-11.md
    - ../02-fichas-operacionais/ficha-NR-12.md
    - ../02-fichas-operacionais/ficha-NR-15.md
    - ../02-fichas-operacionais/ficha-NR-17.md
    - ../02-fichas-operacionais/ficha-NR-18.md
    - ../02-fichas-operacionais/ficha-NR-24.md
    - ../02-fichas-operacionais/ficha-NR-26.md
    - ../02-fichas-operacionais/ficha-NR-33.md
    - ../02-fichas-operacionais/ficha-NR-35.md
  criticidade: ../00-guia-interdicao/guia-interdicao.md
  desempate: ../01-nrs-texto-oficial/
  treinamentos: ../05-treinamentos/requisitos-treinamento-por-nr.md
matrizes_irmas:
  - ./matriz-documentos-obrigatorios.md
  - ./matriz-temas.md
aviso: >-
  Documento destilado para uso operacional. NÃO substitui o texto oficial das Normas
  Regulamentadoras; em qualquer divergência, prevalece o PDF oficial publicado no DOU.
---

# Matriz de inspeções e periodicidades — canteiro de obras

> **Como usar (humano ou agente).** Percorra de cima para baixo: do que se verifica **a cada uso**
> até o que se verifica **a cada 20 anos**. Se a pergunta for "o que vence esta semana?", filtre pelo
> bloco de frequência. Se for "que documento comprova isso?", vá para
> `./matriz-documentos-obrigatorios.md`. **Reciclagens e treinamentos periódicos não estão aqui** —
> estão em `../05-treinamentos/requisitos-treinamento-por-nr.md`.

## Convenções desta matriz

| Marca | Significado |
|---|---|
| **⚠️** | Inspeção ligada a uma das situações que o `../00-guia-interdicao/guia-interdicao.md` lista no ranking de embargo/interdição (§3) ou no checklist "o fiscal chegou" (§6). |
| **Registro exigido: SIM** | A NR usa palavra que impõe registro ("registradas", "com laudo", "livro de registro"). |
| **Registro exigido: NÃO** | A NR manda inspecionar, mas **não** exige registro. Registrar é **[PRÁTICA]** — recomendada como evidência, não citável como exigência. |
| **Intervalo não fixado** | A NR manda inspecionar "periodicamente" sem número. Quem define é o projeto, o fabricante ou o PLH — **nunca inventar prazo**. |

---

## 1. Contínua / permanente (sem intervalo fixado)

*A norma exige estado permanente ou verificação ininterrupta. Não existe "data de vencimento" — existe
"está ou não está".*

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ Cabos de aço, cordas, correntes, roldanas e ganchos de equipamentos de movimentação | **Permanente**, com substituição **imediata** das partes defeituosas | NR-11 **11.1.3.1** | NÃO — **[PRÁTICA]** registrar | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| Transportadores industriais | **Permanente**; peças defeituosas ou deficientes substituídas imediatamente | NR-11 **11.1.8** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Equipamentos de movimentação em geral — conservação em perfeitas condições de trabalho | **Contínua** | NR-11 **11.1.3** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| Cabos de aço e de fibra sintética de andaimes e equipamentos | **Contínua** — substituição ao perder integridade | NR-18 Anexo II, itens **2**, **5** e **7** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-andaimes.md` |
| Peça de máquina com defeito que compromete a segurança | Reparo ou substituição **imediata**; máquina não segue operando | NR-12 **12.11.5** | Sim, pelo registro de manutenção (**12.11.2**) | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Elemento do SPIQ com defeito, degradação, deformação ou que sofreu **impacto de queda** | **Descarte imediato** (salvo restauração prevista em norma técnica e pelo fabricante) | NR-35 **35.6.6.5** | Sim, quando a inspeção rotineira resultar em recusa (**35.6.6.4**) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| ⚠️ Áreas de vivência — conservação, higiene e limpeza | **Estado permanente** ("mantidas em perfeito estado de conservação, higiene e limpeza") | NR-18 **18.5.1**; NR-24 **24.2.3 "a"**, **24.4.3 "a"**, **24.7.2 "a"** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-areas-vivencia.md` |
| Escada removível de madeira para empilhamento manual | Substituição **imediata** da que apresentar qualquer defeito | NR-11 **11.2.8 "f"** | NÃO — **[PRÁTICA]** | — |
| Piso de armazém/almoxarifado | Manutenção em perfeito estado; material não escorregadio e sem aspereza | NR-11 **11.2.9** | NÃO — **[PRÁTICA]** | — |
| Espaço confinado — **monitoramento atmosférico contínuo** durante toda a permanência | **Contínuo**, remoto ou presencial conforme o procedimento de segurança | NR-33 **33.5.15.3** | Sim, na PET (**33.5.6 "e"** registra a avaliação imediatamente anterior à entrada) | — |
| Escavações próximas a edificações — monitoramento | Contínuo enquanto durar o serviço | NR-18 **18.7.2.9** | **SIM** — "com resultado documentado" | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| Borrachas das ventosas (movimentação de chapas de rocha) | Manutenção periódica; substituição imediata em desgaste, defeito ou descolamento | NR-11 Anexo I **2.5.1 "d"** | NÃO — **[PRÁTICA]** | — |

---

## 2. Antes de cada uso / no início de cada turno

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ Ferramentas manuais, elétricas e pneumáticas | **Vistoria antes de cada uso** | NR-18 **18.10.2.3** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| ⚠️ Máquinas do canteiro — verificação pelo operador | **Início de cada turno** | NR-12 **12.14.2** | **NÃO** — o registro é expressamente dispensado (**12.14.2.1**). A obrigação é **interromper** a atividade e comunicar o superior diante de anormalidade. **[PRÁTICA]** registrar como evidência | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| ⚠️ SPIQ — inspeção **rotineira** visual e táctil pelo próprio trabalhador | **Antes do início dos trabalhos** | NR-35 **35.6.6.2** | Só quando **resultar em recusa** (**35.6.6.4**) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| PEMT — inspeção visual e teste funcional (controles, dispositivos de segurança, sistemas, estrutura) | **Antes do uso diário ou no início de cada turno** | NR-18 **18.12.38** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Dispositivos auxiliares de içamento (lingas, manilhas, ganchos) | **Antes de entrar em uso** (além da inspeção diária) | NR-18 **18.10.1.27 "c"** | Sim, pela lista de verificação diária do **18.10.1.32 "b"** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ Espaço confinado — avaliação atmosférica inicial, com o **supervisor de entrada fora** do espaço | **Imediatamente antes da entrada** | NR-33 **33.5.15.1**; O₂ indicado **20,9%**, aceitável **19,5% a 23%** com causa conhecida e controlada (**33.5.15.2**) | **SIM** — campo obrigatório da PET (**33.5.6 "e"**) | `../04-templates/pt-permissao-trabalho.md` |
| Detector de gases — auto-zero e teste de resposta (**bump test**) | **Diários**, antes do início das avaliações | NR-33 **33.5.15.5** | NÃO no texto — **[PRÁTICA]** registrar; calibração por laboratório **acreditado pelo Inmetro** (**33.5.15.6**) | — |
| Trabalho a quente — local e áreas adjacentes | **Inspeção preliminar** (liberação) **e ao término** do trabalho | NR-18 **18.7.6.5**; **18.7.6.6 "d"** | Pela análise de risco / permissão (**18.7.6.2**) | `../04-templates/apr-analise-preliminar-risco.md` |
| Concretagem — equipamentos, alimentação elétrica, fôrmas e escoramento | **Antes e durante** a execução, por trabalhador capacitado que supervisiona | NR-18 **18.7.4.3 "a"–"c"** | NÃO — **[PRÁTICA]** | — |
| Sistema de aquecimento a gás da impermeabilização — vazamentos | **A cada intervenção** | NR-18 **18.7.7.6** | NÃO — **[PRÁTICA]** | — |
| ⚠️ Andaime — condição de liberação para uso | **A cada liberação de uso** | NR-18 **18.12.4** | **SIM** — "registro formal de liberação de uso", assinado por profissional qualificado em SST ou pelo responsável pela frente/obra | `../04-templates/checklists/checklist-andaimes.md` |
| Escada de encosto / escada de uso individual | No recebimento, **antes do uso** e periodicamente conforme o fabricante | NR-35 Anexo III **5.1.2 "c"**, **5.2.2.7.2** | NÃO no texto — **[PRÁTICA]** | `../04-templates/checklists/checklist-trabalho-altura.md` |

---

## 3. Diária

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **Escoramentos de escavação** | **Diária** | NR-18 **18.7.2.11** | NÃO no texto ("devem ser inspecionados diariamente") — **[PRÁTICA]** registrar em RDO/livro de obra | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| ⚠️ **Equipamento de guindar** — condições de segurança, com lista de verificação emitida e sob responsabilidade do fabricante, locador ou proprietário | **Diária**, pelo operador | NR-18 **18.10.1.32 "a"** | **SIM** — "devem ser realizadas **e registradas**" | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Dispositivos auxiliares de movimentação de carga** | **Diária**, pelo sinaleiro/amarrador, mediante lista de verificação | NR-18 **18.10.1.32 "b"** | **SIM** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Plataformas de carga e descarga** | **Diária**, por trabalhador capacitado e autorizado, mediante lista de verificação | NR-18 **18.10.1.32 "c"** | **SIM** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Elevador de obra — vistoria pré-operacional** | **Diária**, antes do início dos serviços | NR-18 **18.11.7 "d"** | **SIM** — "registro, pelo operador, das vistorias diárias" | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Andaime suspenso — sistema de suspensão** (cabos de aço, nivelamento) | **Diária**, antes de iniciar os trabalhos, pelos usuários **e** pelo responsável pela obra | NR-18 **18.12.23 "c"**; usuários e responsável treinados para a rotina (**18.12.23.1**) | NÃO no texto — **[PRÁTICA]** | `../04-templates/checklists/checklist-andaimes.md` |
| PEMT — local de trabalho | **Diária**, por operador capacitado | NR-18 **18.12.37** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Área de carpintaria e armação — remoção de resíduos | **Diária** | NR-18 **18.7.3.1 "d"** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Escavação manual de tubulão — etapas liberadas | **Diária** | NR-18 **18.7.2.20**; **18.7.2.22.1 "a"** | **SIM** — "livro de registro diário" | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| ⚠️ Banheiro químico da frente de trabalho — higienização dos módulos | **Diária** | NR-18 **18.5.7 "a"** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-areas-vivencia.md` |
| ⚠️ Alojamento — coleta de lixo e higienização dos sanitários | **Diária** | NR-24 **24.7.8** e **24.7.9** | NÃO — **[PRÁTICA]** | `../04-templates/checklists/checklist-areas-vivencia.md` |

---

## 4. Semanal

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **Redes de segurança** — todos os elementos e pontos de fixação | **Semanal** | NR-18 **18.9.4.4.5** | NÃO no texto ("deve ser submetido a uma inspeção semanal") — **[PRÁTICA]** registrar | `../04-templates/checklists/checklist-protecao-quedas.md` |

---

## 5. Quinzenal

**Nenhuma das 16 fichas registra inspeção com periodicidade quinzenal.** Se um plano de obra usa
"quinzenal", isso é decisão interna de gestão — **não** há item de NR nesta base que a imponha. Não
apresentar como exigência legal.

---

## 6. Mensal

| O que verificar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| Reunião ordinária da CIPA, com deliberações divulgadas a todos (quadro de aviso ou meio eletrônico) | **Mensal** | NR-05 **5.6.1**, **5.6.3**, **5.6.3.2** | **SIM** — ata assinada pelos presentes; guarda mín. **5 anos** (5.9.2) | — |

> **[PRÁTICA]** "Inspeção mensal de canteiro" e "caminhada gerencial de segurança" são rotinas
> consolidadas de mercado, sem item de NR nesta base que fixe o intervalo mensal. O que existe é a
> obrigação de acompanhamento do desempenho das medidas com participação da CIPA (NR-01, **1.5.5.3.2 "d"**),
> sem periodicidade fixada.

---

## 7. A cada 90 dias

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **Freios de emergência do elevador de obra** — testes | **No máximo a cada 90 dias** | NR-18 **18.11.7 "c"** | **SIM** — laudo assinado pelo responsável técnico pela manutenção ou, na ausência, pelo PLH responsável, com os parâmetros mínimos de normas técnicas nacionais | `../04-templates/checklists/checklist-gruas-elevadores.md` |

---

## 8. Semestral (6 meses)

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **Aterramento elétrico da grua** — medição ôhmica | **Semestral** ("atualizado semestralmente") | NR-18 **18.10.1.23 "h"** | **SIM** — laudo por PLH, conforme normas técnicas nacionais, disponível no canteiro | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| Equipamentos e cordas de **acesso por cordas** | **Mínimo a cada 6 meses**; reduzir conforme tipo de uso, frequência ou agentes agressivos | NR-35 Anexo I **4.3.1**, **4.3.1.1** | **SIM** — registro na aquisição, periódico e nas inspeções que resultem em recusa (**4.3.3**) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| Exames complementares dos **Quadros 1 e 2 do Anexo I da NR-07** | **A cada 6 meses**, com antecipação ou postergação de até **45 dias** mediante justificativa técnica | NR-07 **7.5.13** | **SIM** — PCMSO e prontuário médico | — |
| **Asbesto** — avaliação ambiental da concentração de fibras | Intervalos **não superiores a 6 meses** | NR-15 Anexo 12, item **11** | **SIM** — registros mantidos por **mín. 30 anos** (11.1); resultado afixado em quadro de avisos (11.4) | — |
| Câmara hiperbárica — teste do sistema de combate a incêndio | **A cada 6 meses** | NR-18 **18.17.6 "e"** | **SIM** | — |

---

## 9. Anual (12 meses)

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **SPIQ — inspeção periódica** | **No mínimo a cada 12 meses**; intervalo **reduzido** conforme tipo de uso, frequência ou agentes agressivos | NR-35 **35.6.6.3** | **SIM** — registro das inspeções iniciais, periódicas e rotineiras que resultarem em recusa (**35.6.6.4**) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| ⚠️ **Sistema de ancoragem — inspeção periódica** | Periodicidade **não superior a 12 meses**, conforme o procedimento operacional | NR-35 Anexo II **4.1.2** | NÃO no texto — o Anexo II não usa a palavra "registro"; registrar é **[PRÁTICA]** | `../04-templates/checklists/checklist-trabalho-altura.md` |
| Equipamentos e ferramentas **isolantes** em alta tensão — testes e ensaios | Conforme especificação do fabricante ou, **na ausência de especificação, anuais** | NR-10 **10.7.8**; inspeção conforme fabricante **10.4.3.1** | **SIM** — resultados dos testes de isolação integram o prontuário (**10.2.4 "e"**) | `../04-templates/checklists/checklist-eletrica-provisoria.md` |
| Cartão de identificação do **operador de equipamento de transporte motorizado** | **Validade 1 ano**; revalidação condicionada a **exame de saúde completo** por conta do empregador | NR-11 **11.1.6**, **11.1.6.1** | **SIM** — o próprio cartão, portado em lugar visível | — |
| Cartão de identificação do **operador de máquina autopropelida** | Renovação **no máximo a cada 1 ano**, mediante exame médico | NR-12 **12.16.10** | **SIM** — o próprio cartão | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| Equipamentos e elementos de sustentação para **chapas de rochas ornamentais** — Relatório de Inspeção por PLH com **ART recolhida** | **Anual** | NR-11 Anexo I **1.3**, **1.3.1** | **SIM** — integra a documentação do equipamento | — |
| **Exame clínico periódico** — expostos a riscos identificados e classificados no PGR, e portadores de doença crônica que aumente a susceptibilidade | **A cada ano**, ou menos a critério do médico responsável | NR-07 **7.5.8 II "a" 1** | **SIM** — ASO (**7.5.19**) | — |
| **Audiometria** — expostos acima do nível de ação, **independentemente do uso de protetor auditivo** | Admissão, **anualmente** e demissão (na demissão, aceita-se audiometria feita até **120 dias** antes) | NR-07 Anexo II, itens **2**, **4.1** e **4.1.1** | **SIM** — prontuário médico | — |
| **Relatório analítico do PCMSO** | **Anual** | NR-07 **7.6.2 "a"–"f"** | **SIM** — apresentado e discutido com os responsáveis por SST e com a **CIPA** (**7.6.5**) | — |
| **Asbesto** — exames: avaliação clínica + telerradiografia de tórax + espirometria | **Admissão, demissão e anualmente** | NR-15 Anexo 12, item **18** | **SIM** — exames de controle mantidos por **30 anos** após o fim do contrato (item 19) | — |
| Câmara hiperbárica — revisão preventiva | **Anual** | NR-18 **18.17.6 "e"** | **SIM** | — |
| **Simulado de salvamento** da equipe de emergência de espaço confinado, contemplando os cenários possíveis | **Anual** | NR-33 **33.3.6 "b"**; previsão de simulados no plano de resgate (**33.5.20.2**) | **SIM** — previsto no plano de resgate | — |
| Capacitação, orientação e sensibilização sobre **assédio sexual e demais formas de violência** (para quem deve constituir CIPA) | **No mínimo a cada 12 meses** | NR-01 **1.4.1.1 "c"** | **SIM** — registros de capacitação | — |
| Orientação e treinamento periódico sobre **calor**, quando indicado nas medidas de prevenção | **Anual** | NR-09 Anexo III **3.1.1**, **3.1.2** | **SIM** — registro da orientação/treinamento | — |

---

## 10. Bienal (2 anos)

| O que inspecionar / revisar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| ⚠️ **Revisão da avaliação de riscos do PGR** | **A cada 2 anos** (ou até **3 anos** para organização com certificação em sistema de gestão de SST — **1.5.4.4.6.1**), **além** dos gatilhos "a" a "f" do item | NR-01 **1.5.4.4.6** | **SIM** — inventário atualizado, com histórico guardado por **20 anos** (1.5.7.3.3.1) | — |
| **Exame clínico periódico** — demais empregados (não expostos a riscos do PGR) | **A cada 2 anos** | NR-07 **7.5.8 II "b"** | **SIM** — ASO | — |
| **Espirometria** — expostos a poeiras minerais indicadas no inventário do PGR (sílica: corte de concreto/alvenaria, escavação) | Admissional e **a cada 2 anos** | NR-07 Anexo III **3.1** | **SIM** — prontuário médico | — |
| **Laudo estrutural e operacional da grua** com mais de 20 anos de uso | **A cada 2 anos** | NR-18 **18.10.1.40** | **SIM** — laudo por PLH | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| **Projeto pedagógico** de treinamento EAD/semipresencial | Validar **a cada 2 anos** ou quando houver mudança na NR | NR-01 Anexo II **3.1**, **3.3** | **SIM** — à disposição da Inspeção, do sindicato e da CIPA (Anexo II, 4.1) | — |
| **Asbesto** — cadastro do estabelecimento junto ao órgão competente | Atualizado **a cada 2 anos** | NR-15 Anexo 12, itens **7** e **7.5** | **SIM** | — |

---

## 11. Plurianual (3 anos ou mais)

| O que inspecionar | Periodicidade | NR e item | Registro exigido | Checklist |
|---|---|---|---|---|
| **Laudo estrutural e operacional da grua** — integridade estrutural e eletromecânica | Periodicidade estabelecida pelo fabricante ou, **no máximo, aos 20 anos de uso**; depois disso, a cada 2 anos; **e após evento que comprometa a integridade** | NR-18 **18.10.1.40** | **SIM** — laudo por PLH | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| Câmara hiperbárica — **teste hidrostático** | **A cada 5 anos** | NR-18 **18.17.6 "e"** | **SIM** | — |
| Campânula (ar comprimido) — laudo de verificação estrutural | **A cada 5 anos** | NR-18 **18.17.8 "a"** | **SIM** — laudo por PLH | — |

> **Prazos de guarda de documento** (5, 20 e 30 anos) **não são periodicidade de inspeção** e estão
> consolidados em `./matriz-documentos-obrigatorios.md`, seção "Prazos de guarda".

---

## 12. Por evento / gatilho

*Não têm data — têm causa. É o bloco que um agente deve consultar sempre que algo **mudar** no canteiro.*

| Gatilho | O que precisa ser inspecionado / revisado | NR e item | Registro exigido |
|---|---|---|---|
| Recebimento de SPIQ novo, antes da primeira utilização | **Inspeção inicial do SPIQ** | NR-35 **35.6.6**, **35.6.6.1** | **SIM** (35.6.6.4) |
| Instalação, alteração ou mudança de local do sistema de ancoragem | **Inspeção inicial do sistema de ancoragem** | NR-35 Anexo II **4.1 "b"**, **4.1.1** | NÃO no texto — **[PRÁTICA]** registrar |
| Queda com solicitação do sistema | **Inutilização e descarte** de cabos, cordas e elementos | NR-35 **35.6.6.5** | **SIM** (recusa registrada) |
| Montagem inicial da grua **e cada inspeção ou manutenção** | **Termo de entrega técnica e liberação para uso** | NR-18 **18.10.1.39** | **SIM** |
| Evento que comprometa a integridade da grua | **Laudo estrutural e operacional** | NR-18 **18.10.1.40** | **SIM** |
| Mudança de etapa da obra (fundação → estrutura → acabamento) | **Atualização do PGR e dos projetos anexos**; unifilar "as built" da instalação provisória | NR-18 **18.4.3.1**; NR-10 **10.2.3** | **SIM** |
| Acidente ou doença relacionada ao trabalho | Revisão da avaliação de riscos; análise documentada das causas; reunião extraordinária da CIPA; treinamento eventual quando acidente grave ou fatal | NR-01 **1.5.4.4.6 "d"**, **1.5.5.5.1**, **1.5.5.5.2**, **1.7.1.2.3 "b"**; NR-05 **5.6.4 "a"** | **SIM** |
| Acidente **fatal** | Isolamento do local e comunicação escrita imediata ao órgão regional; local liberado pelo órgão em até 72 h | NR-18 **18.16.23**, **18.16.23 "a"** | **SIM** |
| Inovação ou modificação em tecnologia, ambiente, processo, condições, procedimentos ou organização do trabalho | Revisão da avaliação de riscos; revisão da **seleção de EPI**; reciclagem de operador de máquina | NR-01 **1.5.4.4.6 "b"**; NR-06 **6.5.2.3**; NR-12 **12.16.8** | **SIM** |
| Identificação de inadequação, insuficiência ou ineficácia das medidas | Revisão da avaliação de riscos; **AET** quando for caso ergonômico | NR-01 **1.5.4.4.6 "c"**; NR-17 **17.3.2 "b"** | **SIM** |
| Solicitação justificada dos trabalhadores ou da **CIPA** | Revisão da avaliação de riscos | NR-01 **1.5.4.4.6 "f"** | **SIM** |
| Mudança nos requisitos legais | Revisão da avaliação de riscos | NR-01 **1.5.4.4.6 "e"** | **SIM** |
| Doença/agravo apontado pelo acompanhamento de saúde (PCMSO), ou causa relacionada às condições de trabalho apontada em análise de acidente | **AET obrigatória** — hipóteses que **não** dispensam nem ME/EPP de GR 1 e 2 | NR-17 **17.3.2 "c" e "d"**; **17.3.4.1** | **SIM** — relatório guardado **20 anos** (17.3.7) |
| Exposição excessiva a agente do Quadro 1 do Anexo I da NR-07, ou doença relacionada ao trabalho constatada | Informação ao responsável pelo PGR e **reavaliação de riscos e medidas**; CAT; avaliação da necessidade de examinar outros empregados na mesma situação | NR-07 **7.5.19.4**, **7.5.19.5**, **7.5.19.6.1** | **SIM** |
| Ausência ≥ **30 dias** por doença ou acidente, **de natureza ocupacional ou não** | **Exame de retorno ao trabalho**, antes de reassumir | NR-07 **7.5.9** | **SIM** — ASO |
| Mudança de riscos ocupacionais | Exame médico **obrigatoriamente antes** da data da mudança; reemissão da **ordem de serviço** | NR-07 **7.5.10**; NR-01 **1.4.4** | **SIM** |
| Término do contrato | **Exame demissional em até 10 dias**; dispensável se o exame clínico mais recente tiver **menos de 90 dias** (GR 3 e 4 — caso da construção) | NR-07 **7.5.11** | **SIM** — ASO |
| Retorno de afastamento superior a **180 dias** | **Treinamento eventual** (NR-01) | NR-01 **1.7.1.2.3 "c"** | **SIM** |
| Retorno de afastamento/inatividade superior a **3 meses**, troca de função, mudança de empresa, ou modificação significativa nas instalações elétricas | **Reciclagem NR-10** — ver `../05-treinamentos/requisitos-treinamento-por-nr.md` | NR-10 **10.8.8.2 "a"–"c"** | **SIM** |
| Troca de turno ou de equipe em espaço confinado | **Substituição das etiquetas individuais de bloqueio**; encerramento da PET quando houver substituição de vigia não relacionado nela | NR-33 **33.5.14.2 "d"**; **33.5.11** | **SIM** |
| Vento acima de **72 km/h** no içamento; vento acima de **40 km/h** em acesso por cordas | **Interrupção da operação** (proibição expressa / condição impeditiva) | NR-18 **18.10.1.34 "b"**; NR-35 Anexo I **6.1** e **6.2** | **SIM** — condição impeditiva na AR/PT |
| Condição de risco não prevista identificada em altura ou em serviço elétrico | **Suspensão imediata** da atividade | NR-35 **35.3.1 "h"**; NR-10 **10.6.5** e **10.6.3** | **SIM** — **[PRÁTICA]** registrar a paralisação |
| Entrada de produto químico novo no canteiro ou atualização de FDS | Classificação GHS, rotulagem e **treinamento sobre a FDS específica** | NR-26 **26.4.1.1**, **26.4.2.2**, **26.5.1**, **26.5.2** | **SIM** |
| Nova mobilização / mudança de efetivo no canteiro | Redimensionamento de sanitários, chuveiros e bebedouros; atualização do registro do SESMT no gov.br; redimensionamento da CIPA | NR-18 **18.5.3**, **18.5.6**; NR-04 **4.6.1.1**, **4.5.6**; NR-05 Quadro I | **SIM** |
| Máquina irregular aguardando reparo | **Segregar, bloquear e sinalizar** para impedir o uso — situação regular enquanto etiquetada e bloqueada | NR-12 **12.1.6** | **SIM** — **[PRÁTICA]** etiqueta com motivo e responsável |
| Manutenção, limpeza, lubrificação, desatolamento ou desentupimento de máquina | Isolamento e descarga de todas as fontes de energia + **bloqueio mecânico e elétrico** + **etiqueta com horário, data, motivo e responsável**; trava mecânica em partes articuladas | NR-12 **12.11.3 "a", "b" e "e"**; sequência elétrica completa da NR-10 **10.5.1 "a"–"f"** | **SIM** — registro de manutenção (12.11.2) |

---

## 13. Periodicidades duras da NR-18 — os números que não admitem interpretação

*Recorte da `../02-fichas-operacionais/ficha-NR-18.md`, §5. São os prazos que a fiscalização confere
com data na mão.*

| Item de canteiro | Prazo | NR-18 |
|---|---|---|
| Freios de emergência do elevador — laudo de testes | **Máx. a cada 90 dias** | **18.11.7 "c"** |
| Aterramento elétrico da grua — laudo com medição ôhmica | **Semestral** | **18.10.1.23 "h"** |
| Laudo estrutural e operacional da grua | Fabricante, ou **máx. 20 anos** de uso; **a cada 2 anos** acima de 20 anos; e após evento que comprometa a integridade | **18.10.1.40** |
| Elevador de obra — vistoria pré-operacional registrada | **Diária** | **18.11.7 "d"** |
| Equipamento de guindar, dispositivos auxiliares e plataformas de carga/descarga | **Diária**, registrada | **18.10.1.32 "a", "b", "c"** |
| Andaime suspenso — sistema de suspensão | **Diária**, antes de iniciar os trabalhos | **18.12.23 "c"** |
| Escoramentos de escavação | **Diária** | **18.7.2.11** |
| Escavação manual de tubulão — livro de registro | **Diária**, por etapa liberada | **18.7.2.20**; **18.7.2.22.1 "a"** |
| Redes de segurança | **Semanal** | **18.9.4.4.5** |
| PEMT — local de trabalho | **Diária** | **18.12.37** |
| PEMT — inspeção visual e teste funcional | Antes do uso diário ou **no início de cada turno** | **18.12.38** |
| Ferramentas manuais, elétricas e pneumáticas | **Antes de cada uso** | **18.10.2.3** |
| Sistema de aquecimento a gás (impermeabilização) — vazamentos | **A cada intervenção** | **18.7.7.6** |
| Trabalho a quente — local e áreas adjacentes | Liberação **e ao término** | **18.7.6.5**; **18.7.6.6 "d"** |
| END dos eixos de motofreios e freios de emergência do elevador | Definida por **PLH**, dentro do prazo máximo do fabricante | **18.11.7 "e"** |
| Instalações elétricas — inspeções e medições com laudo | **Periódica**, conforme projeto e normas técnicas (**intervalo não fixado em número**) | **18.6.7** |
| Câmara hiperbárica — revisão preventiva / teste hidrostático / teste do sistema de incêndio | **Anual** / **5 anos** / **6 meses** | **18.17.6 "e"** |
| Campânula — laudo de verificação estrutural | **A cada 5 anos** | **18.17.8 "a"** |
| Cabos de aço e de fibra sintética | Substituição ao perder integridade (**contínua**) | Anexo II, itens **2**, **5**, **7** |

---

## 14. Onde a NR **não** fixa prazo — não inventar

| O que | Como a norma redige | Quem define o intervalo |
|---|---|---|
| Inspeções e medições das instalações elétricas do canteiro | "inspeções e medições **periódicas**", com laudo (NR-18 **18.6.7**) | Projeto elétrico e normas técnicas, por PLH |
| Inspeção e controle periódico dos sistemas de proteção elétricos | "inspeção e controle **periódico**" (NR-10 **10.4.4**) | PLH / procedimento da empresa |
| Equipamentos e ferramentas isolantes | Conforme **fabricante** (NR-10 **10.4.3.1**); em AT, **anuais** na ausência de especificação (**10.7.8**) | Fabricante; PLH na ausência |
| Manutenção de máquinas | Forma e periodicidade **do fabricante** (NR-12 **12.11.1**), com cronograma de preventiva (**12.11.2.2 "a"**) | Fabricante ou PLH |
| Relação de máquinas e equipamentos | "mantida **atualizada**" (NR-12 **12.18.1**) — sem prazo de revisão | Empregador |
| Análise de potabilidade da água e higienização dos reservatórios | "**periódica**" (NR-24 **24.9.3**, **24.9.2**) | Empregador / legislação sanitária local |
| Treinamento específico do operador de equipamento de transporte motorizado | NR-11 **11.1.5** — **sem carga horária, conteúdo ou reciclagem fixados**; o único prazo objetivo é a validade **anual do cartão** (11.1.6.1) | Empregador — ver `../05-treinamentos/requisitos-treinamento-por-nr.md` |
| Reciclagem de operador de máquina (NR-12) | Obrigatória **por gatilho** (12.16.8), não por calendário — **a NR-12 não fixa reciclagem periódica anual** | Empregador, conforme o gatilho |
| Exercício simulado de emergência (geral) | Periodicidade definida **no próprio procedimento** (NR-01 **1.5.6.3.1**) | Organização — exceto espaço confinado, que é **anual** (NR-33 33.3.6 "b") |
| Escada fixa vertical — verificação das condições de segurança | "**periodicamente**, conforme critérios do procedimento operacional" (NR-35 Anexo III **5.2.1.4**) | Procedimento operacional da organização |

---

## Notas de resolução de divergências entre fichas

1. **Aterramento: semestral é só da grua.** A `ficha-NR-18` (§3) lista "laudo de aterramento" tanto no
   pacote da grua (18.10.1.23 "h") quanto no de elevadores (18.11.7 "h"), o que pode induzir à leitura de que
   ambos são semestrais. Conferido em `../01-nrs-texto-oficial/prioridade-1/NR-18/NR-18.md`: **apenas o
   18.10.1.23 "h" traz "atualizado semestralmente"**; o 18.11.7 "h" exige o laudo **sem fixar periodicidade**.
   Corrigido nesta matriz (seções 8 e 13).
2. **Inspeção diária de escoramento e de andaime suspenso: sem exigência textual de registro.** As fichas
   NR-18 (§5 e §7) descrevem "escoramento sem inspeção diária **registrada**" como erro comum. Conferido no
   texto oficial: **18.7.2.11** diz apenas "devem ser inspecionados diariamente" e **18.12.23 "c"** diz "ser
   verificado diariamente pelos usuários e pelo responsável pela obra", **sem** a palavra registro — ao
   contrário de **18.10.1.32** ("realizadas **e registradas**") e **18.11.7 "d"** ("registro, pelo operador").
   Nesta matriz o registro dessas duas inspeções está marcado **[PRÁTICA]** — continua fortemente
   recomendado como evidência, mas não é citável como exigência.
3. **Registro da inspeção de início de turno de máquina.** A `ficha-NR-12` já registra que **12.14.2.1
   dispensa** o registro. Mantido: a obrigação normativa é **interromper** a atividade e comunicar o superior
   (12.14.2), não preencher formulário.
4. **Grua × NR-11.** Ver a nota 1 de `./matriz-documentos-obrigatorios.md`. Nesta matriz, as inspeções de
   **grua** citam exclusivamente a NR-18; as de **cabos, correntes, roldanas e ganchos** e de **elevador/poço**
   citam a NR-11 (11.1.3.1, 11.1.1), que é a norma geral aplicável — verificado que o texto oficial da NR-11
   não contém a palavra "grua".
5. **Vibração de corpo inteiro — dois parâmetros.** `ficha-NR-09` (Anexo I 5.3.3.1) e `ficha-NR-15` (Anexo 8,
   item 2.2.1) convergem: a caracterização exige comprovação de **aren e VDVR**, não de um só. Sem divergência.
6. **Calor a céu aberto.** `ficha-NR-15` alerta que o Anexo 3 da NR-15 **não se aplica** a atividade a céu
   aberto sem fonte artificial de calor (Anexo 3, 1.1.1); a avaliação corre pelo **Anexo III da NR-09**, como
   registra a `ficha-NR-09`. Sem divergência — apenas competências distintas.
