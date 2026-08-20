---
tipo: matriz
titulo: "Matriz de documentos obrigatórios — canteiro de obras"
escopo: >-
  Consolidação de todos os documentos exigíveis em obra da seção "F" do CNAE, a partir
  das 16 fichas operacionais desta base. Responde à pergunta "que documento a obra precisa?"
data: 2026-08-19
idioma: pt-BR
regra_de_ouro: >-
  Todo item de norma citado foi extraído das fichas operacionais e, nos pontos de dúvida
  ou divergência entre fichas, reconferido no texto oficial local. Onde a norma NÃO fixa
  prazo, forma, registro ou responsável, isso está escrito de forma explícita e marcado
  [PRÁTICA]. Não há número, prazo ou item de memória neste arquivo.
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
  - ./matriz-inspecoes-periodicidades.md
  - ./matriz-temas.md
aviso: >-
  Documento destilado para uso operacional. NÃO substitui o texto oficial das Normas
  Regulamentadoras; em qualquer divergência, prevalece o PDF oficial publicado no DOU.
  Os arquivos .md locais são conversão automática dos PDFs oficiais.
---

# Matriz de documentos obrigatórios — canteiro de obras

> **Como usar (humano ou agente).** Esta é a visão "de cima" das 16 fichas. Para o **detalhe** de
> qualquer linha, abra a ficha correspondente em `../02-fichas-operacionais/`. Para **periodicidade
> de inspeção**, use `./matriz-inspecoes-periodicidades.md`. Para **carga horária e reciclagem de
> treinamento**, use `../05-treinamentos/requisitos-treinamento-por-nr.md` — esta matriz **não**
> reproduz requisitos de treinamento, apenas o registro documental deles.

## Legenda de criticidade

| Marca | Significado |
|---|---|
| **⚠️** | Documento que o `../00-guia-interdicao/guia-interdicao.md` lista como cobrado de imediato pela fiscalização (guia §2.4 — "documentos que a obra deve ter à mão", §3 — ranking de embargo/interdição, §6 — checklist "o fiscal chegou"). A falta gera **autuação imediata** e, quando associada à condição física de risco, **sustenta ou acompanha embargo/interdição**. |
| **▲** | Documento que a **ficha** aponta como autuável de imediato por limiar objetivo, mas que **não consta do rol do guia**. Tratar como prioridade alta, sem afirmar que embarga. |
| *(sem marca)* | Exigível; desfecho típico é notificação com prazo de correção (NR-28, 28.1.4 — máx. 60 dias). |

> **Nada aqui embarga sozinho.** O único gatilho de embargo/interdição é o grave e iminente risco
> (NR-03, 3.2.1), aferido pela metodologia da NR-03. Documento faltando é **autuação** e **agravante**:
> o guia registra que o bloco documental "por si só raramente configura GIR imediato — costuma
> acompanhar e agravar outros achados" (guia §3, linha 10).

---

## Bloco A — Documentos-base de qualquer obra

*Exigíveis do primeiro ao último dia do canteiro, independentemente de método construtivo, porte ou
equipamento. Ordenados por criticidade.*

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| ⚠️ **Comunicação Prévia de Obra** em sistema informatizado da SIT | NR-18 **18.3.1 "b"** | **Sempre** — antes do início das atividades | Organização da obra | Ato único, **antes do início**; comprovante mantido no canteiro | — |
| ⚠️ **PGR do canteiro** (programa por estabelecimento) | NR-01 **1.5.3.1** / **1.5.3.1.1**; NR-18 **18.4.1** e **18.4.2** | **Sempre**, por canteiro — PGR da matriz não serve | PLH em segurança do trabalho; canteiro ≤ 7 m e ≤ 10 trabalhadores: profissional qualificado (**18.4.2.1**) | Permanente; **atualizado conforme a etapa da obra** (18.4.3.1); revisão da avaliação de riscos a cada **2 anos** ou nos gatilhos do 1.5.4.4.6 | — |
| ⚠️ **Inventário de riscos ocupacionais** (documento mínimo do PGR) | NR-01 **1.5.7.1 "a"**; conteúdo mínimo **1.5.7.3.2 "a"–"i"**; escopo inclui fatores ergonômicos e **psicossociais** (**1.5.3.1.4**) | **Sempre** | Organização / PLH SST | Mantido atualizado (**1.5.7.3.3**); **histórico das atualizações: mín. 20 anos** (1.5.7.3.3.1) | — |
| ⚠️ **Plano de ação** (documento mínimo do PGR) | NR-01 **1.5.5.2.1**; cronograma e forma de aferição **1.5.5.2.2** | **Sempre** | Organização | Conforme cronograma; registro da implementação e ajustes (**1.5.5.3.1**) | — |
| ⚠️ **Projetos anexos ao PGR**: (a) área de vivência; (b) elétrico das instalações temporárias; (c) sistemas de proteção coletiva; (d) SPIQ quando aplicável; (e) relação de EPI com especificações técnicas | NR-18 **18.4.3 "a" a "e"** | **Sempre** (SPIQ: quando aplicável) | PLH | Anexos do PGR; atualizados conforme a etapa (**18.4.3.1**) | `../04-templates/ficha-epi-por-funcao.md` (alínea "e") |
| ⚠️ **Inventário de riscos das contratadas**, entregue ao contratante e contemplado no PGR do canteiro | NR-18 **18.4.4**; NR-01 **1.5.8.1** e **1.5.8.1.1** (inventário **e** plano de ação da contratada) | **Sempre que houver subempreiteira** — exigir na mobilização | Cada contratada | Antes da mobilização; enquanto durar o contrato | — |
| ⚠️ **PCMSO** | NR-07 **7.5.1**; conteúdo mínimo **7.5.4 "a"–"e"** | **Sempre** (MEI/ME/EPP dispensadas por NR-01 1.8.6, com as ressalvas de 7.7.1 e 7.7.4) | Médico do trabalho indicado pelo empregador (**7.4.1 "c"**; NR-04 **4.7.3**) | Permanente; derivado do inventário de riscos; relatório analítico **anual** (7.6.2) | — |
| ⚠️ **ASO** de cada trabalhador | NR-07 **7.5.19**; conteúdo mínimo **7.5.19.1 "a"–"g"**; aptidão específica de outra NR consignada no ASO **7.5.19.2** | **Sempre**, a cada exame clínico ocupacional | Médico examinador | Por exame: admissional (7.5.8 I), periódico **anual** para expostos / **bienal** para os demais (7.5.8 II), retorno (7.5.9), mudança de riscos (7.5.10), demissional (7.5.11) | — |
| ⚠️ **Ordens de Serviço de SST**, com ciência dos trabalhadores | NR-01 **1.4.1 "c"**; definição no **Anexo I**; informação na admissão e na mudança de função que altere risco **1.4.4 "a"–"e"** | **Sempre** | Empregador / SESMT | Na admissão e **a cada mudança de função que altere risco**; podem estar contempladas em procedimentos e instruções de SST (Anexo I) | `../04-templates/ordem-de-servico-sst.md` |
| ⚠️ **Registro da seleção de EPI** (pode integrar ou ser referenciado no PGR) | NR-06 **6.5.2.1**; critérios **6.5.2 "a"–"g"**; participação de SESMT, empregados usuários e CIPA **6.5.2.2** | **Sempre** que houver EPI; dispensadas de PGR mantêm registro de atividade × EPI (**6.5.2.1.1**) | Organização + SESMT + CIPA | Revisar nas situações do **1.5.4.4.6 da NR-01** (6.5.2.3) | `../04-templates/ficha-epi-por-funcao.md` |
| ▲ **Esquemas unifilares atualizados** das instalações elétricas, com sistema de aterramento e dispositivos de proteção | NR-10 **10.2.3** | **Sempre — qualquer carga instalada.** Não depende dos 75 kW (esse limiar é só do prontuário) | PLH | Mantidos **atualizados**; na provisória de canteiro, acompanham a etapa (NR-18 18.4.3.1) | — |
| **Documento com os critérios adotados** de severidade, probabilidade, níveis de risco, classificação e tomada de decisão | NR-01 **1.5.4.4.2.2** | **Sempre** — saiu do inventário e passou a ser documento próprio | Organização / PLH SST | Enquanto vigente o método adotado | — |
| **Procedimentos de resposta a emergências** | NR-01 **1.5.6.1** e **1.5.6.2**; com eletricidade: NR-10 **10.12.1** e métodos de resgate padronizados **10.12.3** | **Sempre** | Organização | Manter implementados; **evidências do exercício simulado** (1.5.6.3 / 1.5.6.3.1) na periodicidade definida no próprio procedimento | — |
| **Documentos do PGR datados e assinados**, disponíveis a trabalhadores, representantes e Inspeção | NR-01 **1.5.7.2** e **1.5.7.2.1**; acesso amplo e irrestrito ao digital **1.6.5** | **Sempre** | Organização | Permanente | — |
| **Avaliação ergonômica preliminar registrada** | NR-17 **17.3.1**; registro obrigatório **17.3.1.2.1**; pode ser feita dentro do 1.5.4 da NR-01 (**17.3.1.2**) | **Sempre** que houver situação de trabalho que demande adaptação — na obra, carga manual, postura de armação/assentamento, ferramenta pesada | Organização | Resultados integram o **inventário de riscos** (17.3.5 "a"); medidas viram **plano de ação** (17.3.6 "a") | `../04-templates/apr-analise-preliminar-risco.md` **[PRÁTICA]** — a APR não é o formulário nomeado pela NR-17 |
| **Registro das avaliações de agentes físicos, químicos e biológicos** | NR-09 **9.4.4**; resultados no inventário **9.4.3**; medidas no plano de ação **9.5.3** | **Sempre** que houver agente identificado no PGR — a NR-09 **não gera documento autônomo** | Organização / higienista | Avaliação periódica da exposição é medida de prevenção expressa (Anexo I, **6.1 "a"**) | — |
| **Vestimenta de trabalho** — comprovação de fornecimento gratuito e higienização | NR-24 **24.8.2**, **24.8.4**; NR-18 **18.16.2** | **Sempre** que a atividade exigir vestimenta/uniforme | Empregador | Substituição por vida útil ou dano; **não substitui EPI** (24.8.3) | — |

---

## Bloco B — Documentos condicionais por atividade ou equipamento

*Só existem se a obra tiver aquela atividade, aquele equipamento ou aquele efetivo. A coluna
"quando é exigível" traz a **condição-gatilho** — é ela que um agente deve testar antes de cobrar
o documento. Ordenados por criticidade dentro de cada família.*

### B.1 Trabalho em altura (NR-35)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| ⚠️ **Análise de Risco (AR)** da atividade em altura | NR-35 **35.3.1 "b"**, **35.5.5**, conteúdo **35.5.5.1** | Toda atividade com diferença de nível **acima de 2,0 m** e risco de queda (35.2.1) | Organização | Enquanto válidas as condições analisadas; atividade **rotineira** pode tê-la no procedimento operacional (**35.5.6**) | `../04-templates/apr-analise-preliminar-risco.md` |
| ⚠️ **Permissão de Trabalho (PT)**, física ou digital | NR-35 **35.5.7**, **35.5.8**, **35.5.8.1** | Atividade em altura **não rotineira** | Responsável pela autorização da permissão | **Duração da atividade, restrita ao turno/jornada**; revalidável só sem mudança de condição ou de equipe (**35.5.8.2**) | `../04-templates/pt-permissao-trabalho.md` |
| ⚠️ **Autorização formal do trabalhador** + sistema de identificação da abrangência | NR-35 **35.4.1**, **35.4.1.3**, **35.4.1.3.1** | Todo trabalhador que executa trabalho em altura | Organização | Consignada nos documentos funcionais; consulta a qualquer tempo | — |
| ⚠️ **ASO com aptidão para trabalho em altura** | NR-35 **35.4.4** / **35.4.4.1**; NR-07 **7.5.19.2** e **7.5.3** | Idem acima | Organização / médico responsável | Conforme NR-07 | — |
| **Procedimento operacional** das atividades rotineiras em altura | NR-35 **35.3.1 "c"**, **35.5.6.1** | Quando a organização classifica a atividade como rotineira | Organização | Enquanto vigente a rotina descrita | — |
| **Projeto do SPCQ** (sistema de proteção contra quedas) | NR-35 **35.6.3.1** | Quando houver SPCQ instalado | PLH | Enquanto o sistema estiver instalado | — |
| **Projeto e especificações técnicas do sistema de ancoragem** (força de impacto, esforços, ZLQ) | NR-35 Anexo II **5.1** / **5.1.1** | Sistema de ancoragem permanente ou projetado | PLH | Enquanto instalado | — |
| **Procedimento operacional de montagem e utilização** do sistema de ancoragem | NR-35 Anexo II **6.1** | Idem | Profissional qualificado em segurança do trabalho | Enquanto em uso | — |
| **Autorização formal** do trabalhador capacitado para selecionar pontos de ancoragem **temporária** | NR-35 Anexo II **4.2.1** | Quando houver ancoragem temporária | Organização | Enquanto vigente | — |
| **Plano/procedimento de emergência e resgate** em altura | NR-35 **35.7.1**, **35.7.2** | Sempre que houver trabalho em altura | Organização | Por frente de serviço; equipe dimensionada e tempo de resgate estimado | — |
| **Certificação do trabalhador de acesso por cordas** | NR-35 Anexo I **3.1 "b"** | Fachada/acesso por cordas | Organização (certificação por norma técnica nacional) | Conforme a norma de certificação; dispensa os treinamentos inicial e periódico (Anexo I 3.1.1) | — |
| **Plano de resgate por frente de trabalho** (acesso por cordas) | NR-35 Anexo I **5.2** | Acesso por cordas | Organização | Por frente de trabalho | — |
| **Registro de inspeção de cordas e equipamentos** de acesso por cordas | NR-35 Anexo I **4.3.1** / **4.3.3** | Acesso por cordas | Organização | Periódica **mín. a cada 6 meses**, reduzível conforme uso/agentes agressivos (4.3.1.1) | — |
| **Procedimento operacional de uso e manutenção de escadas portáteis** | NR-35 Anexo III **5.2.2.2** / **5.2.2.3** | Uso de escada portátil | Organização | Enquanto houver uso | — |
| **Arquivamento de toda a documentação da NR-35** | NR-35 **35.3.1 "j"** | Sempre | Organização | **Mínimo 5 anos**, salvo disposição específica em outra NR | — |

### B.2 Proteção coletiva contra quedas, andaimes e plataformas (NR-18)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Projeto dos sistemas de proteção coletiva** (periferia, aberturas, plataformas, redes) | NR-18 **18.9.1**; anexo do PGR **18.4.3 "c"** | Sempre que houver risco de queda; periferia obrigatória **a partir do início da concretagem da 1ª laje** (18.9.4) | PLH | Anexo do PGR, atualizado por etapa | `../04-templates/checklists/checklist-protecao-quedas.md` |
| ⚠️ **Projeto de montagem de andaime** | NR-18 **18.12.2** / **18.12.2.2**; dispensa em **18.12.2.1** (torre única com altura < 4× a menor dimensão da base) | Montagem de andaime fora da hipótese de dispensa; **interligação de pisos exige projeto independentemente da altura** | PLH | Antes da montagem | `../04-templates/checklists/checklist-andaimes.md` |
| ⚠️ **Registro formal de liberação de uso do andaime** | NR-18 **18.12.4** | **A cada liberação de uso** | Profissional qualificado em SST **ou** responsável pela frente de trabalho/da obra | Por liberação; liberação verbal não vale | `../04-templates/checklists/checklist-andaimes.md` |
| **Projeto de fixação/sustentação de andaime suspenso** (3× os esforços) | NR-18 **18.12.18**, **18.12.21 "e"** | Andaime suspenso | PLH | Antes da montagem | `../04-templates/checklists/checklist-andaimes.md` |
| **Laudo de verificação estrutural** para sustentação em platibanda ou beiral | NR-18 **18.12.19** | Sustentação apoiada em platibanda/beiral | PLH | Antes do uso | — |
| **Projeto da rede de segurança** com fases de montagem, ascensão e desmontagem | NR-18 **18.9.4.4** (rede conforme EN 1263-1/1263-2 ou normas técnicas nacionais), **18.9.4.4.1** | Uso de rede de segurança | PLH | Antes da instalação; **inspeção semanal** (18.9.4.4.5) | `../04-templates/checklists/checklist-protecao-quedas.md` |
| **Projeto de galeria sobre o passeio** | NR-18 **18.16.19** | Obra com mais de 2 pavimentos no alinhamento do logradouro | PLH | Antes da execução | — |

### B.3 Escavação, fundação, demolição e etapas de obra (NR-18)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Projeto de escavação, fundação e desmonte de rochas** + **liberação/autorização** de escavação | NR-18 **18.7.2.1**; liberação e autorização **18.7.2.3** | Escavação **acima de 1,25 m** | PLH | Antes e durante o serviço; escoramento com **inspeção diária** (18.7.2.11) | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| ⚠️ **Plano de resgate e remoção** para escavação manual de tubulão | NR-18 **18.7.2.18** | Tubulão escavado manualmente | PLH | Antes da escavação | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| **Livro de registro diário da escavação manual de tubulão** | NR-18 **18.7.2.20**, **18.7.2.22.1 "a"** | Idem | PLH | **Diário**, por etapa liberada | — |
| **Plano de Fogo** | NR-18 **18.7.2.25**; blaster **18.7.2.26** | Desmonte com explosivo | PLH / blaster | **Uma por detonação** | — |
| **Plano de Demolição** | NR-18 **18.7.1.1** | Serviço de demolição | PLH | Antes da demolição | — |
| **Projeto de fôrmas e escoramentos** com sequência de retirada | NR-18 **18.7.4.1**; desforma isolada e sinalizada **18.7.4.2** | Estrutura de concreto moldada in loco | PLH | Antes da montagem | — |
| **Análise de risco de trabalho a quente** | NR-18 **18.7.6.2** | Quando houver material combustível ou área não destinada ao serviço | SESMT / PLH | Por serviço; observador capacitado em prevenção e combate a incêndio (18.7.6.4) | `../04-templates/apr-analise-preliminar-risco.md` |
| **Autorização de PLH para carga concentrada em telhado/cobertura** | NR-18 **18.7.8.2** | Trabalho em telhado/cobertura (acima de 2 m: soma-se a NR-35 por **18.7.8.1**) | PLH | Por serviço | `../04-templates/checklists/checklist-trabalho-altura.md` |
| **Procedimentos + análise de risco + permissão de trabalho de soluções alternativas** | NR-18 **18.4.6.1**, **18.4.6.2**, **18.4.6.3** | Quando a obra adotar solução alternativa à prescrição da NR-18 | PLH SST | Integra o PGR; **disponível no local de trabalho** | `../04-templates/pt-permissao-trabalho.md` |

### B.4 Equipamentos de guindar, elevadores e movimentação vertical (NR-18 + NR-11 + NR-12)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Plano de carga** por equipamento de guindar (dados da grua no 18.10.1.17.1) | NR-18 **18.10.1.16**, **18.10.1.17** | Uso de grua, guindaste ou equipamento de guindar | PLH | Por equipamento e por instalação; **contemplado no PGR** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Pacote documental da grua no canteiro** — plano de cargas; registro de manutenções, inspeções e termos de entrega técnica (item 12.11 da NR-12); capacitação e autorização do operador; capacitação do sinaleiro/amarrador e do inspetor de plataforma; projeto de fixação; projeto da passarela; listas de verificação e instruções de segurança; laudo de aterramento | NR-18 **18.10.1.23 "a" a "h"** | Uso de equipamento de guindar | Locador / organização | **Disponível permanentemente no canteiro**; alínea "h" — laudo de aterramento com medição ôhmica **atualizado semestralmente** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Termo de entrega técnica e liberação para uso da grua** | NR-18 **18.10.1.39** | Grua | Responsável pela montagem/manutenção | Após a montagem inicial **e após cada inspeção ou manutenção** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| **Laudo estrutural e operacional da grua** (integridade estrutural e eletromecânica) | NR-18 **18.10.1.40** | Grua sem identificação de fabricante; por periodicidade do fabricante; e por idade do equipamento | PLH | Periodicidade do fabricante ou, no máximo, aos **20 anos de uso**; **a cada 2 anos** acima de 20 anos; e após evento que comprometa a integridade | — |
| **Análise de risco de movimentação de cargas** | NR-18 **18.10.1.18** (rotineira → procedimento operacional) e **18.10.1.19** (não rotineira → permissão de trabalho) | Toda movimentação de carga | PLH / SESMT | Por operação | `../04-templates/apr-analise-preliminar-risco.md` · `../04-templates/pt-permissao-trabalho.md` |
| ⚠️ **Pacote documental de elevadores e transporte vertical** — programa de manutenção preventiva; termo de entrega técnica; **laudo dos freios de emergência**; registro das vistorias diárias; laudos de END dos eixos de motofreios e freios; manual do fabricante; registro de manutenção (12.11 da NR-12); laudo de aterramento | NR-18 **18.11.7 "a" a "h"** | Uso de elevador de obra, cremalheira ou monta-carga | Locador/fabricante + PLH | Freios: **máx. a cada 90 dias** (alínea "c"); vistoria: **diária, registrada pelo operador** (alínea "d"); END: definida por PLH dentro do prazo máximo do fabricante (alínea "e") | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ▲ **Cartão de identificação do operador** de equipamento de transporte com força motriz própria (nome e fotografia, portado em lugar visível) | NR-11 **11.1.6** | Empilhadeira, guincho, talha, transportador motorizado | Empregador emite; operador porta | **Validade 1 ano**; revalidação condicionada a **exame de saúde completo** custeado pelo empregador (11.1.6.1) | — |
| ▲ **Cartão de identificação do operador de máquina autopropelida** (nome, função, foto, local visível) | NR-12 **12.16.10** | Retroescavadeira, mini-carregadeira, rolo, escavadeira | Empregador | Renovação **máx. a cada 1 ano**, mediante exame médico | — |
| **Comprovação do treinamento específico** que habilita o operador na função | NR-11 **11.1.5** | Operador de equipamento de transporte motorizado | Empresa | A NR-11 **não fixa carga horária, conteúdo nem periodicidade de reciclagem** para esse operador — ver `../05-treinamentos/requisitos-treinamento-por-nr.md` | — |
| **Indicação da carga máxima de trabalho** em lugar visível no equipamento | NR-11 **11.1.3.2** | Todo equipamento de elevação/movimentação | Empregador | Permanente, enquanto em uso | — |
| **Documentação do Anexo I da NR-11 (rochas ornamentais)** — Relatório de Inspeção **anual** por PLH com ART; registro de inspeções e manutenções; livro de identificação do equipamento; nota fiscal ou projetos/laudos/cálculos; notas fiscais e certificados de cabos, cintas e acessórios; autorização do trabalhador; certificados de capacitação | NR-11 Anexo I **1.3**, **1.3.1**, **1.2.1**, **1.3.3**, **2.6.2**, **5.1**, **5.4.3** | Obra com marmoraria própria ou recebimento/estocagem de chapas | Empresa / PLH | Relatório de Inspeção: **anual**; demais: mantidos no estabelecimento | — |

### B.5 Instalações elétricas (NR-10 + NR-18)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Projeto elétrico das instalações temporárias** | NR-18 **18.6.2**; anexo do PGR **18.4.3 "b"**; NR-10 **10.3.8** e **10.3.7** (mantido atualizado e à disposição dos autorizados) | **Sempre** que houver instalação provisória de canteiro | PLH | Anexo do PGR; mantido **conforme executado**, acompanhando a etapa | `../04-templates/checklists/checklist-eletrica-provisoria.md` |
| ⚠️ **Laudos de inspeção e medição elétrica** das instalações (inclusive aterramento) | NR-18 **18.6.7** | **Sempre** | PLH | **Periódica**, conforme projeto e normas técnicas — a NR-18 não fixa o intervalo em número | `../04-templates/checklists/checklist-eletrica-provisoria.md` |
| ▲ **Prontuário de Instalações Elétricas** (conteúdo mínimo "a" a "g") | NR-10 **10.2.4**; guarda e acesso **10.2.6**; documentos técnicos por PLH **10.2.7** | **Carga instalada superior a 75 kW.** Abaixo desse limiar, permanecem exigíveis o unifilar (10.2.3) e os demais documentos | Empregador ou pessoa formalmente designada | Mantido **atualizado** e à disposição dos trabalhadores | `../04-templates/checklists/checklist-eletrica-provisoria.md` |
| **Prontuário ampliado (SEP) / prontuário reduzido (proximidade do SEP)** | NR-10 **10.2.5** e **10.2.5.1** | Empresa que opera no SEP ou trabalha em suas proximidades | Empregador | Permanente | — |
| **Memorial descritivo do projeto** com os itens de segurança "a" a "g" | NR-10 **10.3.9** | Sempre | PLH | Junto ao projeto | — |
| ⚠️ **Autorização formal do trabalhador** (anuência formal) + sistema de identificação da abrangência + consignação no registro de empregado | NR-10 **10.8.4**, **10.8.5**, **10.8.6** | Todo trabalhador que intervém em instalação elétrica; NR-18 **18.6.3** reforça no canteiro | Empregador | Enquanto vigente; **a capacitação só vale para a empresa que capacitou** (10.8.3.1) | — |
| **Procedimentos de trabalho** específicos, padronizados, passo a passo, assinados por profissional do 10.8 | NR-10 **10.11.1**; conteúdo mínimo **10.11.3** | Serviço em eletricidade | Profissional do 10.8 | Por tarefa/atividade | — |
| **Ordens de serviço específicas por tarefa** (tipo, data, local e referência aos procedimentos) | NR-10 **10.11.2** | Serviço em eletricidade | Aprovadas por trabalhador autorizado | Por tarefa | `../04-templates/ordem-de-servico-sst.md` |
| **Exame de saúde compatível**, registrado no prontuário médico | NR-10 **10.8.7** (c/c NR-07) | Trabalhador autorizado | Organização / médico | Conforme NR-07 | — |
| **Ordem de serviço específica assinada por superior responsável** para trabalho energizado em **alta tensão** | NR-10 **10.7.4**; proibida execução individual **10.7.3** | Serviço energizado em AT e no SEP | Superior responsável | Por tarefa | — |
| **Permissão formal de trabalho em área classificada** | NR-10 **10.9.5** | Serviço em área classificada | Organização | Por serviço | `../04-templates/pt-permissao-trabalho.md` |
| **SPDA do canteiro projetado e mantido** ou **laudo de dispensa** | NR-18 **18.6.18**; dispensa mediante laudo de PLH **18.6.18.1** | Sempre — a dispensa é que exige laudo | PLH | Enquanto o canteiro existir | `../04-templates/checklists/checklist-eletrica-provisoria.md` |

### B.6 Máquinas e equipamentos (NR-12 + NR-18)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Registros de capacitação de operadores** (material didático, lista de presença **ou** certificado, currículo dos ministrantes e avaliação dos capacitados) + **autorização formal** | NR-12 **12.16.5**; operação só por capacitado e formalmente autorizado **12.16.1** e **12.16.2** | Toda máquina do canteiro | Empregador | Por turma; **a capacitação só vale para o empregador que a realizou** (12.16.6) — terceirizado precisa da capacitação do seu próprio empregador | — |
| ⚠️ **Relação atualizada de máquinas e equipamentos** ("inventário de máquinas"), à disposição da Auditoria-Fiscal | NR-12 **12.18.1** | Sempre que houver máquina | Empregador | Permanente, **mantida atualizada** — a norma não fixa prazo de revisão | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| **Manual de instruções do fabricante**, em português, disponível no local de trabalho | NR-12 **12.13.1**, **12.13.2 "a"–"d"** | Toda máquina | Empregador (fornecido por fabricante/importador) | Permanente, no canteiro | — |
| **Manual reconstituído** (quando inexistente ou extraviado) ou **ficha de informação** (ME/EPP, máquina anterior a 24/06/2012) | NR-12 **12.13.5** e **12.13.5.1**; **12.13.5.3 "a"–"f"** e **12.13.5.3.1** | Máquina sem manual | Empregador, sob responsabilidade de profissional qualificado ou PLH | **Antes de liberar a máquina** | — |
| **Registro de manutenções** (intervenções, data, serviço, peças, condições de segurança, **indicação conclusiva quanto às condições de segurança** e responsável) | NR-12 **12.11.2 "a"–"g"**; disponível a trabalhadores, CIPA, SESMT e AFT **12.11.2.1** | Toda intervenção de manutenção | Responsável pela execução da intervenção | A cada intervenção; **cronograma de manutenção preventiva** em 12.11.2.2 "a" | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| **Procedimentos de trabalho e segurança**, específicos e padronizados, elaborados **a partir da apreciação de riscos** | NR-12 **12.14.1**; não substituem proteção coletiva **12.14.1.1** | Por máquina/atividade; empresa sem manutenção própria é dispensada de elaborá-los **para essa finalidade** (12.14.3.1) | Empregador | Enquanto vigente | — |
| **Anotação da função do operador** em registro de empregado, livro/ficha/sistema eletrônico **e na CTPS** | NR-12 **12.16.9** | Operador de máquina | Empregador | Na admissão / mudança de função | — |
| **Projeto, diagrama ou representação esquemática dos sistemas de segurança**, em português, por PLH | NR-12 **12.5.17** — "em função do risco, **poderá ser exigido**" | Sob demanda da fiscalização, conforme o risco | PLH | Sob demanda | — |
| **Responsabilidade técnica sobre os sistemas de segurança instalados** | NR-12 **12.5.2 "b"**; instalação por PLH, qualificado ou capacitado autorizado **12.5.2.1** | Na adequação/instalação de proteções | PLH | Por adequação | — |
| **Projeto de fixação/fundação de máquina estacionária** por PLH quando faltarem requisitos do fabricante | NR-12 **12.2.6.1** | Máquina estacionária sem requisito de fixação do fabricante | PLH | Antes da instalação | — |
| **Toda a documentação da NR-12** disponível a CIPA/CIPAMIN, sindicato e AFT | NR-12 **12.18.2** | Sempre | Empregador | Permanente, em formato digital ou físico | — |
| **Projeto da serra circular de bancada por PLH** e demais requisitos (coifa, dispositivo antirretrocesso, empurrador/guia, coletor de serragem) | NR-18 **18.10.1.5**; remissão à NR-12 em **18.10.1.1** | Serra circular de bancada | PLH | Enquanto a máquina estiver no canteiro | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| **Laudo técnico + análise de risco por PLH com ART** para uso de cesto suspenso; **projeto do cesto com memória de cálculo e ART** | NR-12 Anexo XII **4.2** e **4.16** | Elevação de pessoas por equipamento de guindar (hipóteses do Anexo XII, 4.1) | PLH | Por instalação/uso | — |

### B.7 Espaço confinado (NR-33)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| ⚠️ **PET — Permissão de Entrada e Trabalho** | NR-33 **33.5.5**; campos mínimos **33.5.6 "a"–"h"**; vias/meio digital **33.5.7.1** e **33.5.7.2** | **Toda e qualquer** entrada e trabalho em espaço confinado — testar antes os três requisitos simultâneos do **33.2.2** (+ hipótese de engolfamento do 33.2.2.2) | Supervisor de entrada emite | Validade **limitada a uma jornada** (33.5.12); prorrogação nas condições do 33.5.12.1 **sem exceder 24 h** (33.5.12.1.1); **arquivada por 5 anos** (33.5.9) | `../04-templates/pt-permissao-trabalho.md` |
| ⚠️ **Cadastro dos espaços confinados** (identificação, volume, aberturas, acessos, condição, croqui com bloqueios e raquetes, utilização/produto e perigos) | NR-33 **33.4.2 "a"–"g"** | Organização que **possui** espaço confinado | Responsável técnico | Mantido no estabelecimento (33.5.21.1) | — |
| ⚠️ **Plano de resgate** (perigos do resgate, equipe designada e dimensionada, **tempo de resposta**, técnicas e equipamentos, previsão de simulados) | NR-33 **33.5.20.1**, **33.5.20.2**, **33.5.20.3** | Sempre que houver entrada | Quem **realiza** o trabalho, articulado com o plano de quem **possui** o espaço (33.5.21.3) | Permanente; **simulado anual** da equipe de emergência (33.3.6 "b") | — |
| ⚠️ **Indicação formal do responsável técnico** + procedimentos de segurança + modelo de PET adaptado | NR-33 **33.3.1 "a" e "b"**, **33.3.2**, **33.5.21.2** | Sempre | Organização | Permanente | — |
| **ASO com aptidão para espaço confinado** (avaliação física e mental considerando fatores psicossociais) | NR-33 **33.5.19.1** / **33.5.19.2**; NR-07 **7.5.19.2** | Trabalhador autorizado, vigia, supervisor | Organização / médico | Conforme NR-07 | — |
| **Registro de bump test e calibração** do detector de gases | NR-33 **33.5.15.5** (auto-zero e teste de resposta **diários**) e **33.5.15.6** (calibração por laboratório **acreditado pelo Inmetro**) | Sempre que houver avaliação atmosférica | Organização | Diário / conforme laboratório | — |
| **Fornecimento do cadastro à contratada e do inventário de riscos à contratante** | NR-33 **33.4.3 "a"–"c"**; **33.4.3.1** | Terceirização em espaço confinado — cenário típico de obra | Contratante e contratada | Antes da mobilização | — |
| **Etiquetas individuais de bloqueio** (serviço, nome, data e hora), resistentes a intempéries | NR-33 **33.5.14.2 "a"–"d"** | Controle de energias perigosas | Cada trabalhador | **Substituídas em troca de turno ou de equipe** | — |

### B.8 Áreas de vivência e alojamento (NR-18 + NR-24)

> A NR-18 manda aplicar a NR-24 **"no que for cabível"** (18.5.2). **Onde a NR-18 tem número próprio,
> vale a NR-18**; onde é silente, vale a NR-24 integralmente. O **Anexo II da NR-24 (trabalho externo)
> exclui expressamente a construção** — frente de trabalho segue NR-18, 18.5.7.

| Documento / comprovação | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Checklist |
|---|---|---|---|---|---|
| ⚠️ **Projeto da área de vivência** do canteiro e das frentes de trabalho | NR-18 **18.4.3 "a"**; composição obrigatória **18.5.1** | **Sempre** — anexo do PGR | PLH | Atualizado conforme a etapa (18.4.3.1) | `../04-templates/checklists/checklist-areas-vivencia.md` |
| ⚠️ **Dimensionamento comprovável** — 1 conjunto sanitário/**20** trabalhadores ou fração; 1 chuveiro/**10**; 1 bebedouro/**25** (água filtrada e fresca, vedado copo coletivo); deslocamento ≤ **150 m** até o sanitário; ≤ **100 m** horizontal e **15 m** vertical até o bebedouro | NR-18 **18.5.3**, **18.5.5**, **18.5.6**, **18.5.6.1**, **18.5.6.2** | **Sempre** — a NR-24 é normativa de **resultado físico**: a prova é contagem e medição in loco | Organização | Recalcular **a cada mobilização/desmobilização** | `../04-templates/checklists/checklist-areas-vivencia.md` |
| ⚠️ **Alojamento** — camas individuais (vedadas 3 ou mais na vertical), colchões **certificados pelo INMETRO**, roupa de cama limpa, máx. **8** por quarto, **3,00 m²/cama simples** ou **4,50 m²/beliche**, armário com trancamento, 1 sanitário com chuveiro/**10** alojados a no máx. **50 m**, lavanderia, área de lazer, vedado preparo de alimento nos quartos | NR-24 **24.7.1** a **24.7.10**, **24.7.3.1.1**; NR-18 **18.5.4** | **Quando houver trabalhador alojado** | Organização | Estado **permanente**: coleta de lixo diária, sanitários higienizados diariamente, controle de vetores (24.7.8 / 24.7.9) | `../04-templates/checklists/checklist-areas-vivencia.md` |
| **Vestiário** — área mínima `1,5 − (nº trab./1000)` m²/trabalhador até 750, ou ≥ 0,75 m² acima disso; armário simples 0,40×0,30×0,40 m (duplo conforme 24.4.5); armário **não rotativo** para guarda de EPI | NR-24 **24.4.2**, **24.4.2.1**, **24.4.6**, **24.4.6.1**, **24.4.4**, **24.4.5** | Quando a atividade exigir troca de vestimenta ou chuveiro (24.4.1) — **NR-18 é silente, vale a NR-24** | Organização | Permanente | `../04-templates/checklists/checklist-areas-vivencia.md` |
| **Local para refeições** — fora da área de trabalho acima de 30 trabalhadores; requisitos construtivos e de higiene | NR-24 **24.5.2**, **24.5.2.1**, **24.5.3**; dispensas **24.5.4** | Sempre (NR-18 18.5.1 "c" exige a existência; requisitos são da NR-24) | Organização | Permanente | `../04-templates/checklists/checklist-areas-vivencia.md` |
| **Frente de trabalho** — sanitário 1/**20** (banheiro químico admitido, com **higienização diária**) e local para refeição protegido de intempéries; admitido convênio formal com transporte garantido | NR-18 **18.5.7**, **18.5.7.1** | Toda frente de trabalho fora do canteiro | Organização | Higienização **diária** dos módulos | `../04-templates/checklists/checklist-areas-vivencia.md` |
| **Análise periódica de potabilidade da água** e higienização dos reservatórios | NR-24 **24.9.3**, **24.9.2** | Sempre | Organização | **Periódica** — a NR-24 não fixa o intervalo em número | — |
| **Instalação sanitária a ≤ 50 m do posto do operador de equipamento de guindar** ou, na impossibilidade, mín. **4 intervalos** por turno | NR-18 **18.10.1.41**, **18.10.1.41.1** | Operação de grua/guindaste | Organização | Por turno | — |

### B.9 Insalubridade, agentes ambientais e produtos químicos (NR-15 + NR-09 + NR-26)

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| ⚠️ **FDS — Ficha com Dados de Segurança** acessível aos trabalhadores no local de uso, e **rotulagem preventiva GHS** (6 elementos) em toda embalagem em uso, inclusive reenvasada | NR-26 **26.5.1**, **26.4.2.1**, **26.4.2.2 "a"–"f"**, simplificada **26.4.2.3**; FISPQ dos produtos armazenados NR-18 **18.16.5 "c"** | **Sempre que houver produto químico** (desmoldante, aditivo, impermeabilizante, solvente, tinta, gás). Dispensa de rotulagem GHS para saneantes registrados na Anvisa (**26.4.2.4**) | Fabricante/fornecedor elabora a FDS (**26.4.3.1**); a organização garante o **acesso** | Permanente no local de uso; atualizar a cada entrada de produto novo | — |
| **Classificação GHS de cada produto químico usado** | NR-26 **26.4.1.1**, **26.4.1.1.1**, **26.4.1.1.1.1** | Todo produto químico do canteiro | Organização | Enquanto o produto estiver em uso | — |
| **Laudo caracterizador da insalubridade**, disponível aos trabalhadores, aos sindicatos e à inspeção | NR-15 **15.4.1.3** — item **inserido pela Portaria MTE nº 2.021/2025, vigente desde 03/04/2026** | Quando houver exposição caracterizável | Organização | Permanente enquanto durar a exposição | — |
| **Laudo técnico de engenheiro de segurança ou médico do trabalho habilitado** (com descrição da técnica e da aparelhagem) | NR-15 **15.4.1.1**, **15.6** | Quando a eliminação/neutralização for impraticável | Eng. seg. trabalho ou médico do trabalho | Enquanto vigente a condição | — |
| **Avaliação pericial por órgão competente** comprovando eliminação/neutralização | NR-15 **15.4.1.2** | **Antes de cessar o pagamento do adicional** | Órgão competente | Por evento | — |
| **Laudo de inspeção do local de trabalho** (Anexos 7, 8, 9 e 10 — radiações não ionizantes, vibração, frio, umidade) | NR-15 **15.1.4** | Agentes caracterizados por inspeção do local | Perito | Por caracterização | — |
| **Laudo técnico de calor** (conteúdo mínimo "a"–"g", com certificados de calibração conforme NHO 06) | NR-15 Anexo 3, **item 3.1** | Ambiente fechado ou com fonte artificial de calor — o Anexo 3 **não se aplica** a céu aberto sem fonte artificial (**1.1.1**) | Eng. seg. trabalho / higienista | Por avaliação | — |
| **Laudo técnico de vibração** (conteúdo mínimo "a"–"h") | NR-15 Anexo 8, **item 2.5**; avaliação preliminar conforme item 4 do Anexo I da NR-09 | Uso de rompedor, martelete, maquinário | Eng. seg. trabalho / higienista | Por avaliação | — |
| **Procedimento de emergência específico para calor** | NR-09 Anexo III **6.1** | Exposição a calor | Organização | Permanente | — |
| **Comprovação, na manutenção de veículos, máquinas, equipamentos e ferramentas, das medidas de controle e redução da vibração** | NR-09 Anexo I **3.2** | Frota e ferramentas vibratórias | Organização / manutenção | Contínua | — |
| **Asbesto** — cadastro do estabelecimento (**item 7**, atualizado a cada **2 anos** — 7.5); avaliação ambiental de poeira em intervalos **≤ 6 meses** (item 11), registros por **mín. 30 anos** (11.1), resultado afixado em quadro de avisos (11.4); **plano de trabalho prévio** à remoção/demolição elaborado com a representação dos trabalhadores (item 8); exames do item 18 com guarda de **30 anos** (item 19) | NR-15 Anexo 12 — Asbesto | Reforma/demolição com telha, forro ou material contendo amianto | Organização | Conforme cada item | — |

### B.10 SESMT, CIPA e ergonomia

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| ▲ **Registro do SESMT em sistema eletrônico no portal gov.br**, com CPF, qualificação e registro profissional, grau de risco, nº de trabalhadores atendidos por estabelecimento e horário dos profissionais | NR-04 **4.6.1**, **4.6.1.1 "a"–"d"** | Quando a empresa se enquadra no **Anexo II da NR-04** (nº de trabalhadores × maior grau de risco entre a atividade principal do CNPJ e a preponderante do estabelecimento — 4.5.1) | Organização | **Atualizar a cada troca de profissional ou mudança de efetivo**; complementar em aumento temporário (4.5.6) | — |
| **Definição formal do coordenador do SESMT** e da modalidade adotada (individual, regionalizado, estadual ou compartilhado) | NR-04 **4.3.4**; **4.4.1**, **4.4.3**, **4.4.4**, **4.4.5** | Idem | Organização | Enquanto vigente | — |
| **Indicação do médico responsável pelo PCMSO** entre os médicos do SESMT | NR-04 **4.7.3**; NR-07 **7.4.1 "c"** | Quando houver médico no SESMT | Organização | Enquanto vigente | — |
| ⚠️ **Documentação da CIPA**: convocação da eleição, edital, comprovantes de inscrição, atas de eleição, apuração e posse, atas das reuniões ordinárias mensais assinadas | NR-05 **5.5.1**, **5.5.3 "a"–"c"**, **5.5.8**, **5.4.7**, **5.4.8**, **5.6.1**, **5.6.3**, **5.6.3.2**; construção: Anexo I **3.1** | **CIPA por canteiro** quando o efetivo se enquadra no Quadro I — em GR 3 e GR 4, a partir de **20 empregados no canteiro** | Empregador / comissão eleitoral | Mandato de **1 ano**, uma reeleição (5.4.6); convocação ≥ **60 dias** antes do fim do mandato; inscrição aberta ≥ **15 dias corridos**; eleição ≥ **30 dias** antes do fim do mandato. **Guarda mín. 5 anos** (5.9.2) | — |
| ⚠️ **Nomeação de representante da NR-05** | NR-05 Anexo I **3.1.1** (canteiro fora do Quadro I), **3.1.3** (**toda frente de trabalho**, qualquer efetivo), **3.2** e **3.2.2** (prestadora com 5+ empregados próprios no local — cobrança recai também sobre a responsável pela obra), **3.3.1** (obra ≤ 180 dias) | Conforme cada hipótese acima | Organização / prestadora | Enquanto vigente; treinamento mínimo de **8 h** com conteúdo específico (Anexo I 3.5.1) | — |
| **Envio da Comunicação Prévia ao sindicato** da categoria preponderante | NR-05 Anexo I **3.3** | **Obra de até 180 dias** (dispensada de CIPA) | Organização | **Em até 10 dias** do registro no SCPO | — |
| **Documento de encerramento da CIPA do canteiro**, formalizado pelo responsável técnico, com cópia ao sindicato | NR-05 Anexo I **3.7**, **3.7.1**, **3.7.2** | Ao concluir todas as etapas previstas em projeto | Responsável técnico | Por evento | — |
| **Relatório de AET — Análise Ergonômica do Trabalho** (etapas obrigatórias "a"–"f") | NR-17 **17.3.2 "a"–"d"**, **17.3.3** | **Quatro hipóteses**: avaliação mais aprofundada; inadequação/insuficiência das ações; sugerida pelo acompanhamento de saúde (PCMSO); causa relacionada apontada em análise de acidente/doença. As hipóteses "c" e "d" **não são dispensáveis** nem para ME/EPP de GR 1 e 2 (17.3.4.1) | Organização | **À disposição por 20 anos** (17.3.7) | — |
| **Planos de ação** para as medidas da avaliação preliminar e para as recomendações da AET | NR-17 **17.3.6 "a" e "b"** | Sempre que houver avaliação preliminar ou AET | Organização | Conforme cronograma do PGR | — |

### B.11 Outros regimes específicos

| Documento | NR e item | Quando é exigível | Responsável típico | Validade / periodicidade | Template |
|---|---|---|---|---|---|
| **TIE ou PRPM originais + Certificado de Segurança de Navegação (CSN)** | NR-18 **18.15.1** | Obra com plataforma flutuante | Proprietário da plataforma | CSN válido | — |
| **Documentação de ar comprimido / trabalho hiperbárico** — revisão preventiva **anual** da câmara, teste hidrostático a cada **5 anos**, teste do sistema de incêndio a cada **6 meses**; laudo de verificação estrutural da campânula a cada **5 anos** | NR-18 **18.17.6 "e"**, **18.17.8 "a"** | Obra com trabalho sob ar comprimido | PLH / profissional de saúde habilitado | Conforme cada prazo | — |
| **[PRÁTICA] ART/RRT dos projetos e laudos** | Sem item na NR-18 | A NR-18 exige "profissional legalmente habilitado", definido no Glossário como qualificado **com registro no conselho de classe**; a ART é a forma usual de comprovar isso, exigida pela legislação do Sistema CONFEA/CREA — **não** por item de NR | PLH autor | Por projeto/laudo | — |

---

## Bloco C — Registros contínuos (entregas, inspeções, treinamentos, eventos)

*O que a obra produz **todo dia**. É o bloco que mais some em fiscalização, porque depende de rotina
e não de contratação de projeto. Periodicidade detalhada em `./matriz-inspecoes-periodicidades.md`.*

| Registro | NR e item | Quando é exigível | Responsável típico | Periodicidade | Template / checklist |
|---|---|---|---|---|---|
| ⚠️ **Registro de fornecimento de EPI** — livros, fichas ou **sistema eletrônico, inclusive biométrico** | NR-06 **6.5.1 "d"**; sistema eletrônico deve permitir **extração de relatórios** **6.5.1.1** | Sempre | Organização | **A cada entrega**; substituição imediata do danificado ou extraviado (6.5.1 "g") | `../04-templates/controle-entrega-epi.md` |
| ⚠️ **Registro das informações prestadas no fornecimento do EPI** (descrição, risco protegido, **restrições e limitações de proteção**, uso e ajuste, manutenção e substituição, limpeza e guarda) | NR-06 **6.7.2 "a"–"f"**; treinamento quando o EPI o requeira **6.7.2.1** | Sempre que fornecer EPI | Organização | A cada fornecimento | `../04-templates/controle-entrega-epi.md` · `../04-templates/ficha-epi-por-funcao.md` |
| **Identificação de EPI descartável sem registro individual** (embalagem original, ou identificação, fabricante, lote, validade e **CA** expostos no local) | NR-06 **6.5.1.2**, **6.5.1.2.1** | PFF2, luva nitrílica, creme protetor | Organização | Permanente no local de fornecimento | — |
| ⚠️ **Certificados e registros de treinamento** (inicial, periódico, eventual), com avaliação de aprendizado | NR-01 **1.7.1.1** (conteúdo do certificado), **1.7.3** (entrega ao trabalhador + **cópia arquivada**), **1.7.4**, **1.7.6.1**; NR-18 **18.14.1**, **18.14.1.1**, **18.14.5**; básico **presencial** **18.14.3** | Sempre | Empregador / responsável técnico do treinamento | **Carga horária, conteúdo e periodicidade: ver `../05-treinamentos/requisitos-treinamento-por-nr.md`.** Cópia arquivada permanentemente na organização | — |
| **Logs de acesso, registro de realização e resultados das avaliações em EAD/semipresencial** | NR-01 Anexo II **4.7**; logs por **2 anos após o término da validade do curso** (**4.7.1**); projeto pedagógico validado a cada **2 anos** (**3.3**) | Treinamento a distância — conteúdo **prático** só a distância se a NR específica permitir (**1.7.9.1**) | Empregador ou instituição | Conforme acima | — |
| **Registro de DDS / diálogos de segurança e informação de riscos** | NR-01 **1.4.4** e **1.4.4.1 "a" e "b"** — as informações podem ser transmitidas em treinamentos ou por **diálogos de segurança, documento físico ou eletrônico** | Contínuo — na admissão e na mudança de função que altere risco | Encarregado / SESMT | **[PRÁTICA]** "DDS diário" não é termo da NR; o lastro do registro é o 1.4.4.1 | `../04-templates/dds-registro.md` |
| ⚠️ **Lista de verificação diária do equipamento de guindar**, dos dispositivos auxiliares de içamento e das plataformas de carga e descarga | NR-18 **18.10.1.32 "a", "b" e "c"** — a norma exige inspeções "realizadas **e registradas**" | Uso de equipamento de guindar | Operador; sinaleiro/amarrador; trabalhador capacitado e autorizado | **Diária** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Registro da vistoria pré-operacional diária do elevador de obra** | NR-18 **18.11.7 "d"** — registro **pelo operador**, antes do início dos serviços | Uso de elevador/cremalheira | Operador | **Diária** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| ⚠️ **Registro da inspeção diária dos escoramentos de escavação** | NR-18 **18.7.2.11** (inspeção **diária**; a norma **não** detalha forma de registro) | Escavação com escoramento | Responsável pela frente / PLH | **Diária** — **[PRÁTICA]** registrar em RDO/livro de obra | `../04-templates/checklists/checklist-escavacoes-fundacoes.md` |
| **Registro da verificação diária do andaime suspenso** (cabos, nivelamento) | NR-18 **18.12.23 "c"**; usuários e responsável treinados para a rotina **18.12.23.1** | Andaime suspenso | Usuários + responsável pela obra | **Diária, antes de iniciar os trabalhos** — registro **[PRÁTICA]** | `../04-templates/checklists/checklist-andaimes.md` |
| **Registro da inspeção semanal das redes de segurança** | NR-18 **18.9.4.4.5** | Uso de rede de segurança | Responsável designado | **Semanal** — registro **[PRÁTICA]** | `../04-templates/checklists/checklist-protecao-quedas.md` |
| **Registro da inspeção diária da PEMT** (local de trabalho) e da **inspeção visual e teste funcional** antes do uso diário ou no início de cada turno | NR-18 **18.12.37**, **18.12.38** | Uso de PEMT | Operador capacitado | **Diária / por turno** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| ⚠️ **Registro de inspeções do SPIQ** (iniciais, periódicas e rotineiras **que resultarem em recusa**) | NR-35 **35.6.6.4**; inicial **35.6.6.1**, rotineira **35.6.6.2**, periódica **35.6.6.3** | Sempre que houver SPIQ | Organização | Periódica **mín. a cada 12 meses**; descarte imediato do elemento após impacto de queda (**35.6.6.5**) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| **Inspeção do sistema de ancoragem** (inicial após instalação/alteração/mudança de local; periódica) | NR-35 Anexo II **4.1 "b"**, **4.1.1**, **4.1.2** | Sistema de ancoragem instalado | Organização | Periódica **não superior a 12 meses**. O Anexo II **exige a inspeção, não o registro** — registrar é **[PRÁTICA]** (o registro expresso da NR-35 está no **35.6.6.4**, para o SPIQ, e no Anexo I **4.3.3**, para acesso por cordas) | `../04-templates/checklists/checklist-trabalho-altura.md` |
| **Registro da inspeção de início de turno das máquinas** | NR-12 **12.14.2**; **o registro NÃO é obrigatório** (**12.14.2.1**) | Toda máquina | Operador | Por turno — **[PRÁTICA]** registrar como evidência; a obrigação normativa é **interromper** a atividade e comunicar o superior diante de anormalidade | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| **Registro de vistoria de ferramentas** (manuais, elétricas e pneumáticas) | NR-18 **18.10.2.3** — vistoria **antes de cada uso** | Sempre | Usuário | Antes de cada uso — registro **[PRÁTICA]** | `../04-templates/checklists/checklist-maquinas-canteiro.md` |
| **Registros de inspeção e controle periódico dos sistemas de proteção elétrica**; inspeção/teste dos equipamentos e ferramentas isolantes conforme fabricante; em AT, testes periódicos ou, na ausência de especificação, **anuais** | NR-10 **10.4.4**, **10.4.3.1**, **10.7.8** | Instalações e ferramental elétrico | Empregador / PLH | Conforme cada item | `../04-templates/checklists/checklist-eletrica-provisoria.md` |
| **Registro da inspeção permanente de cabos de aço, cordas, correntes, roldanas e ganchos** e de transportadores | NR-11 **11.1.3.1**, **11.1.8** | Equipamentos de movimentação | Responsável pelo equipamento | **Permanente**, com substituição imediata das partes defeituosas — registro **[PRÁTICA]** | `../04-templates/checklists/checklist-gruas-elevadores.md` |
| **Ata de reunião ordinária mensal da CIPA**, assinada pelos presentes, com deliberações divulgadas | NR-05 **5.6.1**, **5.6.3**, **5.6.3.2** | Canteiro com CIPA constituída | CIPA | **Mensal**; extraordinária **após acidente grave ou fatal** (5.6.4 "a"); guarda mín. **5 anos** (5.9.2) | — |
| ⚠️ **Análise documentada de acidentes, doenças relacionadas ao trabalho e eventos perigosos (quase-acidentes)** | NR-01 **1.5.5.5.1**, **1.5.5.5.1.1**, **1.5.5.5.2 "a"–"c"**; dever de determinar procedimentos incluindo a análise das causas **1.4.1 "e"** | **Por evento** | Organização / SESMT (**4.3.1 "i"**) | Por evento; é **gatilho de revisão** da avaliação de riscos (1.5.4.4.6 "d") e pode gerar **treinamento eventual** (1.7.1.2.3 "b") | — |
| **Comunicação escrita e imediata de acidente fatal ao órgão regional** + isolamento do local | NR-18 **18.16.23**, **18.16.23 "a"** | Acidente fatal | Organização | **Imediata**; o local só é liberado pelo órgão em até 72 h | — |
| **CAT, afastamento e encaminhamento à Previdência**; reavaliação de riscos e medidas no PGR | NR-07 **7.5.19.5**; informação ao responsável pelo PGR **7.5.19.4** | Doença relacionada ao trabalho constatada ou agravada | Organização / médico | Por evento | — |
| **Registro da implementação das medidas do plano de ação e respectivos ajustes** | NR-01 **1.5.5.3.1**; acompanhamento com participação da CIPA **1.5.5.3.2 "d"** | Sempre | Organização | **Contínuo** | — |
| **Evidências do exercício simulado de emergência** | NR-01 **1.5.6.3**, **1.5.6.3.1**; espaço confinado: simulado **anual** (NR-33 **33.3.6 "b"**) | Sempre | Organização | Periodicidade definida no próprio procedimento (NR-01); anual (NR-33) | — |
| **Registro da orientação e dos treinamentos periódicos sobre calor** | NR-09 Anexo III **3.1.1** (orientação) e **3.1.2** (treinamentos periódicos **anuais**, quando indicados nas medidas de prevenção) | Exposição a calor | Organização | Anual, quando indicado | — |
| **Registro do treinamento sobre rótulo, FDS, perigos, uso seguro e emergência com produto químico** | NR-26 **26.5.2 "a" e "b"** — a NR-26 **não fixa carga horária nem periodicidade** | Quem utiliza ou manuseia produto químico | Organização | Dimensionamento e registro pelas regras gerais da NR-01 (cap. 1.7) — ver `../05-treinamentos/requisitos-treinamento-por-nr.md` | `../04-templates/dds-registro.md` **[PRÁTICA]** |
| **Registro de higienização diária dos módulos sanitários da frente de trabalho** e do alojamento | NR-18 **18.5.7 "a"**; NR-24 **24.7.8**, **24.7.9** | Frente de trabalho e alojamento | Organização | **Diária** — registro **[PRÁTICA]** | `../04-templates/checklists/checklist-areas-vivencia.md` |
| **APR — análise preliminar de risco por tarefa** | **[PRÁTICA]** — o formulário "APR" não é nomeado por nenhuma NR desta base. O lastro normativo por atividade é: NR-35 **35.5.5**, NR-18 **18.10.1.18/18.10.1.19** e **18.7.6.2**, NR-12 **12.14.1**, NR-01 **1.5.4** | Por tarefa de risco | Frente de serviço / SESMT | Por tarefa | `../04-templates/apr-analise-preliminar-risco.md` |

---

## Prazos de guarda — consolidado

*Erro clássico: descartar tudo junto com o PGR. Os prazos são diferentes e alguns são muito longos.*

| Documento | Prazo mínimo de guarda | NR e item |
|---|---|---|
| Registros de avaliação ambiental de **asbesto** e exames de controle pós-contrato | **30 anos** | NR-15 Anexo 12, itens **11.1** e **19** |
| **Histórico das atualizações do inventário de riscos** | **20 anos** | NR-01 **1.5.7.3.3.1** |
| **Prontuário médico individual** (após o desligamento) | **20 anos** | NR-07 **7.6.1.1** |
| **Relatório de AET** | **20 anos** | NR-17 **17.3.7** |
| **Documentação da CIPA** | **5 anos** | NR-05 **5.9.2** |
| **PETs de espaço confinado emitidas** | **5 anos** | NR-33 **33.5.9** |
| **Toda a documentação da NR-35** (AR, PT, autorizações, inspeções) | **5 anos**, salvo disposição específica em outra NR | NR-35 **35.3.1 "j"** |
| **Logs de acesso de treinamento EAD** | **2 anos após o término da validade do curso** | NR-01 Anexo II **4.7.1** |
| **Certificados de treinamento** (cópia arquivada) | Sem prazo fixado — arquivo **permanente** na organização | NR-01 **1.7.3** |

---

## Onde o guia fundamenta cada ⚠️

O `../00-guia-interdicao/guia-interdicao.md` sustenta as marcas ⚠️ nestes três lugares:

- **§2.4 — "Documentos que a obra deve ter à mão"**: Comunicação Prévia (18.3.1 "b"), PGR (18.4.1/18.4.2),
  inventário + plano de ação (1.5.7.1), PGR atualizado por etapa (18.4.3.1), projetos anexos (18.4.3 "a"–"e"),
  inventário das contratadas (18.4.4), PCMSO e ASO (7.5.1 / 7.5.19), ordens de serviço (1.4.1 "c"),
  registro de fornecimento de EPI (6.5.1 "d"), registros de capacitação (18.14), autorização de altura
  (35.4.1 / 35.4.1.3), AR e PT (35.3.1 "b" / 35.5.5), laudo elétrico (18.6.7), liberação de andaime (18.12.4),
  projeto de andaime (18.12.2), termo de entrega técnica da grua (18.10.1.39), manuais e capacitação de
  operadores (12.16.1 / 12.16.2).
- **§3 — ranking das situações que mais embargam**: proteção contra quedas e SPQ (posições 1 e 2), andaime (3),
  escavação (4), máquina sem proteção (5), elétrica provisória (6), grua/elevador (7), áreas de vivência (8),
  espaço confinado sem PET (9), documental (10) e EPI (11).
- **§6 — checklist "o fiscal chegou"**, item 5 ("separar a pasta da obra em minutos") e item 6
  (varredura das cinco frentes que mais param obra).

**Marcas ▲** (autuáveis de imediato segundo as fichas, mas fora do rol do guia): esquemas unifilares
(NR-10 10.2.3), Prontuário de Instalações Elétricas acima de 75 kW (NR-10 10.2.4), registro do SESMT no
gov.br (NR-04 4.6.1), cartões de identificação de operador (NR-11 11.1.6 e NR-12 12.16.10).

---

## Notas de resolução de divergências entre fichas

1. **Grua × NR-11.** A `ficha-NR-11` (§7) apresenta a NR-11 como "base geral" para gruas e elevadores de
   canteiro, enquanto a `ficha-NR-18` (§8) e o guia (nota 7.3) afirmam que a NR-18 **não cita a NR-11** e que
   gruas não são matéria da NR-11. **Resolvido pelo texto oficial:** `grep` em
   `../01-nrs-texto-oficial/prioridade-1/NR-11/NR-11.md` **não retorna nenhuma ocorrência de "grua"**, e
   `NR-18.md` **não retorna nenhuma ocorrência de "NR-11"**. Por outro lado, a NR-11 **11.1.1** trata
   expressamente de "poços de **elevadores** e monta-cargas" e o **11.1** abrange "elevadores de carga,
   guindastes, monta-carga, pontes-rolantes, talhas, empilhadeiras". **Critério adotado nesta matriz:** para
   **grua**, citar exclusivamente a NR-18 (18.10.1.x); para **elevador de obra, monta-carga e demais
   equipamentos de elevação**, a NR-11 aplica-se como norma geral (cercamento de poço 11.1.1/11.1.2, carga
   máxima visível 11.1.3.2, inspeção de cabos 11.1.3.1, operador com cartão 11.1.5/11.1.6) **somada** aos
   requisitos específicos de canteiro da NR-18 (18.11.x).
2. **Bebedouro: 1/25 ou 1/50?** `ficha-NR-24` indica **1 para cada 50** (NR-24 24.9.1.1) e `ficha-NR-18`
   indica **1 para cada 25** (NR-18 18.5.6). **Não é divergência, é precedência:** conferido no texto oficial
   (`NR-24.md` linha 404 e `NR-18.md` linha 187), ambos os números existem. No canteiro **prevalece a NR-18
   (1/25)**, por força do 18.5.2 ("no que for cabível"). Mesma lógica para chuveiro (NR-18 1/10 incondicional
   × NR-24 1/10 ou 1/20 conforme a atividade).
3. **Oxigênio: 18% ou 19,5%?** `ficha-NR-15` usa **18%** (Anexo 11, item 3 — risco grave e iminente na
   presença de asfixiantes simples) e `ficha-NR-33` usa a faixa **19,5% a 23%** (33.5.15.2 — condição de
   entrada em espaço confinado). **São critérios distintos, com finalidades distintas**, e ambas as fichas já
   registram a ressalva. Para **liberar entrada**, vale a NR-33.
4. **Aterramento — semestral só para grua.** `ficha-NR-18` lista laudo de aterramento tanto para grua
   (18.10.1.23 "h") quanto para elevadores (18.11.7 "h"). Conferido no texto oficial: **apenas o da grua traz
   "atualizado semestralmente"**; o item de elevadores (18.11.7 "h") exige o laudo **sem fixar periodicidade**.
   Esta matriz e a de inspeções refletem essa diferença.
5. **"Prontuário NR-12" não existe.** A `ficha-NR-12` alerta que o termo não consta da norma. Esta matriz não
   usa a expressão: o que a NR-12 exige é a **relação de máquinas (12.18.1)**, o **manual (12.13)**, o
   **registro de manutenções (12.11.2)** e os **procedimentos (12.14.1)**. O **prontuário** que existe é o de
   **instalações elétricas** (NR-10, 10.2.4), com o limiar de **75 kW**.
6. **Quem lavra o embargo.** O guia (§1.3) registra divergência entre NR-03 **3.2.2.3.1** (o AFT adota) e
   NR-28 **28.2.1** (o agente propõe à autoridade regional, redação de 1992). Preservada como está no guia —
   esta matriz não decide a questão, apenas remete a ele.
7. **Riscos psicossociais no PGR.** A `ficha-NR-01` registra divergência **dentro do próprio texto oficial**
   (Anexo I marca vigência em 26/05/2025; cabeçalho do capítulo 1.5 marca 26/05/2026). Em qualquer leitura,
   **já é exigível nesta data (2026-08-19)** — mantido assim nesta matriz (linha do inventário de riscos).
