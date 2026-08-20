---
tipo: instrução
subtipo: modelo-de-estrutura
titulo: "Modelo de estrutura de deck de treinamento — exemplo trabalhado: NR-35 (inicial, 8 h)"
formato: "Markdown descritivo — NÃO é HTML. É o roteiro slide a slide que o agente segue antes de escrever código."
publico_alvo: "Agentes de IA que gerarão decks HTML de treinamento SST"
data: 2026-08-19
idioma: pt-BR
documentos_irmaos:
  - ./requisitos-treinamento-por-nr.md   # de onde vêm cargas horárias, conteúdos e itens
  - ./instrucoes-slides-html.md          # requisitos técnicos, de linguagem e de conformidade
fonte_do_exemplo:
  nr: NR-35
  titulo: Trabalho em Altura
  arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-35/NR-35.md
  versao: Portaria MTE nº 1.259, de 15/07/2026
  itens_base:
    - "35.4.2.1 — treinamento inicial: carga horária mínima de 8 h + conteúdo programático (alíneas a a g)"
    - "35.4.2.2 — treinamento periódico: 8 h a cada 2 anos"
    - "35.4.2 — capacitação envolve treinamento teórico E prático"
    - "35.4.3 — instrutores com comprovada proficiência"
    - "35.4.5 — treinamentos devem ser realizados na modalidade presencial"
    - "35.4.1 a 35.4.1.3.1 — autorização formal do trabalhador"
    - "35.4.4 e 35.4.4.1 — aptidão de saúde e registro no ASO"
    - "35.7.3.1 — capacitação da equipe interna de emergência: conteúdo e carga definidos pela organização"
aviso: >-
  Este arquivo é um MODELO DE ESTRUTURA, não um deck pronto e não um treinamento. Os textos
  entre colchetes são placeholders a preencher com dados reais do canteiro, fornecidos pelo
  usuário. Nenhum número de carga horária pode ser alterado sem conferência no texto oficial.
---

# Modelo de estrutura de deck — exemplo trabalhado: NR-35 inicial

## Por que NR-35 como exemplo

A NR-35 é o melhor caso-modelo da base porque concentra, num único treinamento, todos os
mecanismos que qualquer outro deck vai precisar tratar:

- **carga horária fixada em norma** (8 h inicial, 8 h a cada 2 anos) — logo o deck precisa dizer
  quanto cobre e quanto não cobre;
- **parte prática obrigatória** `[35.4.2]` — o deck não pode substituí-la;
- **presencialidade obrigatória** `[35.4.5]` — o deck não é EAD;
- **conteúdo programático fechado em 7 alíneas** `[35.4.2.1 "a" a "g"]` — mapeamento 1:1 com
  módulos;
- **exigências de autorização e aptidão** que não são "conteúdo", mas precisam aparecer;
- **remissão à NR-01** para o treinamento eventual, o certificado e o aproveitamento.

## Como adaptar este modelo para outra NR

O esqueleto é sempre o mesmo. Só muda o miolo (Bloco 3):

| Bloco | Muda entre NRs? | O que fazer |
|---|---|---|
| **Bloco 1 — Abertura e conformidade** (slides 1–4) | Não, só os dados | Trocar norma, itens, carga, modalidade |
| **Bloco 2 — Contexto da obra** (slides 5–6) | Não, só os dados | Trocar riscos e fotos do canteiro |
| **Bloco 3 — Conteúdo programático** | **Sim, integralmente** | Um módulo por alínea/bloco da NR; ≥ 1 slide-resumo por item |
| **Bloco 4 — Emergência e primeiros socorros** | Depende | Só se a NR listar (NR-35 "g"; NR-33 "XI"; NR-10 blocos 12 e 14; NR-18 impermeabilização "IV") |
| **Bloco 5 — Registro, reciclagem e avaliação** | Não, só os dados | Trocar periodicidade e gatilhos específicos |

Exemplos de substituição do Bloco 3:

- **NR-18 básico (4 h)** → 5 módulos = incisos I a V de `[NR-18 Anexo I 2.1 "a"]`;
- **NR-33 vigia (16 h)** → 5 módulos = incisos I a V de `[NR-33 Anexo III 2.1 "b"]`;
- **NR-33 supervisor de entrada (40 h)** → 12 módulos = incisos I a XII de `[Anexo III 2.1 "a"]`;
- **NR-10 básico (40 h)** → 15 módulos = blocos 1 a 15 de `[NR-10 Anexo III item 1]`;
- **NR-12 operação de máquinas** → 9 módulos = alíneas "a" a "i" de `[NR-12 Anexo II item 1]`;
- **NR-05 CIPA** → 8 módulos = alíneas "a" a "h" de `[NR-05 5.7.2]`.

## Convenção de leitura da tabela de slides

Cada linha traz: **título do slide → conteúdo → item da norma coberto**. A coluna "Item coberto"
é o que vai no rodapé do slide no HTML `[ver instrucoes-slides-html.md, C.1]`. Slides sem item
de norma trazem apenas a versão da portaria e a numeração.

---

# Estrutura do deck — NR-35, treinamento inicial (8 h)

**Total: 34 slides.** Cobre a parte teórica. Não cobre a parte prática nem substitui o instrutor.

---

## BLOCO 1 — Abertura e conformidade (slides 1 a 4)

### Slide 1 — Identificação do treinamento

**Conteúdo:** cartão de identificação espelhando os campos do certificado.

```
TRABALHO EM ALTURA — NR-35
Treinamento INICIAL

Norma:                NR-35 — Trabalho em Altura
Versão:               Portaria MTE nº 1.259, de 15/07/2026
Carga horária:        8 horas (mínima)          → item 35.4.2.1
Modalidade:           PRESENCIAL (obrigatório)  → item 35.4.5
Tipo:                 Inicial — antes de iniciar a atividade → item 35.4.2.1
Público-alvo:         [FUNÇÕES — a preencher]
Obra / local:         [OBRA E ENDEREÇO — a preencher]
Data:                 [DATA — a preencher]
Instrutor:            [NOME E QUALIFICAÇÃO — a preencher]  → item 35.4.3
Responsável técnico:  [NOME E ASSINATURA — a preencher]    → NR-01 item 1.7.1.1
Próxima reciclagem:   [DATA + 2 anos]                       → item 35.4.2.2
```

**Item coberto:** NR-35 35.4.2.1, 35.4.2.2, 35.4.3, 35.4.5 · NR-01 1.7.1.1

> **Regra:** todo campo `[a preencher]` fica visualmente destacado. Nunca preencher com nome
> fictício — os campos vêm do certificado obrigatório da NR-01.

---

### Slide 2 — O que este material é e o que não é

**Conteúdo:** aviso de escopo, em caixa destacada.

- Este deck é **material de apoio**. Não substitui o **instrutor** `[35.4.3]`.
- **Não substitui a parte prática** — a capacitação em altura envolve treinamento **teórico E
  prático** `[35.4.2]`.
- Não emite certificado. O certificado é da organização e exige assinatura do trabalhador e do
  responsável técnico `[NR-01 1.7.1.1]`.
- Em qualquer divergência, **prevalece o PDF oficial da NR-35 no gov.br**.

**Item coberto:** NR-35 35.4.2, 35.4.3 · NR-01 1.7.1.1

---

### Slide 3 — Presencial e prático: por que não dá para fazer isso pelo celular

**Conteúdo:** slide dedicado à exigência de modalidade — obrigatório para NR-35.

- **"Os treinamentos previstos nesta NR devem ser realizados na modalidade presencial."**
  `[35.4.5]` (inserido pela Portaria MTE nº 1.259, de 15/07/2026).
- Trabalhador capacitado = **aprovado** em processo que envolve treinamento **teórico e prático**
  `[35.4.2]`.
- Regra-mãe: o conteúdo prático só pode ser EAD **se previsto em NR específica**
  `[NR-01 1.7.9.1]` — e a NR-35 **não** prevê.
- Consequência prática: **material de altura em EAD produzido antes de 2026 não vale como
  treinamento**.

**Item coberto:** NR-35 35.4.5, 35.4.2 · NR-01 1.7.9.1

---

### Slide 4 — Quem pode trabalhar em altura

**Conteúdo:** a "trinca" da autorização, em três blocos visuais.

Para subir, o trabalhador precisa das três coisas juntas:

1. **Capacitado** — fez e foi **aprovado** no treinamento `[35.4.2]`;
2. **Apto** — estado de saúde avaliado e considerado apto `[35.4.1.1]`, com a **aptidão para
   trabalho em altura consignada no ASO** `[35.4.4.1]`;
3. **Autorizado** — **formalmente** autorizado pela organização `[35.4.1]`, considerando as
   atividades que vai desenvolver, a capacitação recebida e a aptidão clínica
   `[35.4.1.2 "a" "b" "c"]`.

Complementos:
- A autorização é **consignada nos documentos funcionais** do empregado `[35.4.1.3]`;
- A organização mantém **sistema de identificação** que permita saber, a qualquer momento, **até
  onde vai** a autorização de cada trabalhador `[35.4.1.3.1]`.

**Item coberto:** NR-35 35.4.1, 35.4.1.1, 35.4.1.2, 35.4.1.3, 35.4.1.3.1, 35.4.2, 35.4.4.1

---

## BLOCO 2 — Contexto da obra (slides 5 e 6)

> Estes dois slides são os que **individualizam** o deck. Sem eles, o material é genérico — e
> deck genérico não atende `[NR-01 Anexo II 4.6.3]` (avaliação com situações práticas da rotina
> laboral) nem `[NR-33 Anexo III 2.2]` (situações similares às do local de trabalho, quando
> houver interface com espaço confinado).

### Slide 5 — Onde se trabalha em altura NESTA obra

**Conteúdo:** mapa/foto do canteiro com os pontos de trabalho em altura marcados.

- `[FOTO/PLANTA DA OBRA — placeholder marcado]`
- Lista dos locais: `[ex.: periferia de laje, poço do elevador, fachada, andaime fachadeiro,
  cobertura, escada de acesso ao 5º pavimento]`
- Para cada local: qual é a proteção existente hoje `[a preencher com o usuário]`

**Item coberto:** — (contextualização; dá suporte a 35.4.2.1 "b" e "c")

---

### Slide 6 — O que já aconteceu aqui

**Conteúdo:** acidentes e quase-acidentes reais da obra ou da empresa, anonimizados.

- `[RELATO 1 — a preencher com o usuário]`
- `[RELATO 2 — a preencher com o usuário]`
- Pergunta de abertura para o instrutor: "o que faltou?"

> **Se o usuário não fornecer, deixar como placeholder marcado.** Não usar caso de outra obra
> como se fosse desta.

**Item coberto:** — (prepara o módulo 6, alínea "f" — acidentes típicos)

---

## BLOCO 3 — Conteúdo programático `[NR-35 35.4.2.1]` (slides 7 a 28)

> **Mapeamento obrigatório:** 7 alíneas da norma → 7 módulos. Cada módulo abre com um
> **slide-resumo** que cita a alínea. Sem esse slide-resumo, a alínea não está coberta.

---

### MÓDULO 1 — Normas e regulamentos aplicáveis ao trabalho em altura `[35.4.2.1 "a"]`

#### Slide 7 — **[SLIDE-RESUMO da alínea "a"]** — As regras que valem aqui em cima

**Conteúdo:** o que rege o trabalho em altura, em linguagem direta.

- **NR-35** — a norma do trabalho em altura. Vale para **toda** atividade com diferença de nível
  **acima de 2,0 m** do nível inferior onde haja risco de queda `[NR-35 35.2.1 — campo de aplicação]`;
- **NR-18** — a norma da construção; traz capacitações próprias com carga fixada
  `[NR-18 18.14.1.1]`;
- **NR-06** — EPI: a empresa fornece, orienta e treina `[NR-06 6.5.1 "b"]`;
- **NR-01** — a norma-quadro dos treinamentos: inicial, periódico, eventual e certificado
  `[NR-01 1.7]`;
- Procedimentos internos da obra: `[PT / AR / plano de resgate — a preencher]`.

**Item coberto:** NR-35 35.4.2.1 "a"

#### Slide 8 — Hierarquia: primeiro é não subir

**Conteúdo:** a ordem obrigatória de decisão no planejamento `[35.5.2]`.

1. **Evitar** o trabalho em altura, sempre que existir meio alternativo `[35.5.2 "a"]`;
2. **Eliminar** o risco de queda, se não der para evitar o trabalho `[35.5.2 "b"]`;
3. **Minimizar as consequências** da queda, quando o risco não puder ser eliminado
   `[35.5.2 "c"]`.

Mais: todo trabalho em altura deve ser **planejado e organizado** `[35.5.1]` e realizado **sob
supervisão**, cuja forma é definida pela AR `[35.5.3]`.

**Item coberto:** NR-35 35.4.2.1 "a" · 35.5.1, 35.5.2, 35.5.3

---

### MÓDULO 2 — AR e condições impeditivas `[35.4.2.1 "b"]`

#### Slide 9 — **[SLIDE-RESUMO da alínea "b"]** — Análise de Risco (AR): o que é

**Conteúdo:**
- **AR** = avaliação dos riscos potenciais, suas causas, consequências e medidas de controle
  `[NR-35, Glossário — verbete Análise de Risco]`;
- Feita **antes** do serviço, não durante;
- A AR define inclusive **como será a supervisão** do trabalho `[35.5.3]`;
- Deve considerar as **influências externas** que possam alterar as condições do local já
  previstas na AR `[35.5.4]`.

**Item coberto:** NR-35 35.4.2.1 "b" · 35.5.3, 35.5.4 · Glossário

#### Slide 10 — Condições impeditivas: quando você NÃO sobe

**Conteúdo:** lista visual, em linguagem de obra.

- `[LISTA DE CONDIÇÕES IMPEDITIVAS DEFINIDAS NA AR DA OBRA — a preencher com o usuário]`
- Exemplos típicos a validar com o usuário: vento, chuva, tempestade com raios, iluminação
  insuficiente, ponto de ancoragem não liberado, equipamento reprovado na inspeção, trabalhador
  sem autorização, sem ASO válido ou sem condições de saúde no dia.
- **Regra de ouro para o trabalhador:** na dúvida, não sobe. Chama o supervisor.

Reforço normativo: cabe à organização **assegurar a suspensão dos trabalhos em altura** quando
verificar situação ou condição de risco não prevista, cuja eliminação ou neutralização imediata
não seja possível `[NR-35 35.3.1 "h"]`; e garantir que **qualquer trabalho em altura só se inicie
depois de adotadas as medidas de prevenção** `[NR-35 35.3.1 "g"]`.

**Item coberto:** NR-35 35.4.2.1 "b" · 35.3.1 "g" e "h"

#### Slide 11 — A AR desta obra, na prática

**Conteúdo:** reprodução (ou foto) da AR real da atividade que a turma executa.

- `[AR REAL DA ATIVIDADE — placeholder marcado]`
- Leitura guiada pelo instrutor: risco → causa → consequência → medida de controle.

**Item coberto:** NR-35 35.4.2.1 "b"

---

### MÓDULO 3 — Riscos e medidas de prevenção e controle `[35.4.2.1 "c"]`

#### Slide 12 — **[SLIDE-RESUMO da alínea "c"]** — O que pode dar errado lá em cima

**Conteúdo:** os riscos do trabalho em altura, com pictogramas.

- **Queda de nível diferente** — o risco principal;
- **Queda de materiais e ferramentas** sobre quem está embaixo;
- **Riscos adicionais** — "todos os demais grupos ou fatores de risco, além dos existentes no
  trabalho em altura" `[NR-35, Glossário — verbete Riscos adicionais]`: energia elétrica, espaço
  confinado, calor, ruído, produtos químicos, movimentação de cargas;
- Riscos deste canteiro: `[a preencher com o usuário]`.

**Item coberto:** NR-35 35.4.2.1 "c" · Glossário

#### Slide 13 — Medidas de prevenção e controle

**Conteúdo:** o que a obra faz para evitar a queda, na ordem da hierarquia (slide 8).

- Eliminar / evitar: `[exemplos da obra]`
- Proteção coletiva: guarda-corpo, rodapé, fechamento de aberturas, plataformas
- Proteção individual: cinto tipo paraquedista + talabarte + trava-quedas + ponto de ancoragem
- Organização: PT, AR, supervisão, isolamento e sinalização da área abaixo

**Item coberto:** NR-35 35.4.2.1 "c"

#### Slide 14 — Cuidado com o que cai junto

**Conteúdo:** queda de materiais.

- Ferramentas com **amarração** que impeça queda acidental — exigência expressa para montagem e
  desmontagem de andaimes `[NR-18 18.12.6 "c"]`;
- **Isolamento e sinalização** da área `[NR-18 18.12.6 "d"]`;
- Área sob carga suspensa: manter isolamento e sinalização `[NR-18 18.10.1.21]`.

**Item coberto:** NR-35 35.4.2.1 "c" · NR-18 18.12.6 "c" e "d", 18.10.1.21

---

### MÓDULO 4 — Proteção coletiva `[35.4.2.1 "d"]`

#### Slide 15 — **[SLIDE-RESUMO da alínea "d"]** — Proteção coletiva vem primeiro

**Conteúdo:** sistemas, equipamentos e procedimentos de proteção coletiva.

- Guarda-corpo e rodapé; fechamento de aberturas de piso; plataformas de proteção; redes de
  segurança; linhas de vida horizontais coletivas;
- **Por que primeiro:** protege todo mundo, não depende de o trabalhador lembrar de se prender,
  e está acima do EPI na hierarquia `[35.5.2 "b"]`.

**Item coberto:** NR-35 35.4.2.1 "d" · 35.5.2

#### Slide 16 — Andaimes e plataformas nesta obra

**Conteúdo:** o que a obra usa e quem pode mexer.

- Montagem e desmontagem de andaimes: **por trabalhadores capacitados com treinamento específico
  para o tipo de andaime utilizado**, com SPIQ, ferramentas amarradas, isolamento e sinalização
  `[NR-18 18.12.6 "a" a "d"]`;
- Andaimes devem ter **registro formal de liberação de uso** assinado por profissional qualificado
  em segurança do trabalho ou pelo responsável pela frente de trabalho ou da obra
  `[NR-18 18.12.4]`;
- Superfície de trabalho: resistente, forração completa, antiderrapante, nivelada, com travamento
  `[NR-18 18.12.5]`;
- **Andaime suspenso**: usuários e o responsável pela verificação devem receber **treinamento e
  os procedimentos** para a rotina de verificação diária `[NR-18 18.12.23.1]`.

> ⚠️ Se a turma vai montar andaime ou usar cadeira suspensa, **isso é outro treinamento**, com
> carga própria no Quadro 1 do Anexo I da NR-18 (cadeira suspensa: 16 h, sendo ≥ 8 h práticas;
> reciclagem 8 h/anual). Este deck de NR-35 **não** cobre.

**Item coberto:** NR-35 35.4.2.1 "d" · NR-18 18.12.4, 18.12.5, 18.12.6, 18.12.23.1

---

### MÓDULO 5 — EPI para trabalho em altura `[35.4.2.1 "e"]`

> Esta alínea tem 4 verbos na norma — **seleção, inspeção, conservação e limitação de uso** — e
> por isso rende 4 slides, um por verbo, além do slide-resumo.

#### Slide 17 — **[SLIDE-RESUMO da alínea "e"]** — Seu EPI de altura

**Conteúdo:** o conjunto completo, com pictogramas: cinto tipo paraquedista, talabarte (simples,
em Y, com absorvedor de energia), trava-quedas, capacete com jugular, ponto de ancoragem.

Definição a citar: **absorvedor de energia** = elemento com função de limitar a força de impacto
transmitida ao trabalhador pela dissipação da energia cinética `[NR-35, Glossário]`.

**Item coberto:** NR-35 35.4.2.1 "e"

#### Slide 18 — Seleção: o EPI certo para a tarefa

**Conteúdo:**
- O EPI deve ser adequado **ao risco** — a organização fornece gratuitamente EPI adequado ao
  risco, em perfeito estado de conservação e funcionamento `[NR-06 6.5.1 "c"]`;
- **Só EPI com CA** (Certificado de Aprovação) `[NR-06 6.5.1 "a"]`;
- A empresa deve **orientar e treinar** o empregado `[NR-06 6.5.1 "b"]`.

**Item coberto:** NR-35 35.4.2.1 "e" · NR-06 6.5.1 "a" "b" "c"

#### Slide 19 — Inspeção: olhar antes de vestir

**Conteúdo:** checklist visual — fitas, costuras, mosquetões, travas, etiqueta e CA legíveis,
data de fabricação, sinais de impacto anterior.

Base normativa da informação obrigatória `[NR-06 6.7.2]`: descrição do equipamento e componentes
("a"), risco contra o qual protege ("b"), **restrições e limitações de proteção** ("c"), forma
adequada de uso e ajuste ("d"), manutenção e substituição ("e"), limpeza, higienização, guarda e
conservação ("f").

**Item coberto:** NR-35 35.4.2.1 "e" · NR-06 6.7.2 "a" a "f"

#### Slide 20 — Conservação e guarda

**Conteúdo:** limpeza, higienização, guarda e conservação `[NR-06 6.7.2 "f"]`; onde guardar nesta
obra `[a preencher]`; manutenção e substituição `[NR-06 6.7.2 "e"]`.

**Item coberto:** NR-35 35.4.2.1 "e" · NR-06 6.7.2 "e" e "f"

#### Slide 21 — Limitação de uso: quando o EPI já não serve

**Conteúdo:** o EPI que sofreu impacto sai de uso; validade; restrições e limitações de proteção
`[NR-06 6.7.2 "c"]`; o que fazer quando reprovar na inspeção `[procedimento da obra — a preencher]`.

**Item coberto:** NR-35 35.4.2.1 "e" · NR-06 6.7.2 "c"

#### Slide 22 — Ancoragem: onde prender

**Conteúdo:**
- **Ancoragem estrutural** = elemento fixado de forma permanente na estrutura, no qual um
  dispositivo de proteção individual é conectado `[NR-35, Glossário]`;
- **Sistema de ancoragem temporário**: os pontos de fixação devem ser definidos por profissional
  legalmente habilitado **ou** selecionados por trabalhador capacitado, conforme procedimento de
  seleção elaborado por profissional legalmente habilitado `[NR-35, Anexo II — Sistemas de
  Ancoragem, item 4.2 "b"]`; cabe à organização **autorizar formalmente** o trabalhador capacitado
  para essa seleção `[NR-35, Anexo II, item 4.2.1]`;
- **Sistema de ancoragem permanente**: deve possuir projeto, com instalação sob responsabilidade
  de profissional legalmente habilitado `[NR-35, Anexo II, item 4.3]`;
- **Inspeção periódica** do sistema de ancoragem: periodicidade **não superior a 12 (doze) meses**
  `[NR-35, Anexo II, item 4.1.2]`;
- Pontos liberados nesta obra: `[a preencher — foto e localização]`.

**Item coberto:** NR-35 35.4.2.1 "e" · Anexo II (Ancoragem) 4.1.2, 4.2 "b", 4.2.1, 4.3 · Glossário

#### Slide 23 — Escada de uso individual

**Conteúdo:** obrigatório quando a obra usa escada de mão como acesso ou posto de trabalho.

- Quem usa escada de uso individual como **meio de acesso ou como posto de trabalho** deve ser
  capacitado conforme o **capítulo 35.4** `[NR-35, Anexo III — Escadas, item 4.2.1]`;
- A capacitação **deve incluir a utilização segura da escada de uso individual**
  `[NR-35, Anexo III — Escadas, item 4.2.1.1]`;
- Escada fixa vertical de uso individual: só em caso de **comprovada inviabilidade técnica** de
  outros meios de acesso `[NR-35, Anexo III — Escadas, item 4.1.2.1]`;
- A escada deve ser certificada conforme normas técnicas, ou fabricada conforme normas técnicas
  sob responsabilidade de profissional legalmente habilitado, ou projetada por profissional
  legalmente habilitado `[NR-35, Anexo III — Escadas, item 5.1.1 "a" "b" "c"]`.

**Item coberto:** NR-35 35.4.2.1 "e" · Anexo III (Escadas) 4.1.2.1, 4.2.1, 4.2.1.1, 5.1.1

---

### MÓDULO 6 — Acidentes típicos `[35.4.2.1 "f"]`

#### Slide 24 — **[SLIDE-RESUMO da alínea "f"]** — Acidentes típicos em trabalho em altura

**Conteúdo:** os padrões que se repetem, com pictograma cada:

- Queda por **borda desprotegida** (laje sem guarda-corpo);
- Queda por **abertura de piso** não fechada;
- Queda por **ruptura ou desprendimento** de plataforma/andaime;
- Queda por **não estar preso** — talabarte solto no deslocamento;
- Queda por **ponto de ancoragem inadequado**;
- **Queda de material** sobre quem está embaixo;
- **Síndrome da suspensão inerte** — ficar pendurado após a queda (liga ao módulo 7).

Caso real da obra: `[RELATO — a preencher; retomar o slide 6]`.

**Item coberto:** NR-35 35.4.2.1 "f"

#### Slide 25 — Análise de um caso, passo a passo

**Conteúdo:** um acidente destrinchado — o que foi visto, o que faltou, qual medida de controle
teria evitado. Amarra ao módulo 2 (AR) e ao módulo 3 (medidas).

- `[CASO REAL OU CASO FORNECIDO PELO USUÁRIO — placeholder marcado]`

**Item coberto:** NR-35 35.4.2.1 "f"

---

### MÓDULO 7 — Emergência, resgate e primeiros socorros `[35.4.2.1 "g"]`

#### Slide 26 — **[SLIDE-RESUMO da alínea "g"]** — Condutas em situações de emergência

**Conteúdo:** o que fazer nos primeiros minutos.

- A organização deve assegurar que a equipe possua **os recursos necessários** para as respostas
  às emergências `[35.7.2]`;
- Quem responde nesta obra: `[EQUIPE E TELEFONES — a preencher]`;
- **Nunca** improvisar resgate sem treinamento e sem equipamento.

**Item coberto:** NR-35 35.4.2.1 "g" · 35.7.2

#### Slide 27 — Noções básicas de técnicas de resgate

**Conteúdo:** noções — não formação de resgatista.

- As pessoas responsáveis pela execução das medidas de salvamento devem estar **capacitadas a
  executar o resgate**, prestar primeiros socorros e ter **aptidão física e mental compatível**
  `[35.7.3]`;
- Quando o resgate for por **equipe interna**, a organização estabelece **conteúdo e carga horária
  da capacitação em função dos cenários de emergência** `[35.7.3.1]` — **a NR-35 não fixa carga
  horária para essa capacitação**;
- Se a obra tem **acesso por cordas**, a equipe deve ser capacitada para **autorresgate e resgate
  da própria equipe** `[NR-35, Anexo I, item 5.1]`.

> ⚠️ **Aviso obrigatório neste slide:** este é um treinamento de **noções básicas** `[35.4.2.1
> "g"]`. Ser resgatista é outra capacitação, com conteúdo e carga definidos pela organização
> `[35.7.3.1]`.

**Item coberto:** NR-35 35.4.2.1 "g" · 35.7.3, 35.7.3.1 · Anexo I 5.1

#### Slide 28 — Noções básicas de primeiros socorros

**Conteúdo:** o que fazer e o que não fazer até a chegada do socorro.

- `[PROTOCOLO DA OBRA — a preencher]`
- Urgência da **suspensão inerte**: trabalhador pendurado precisa ser retirado rápido.

> ⚠️ **Aviso obrigatório neste slide:** primeiros socorros exige **prática**. O deck não treina
> a mão. A parte prática é presencial `[35.4.2 e 35.4.5]`.

**Item coberto:** NR-35 35.4.2.1 "g"

---

## BLOCO 4 — Ponte para a parte prática (slides 29 e 30)

### Slide 29 — O que vem agora: a parte prática

**Conteúdo:** o roteiro do que a turma vai fazer fisicamente, conduzido pelo instrutor.

- Vestir e ajustar o cinto tipo paraquedista;
- Inspecionar o próprio EPI, item a item;
- Conectar e desconectar em ponto de ancoragem real, mantendo-se preso durante o deslocamento;
- Reconhecer, no canteiro, as condições impeditivas do slide 10;
- Acionar o procedimento de emergência.

Base: trabalhador capacitado é o aprovado em processo envolvendo treinamento **teórico e
prático** `[35.4.2]`.

**Item coberto:** NR-35 35.4.2, 35.4.5

### Slide 30 — Quem conduz

**Conteúdo:**
- Instrutores com **comprovada proficiência no assunto**, sob responsabilidade de **profissional
  qualificado ou legalmente habilitado em segurança do trabalho** `[35.4.3]`;
- **Proficiência não significa ter curso específico** — significa habilidades, experiência e
  conhecimentos capazes de ministrar os ensinamentos; mas o treinamento deve estar sob
  responsabilidade de profissional qualificado em segurança do trabalho `[NR-35, Glossário —
  verbete Proficiência]`;
- Instrutor deste treinamento: `[NOME E QUALIFICAÇÃO — a preencher]`.

**Item coberto:** NR-35 35.4.3 · Glossário

---

## BLOCO 5 — Registro, reciclagem e avaliação (slides 31 a 34)

### Slide 31 — Seu certificado: o que tem de constar

**Conteúdo:** os 8 campos obrigatórios `[NR-01 1.7.1.1]`, em lista visual.

1. Nome do trabalhador; 2. **Assinatura do trabalhador**; 3. Conteúdo programático;
4. Carga horária; 5. Data; 6. Local de realização; 7. Nome e **qualificação** dos instrutores;
8. **Assinatura do responsável técnico** do treinamento.

Mais:
- O certificado é **disponibilizado a você** e uma cópia fica **arquivada na empresa**
  `[NR-01 1.7.3]`;
- A capacitação é **consignada nos seus documentos funcionais** `[NR-01 1.7.4]`;
- A **autorização** para trabalho em altura também é consignada nos documentos funcionais
  `[NR-35 35.4.1.3]`;
- O tempo do treinamento é **tempo de trabalho efetivo** `[NR-01 1.7.2]`;
- A organização deve **arquivar a documentação** prevista na NR-35 por período **mínimo de 5
  (cinco) anos**, exceto disposição específica em outra NR `[NR-35 35.3.1 "j"]`.

**Item coberto:** NR-01 1.7.1.1, 1.7.2, 1.7.3, 1.7.4 · NR-35 35.4.1.3, 35.3.1 "j"

---

### Slide 32 — Quando você faz de novo

**Conteúdo:** periodicidade + gatilhos, em duas colunas.

**Periódico:**
- **A cada 2 (dois) anos**, com carga horária mínima de **8 horas**, conteúdo definido pelo
  empregador `[35.4.2.2]`.

**Eventual — a NR-35 remete à NR-01** `[35.4.2]`. Você refaz o treinamento quando:
- houver **mudança nos procedimentos, condições ou operações** de trabalho que altere os riscos
  `[NR-01 1.7.1.2.3 "a"]`;
- ocorrer **acidente grave ou fatal** que indique a necessidade de novo treinamento
  `[NR-01 1.7.1.2.3 "b"]`;
- você **retornar de afastamento superior a 180 (cento e oitenta) dias**
  `[NR-01 1.7.1.2.3 "c"]`.

Carga horária, prazo e conteúdo do eventual atendem à situação que o motivou — **a norma não fixa
número de horas para o eventual** `[NR-01 1.7.1.2.3.1]`.

**Item coberto:** NR-35 35.4.2, 35.4.2.2 · NR-01 1.7.1.2.3, 1.7.1.2.3.1

---

### Slide 33 — Avaliação de aprendizagem

**Conteúdo:** 5 a 10 questões em formato de **cenário do canteiro**, uma por alínea do conteúdo
programático. Exemplos de amarração:

| Questão (cenário) | Alínea avaliada |
|---|---|
| "Está ventando forte e a AR lista vento como condição impeditiva. O encarregado manda subir. O que você faz?" | `35.4.2.1 "b"` |
| "Você vai se deslocar 8 m na periferia da laje. Como fica o talabarte durante o deslocamento?" | `35.4.2.1 "e"` |
| "O guarda-corpo do trecho foi removido para receber material. O que precisa existir antes de alguém trabalhar ali?" | `35.4.2.1 "d"` |
| "Você encontra o talabarte com a costura desfiada. Qual a conduta?" | `35.4.2.1 "e"` |
| "Um colega caiu e está pendurado no cinto, consciente. O que você faz primeiro?" | `35.4.2.1 "g"` |
| "Cite dois acidentes típicos de trabalho em altura e o que teria evitado cada um." | `35.4.2.1 "f"` |
| "Quais três condições você precisa ter para poder subir?" | `35.4.1.1`, `35.4.1.2` |

Resultado expresso como **satisfatório / insatisfatório** `[NR-01 Anexo II 4.6]`.

> ⚠️ **Aviso obrigatório:** esta avaliação embutida é apoio. Em EAD ou semipresencial, a
> avaliação válida é prova **presencial com assinatura** ou **digital com identificação e senha
> individual**, em AVA, com rastreabilidade `[NR-01 Anexo II 4.6.1, 4.6.2 e 5.1]` — e a NR-35
> **não admite EAD** `[35.4.5]`.

**Item coberto:** NR-01 Anexo II 4.6, 4.6.1, 4.6.2, 4.6.3 · NR-35 35.4.5

---

### Slide 34 — Lista de presença e assinatura (para impressão)

**Conteúdo:** formulário em branco, otimizado para `@media print`.

| Campo | Observação |
|---|---|
| Nome completo | |
| Matrícula / CPF | |
| Função | |
| **Assinatura do trabalhador** | Campo obrigatório do certificado `[NR-01 1.7.1.1]` |
| Data | |
| Carga horária cumprida | Teórica + prática, separadas |
| Nome e qualificação do instrutor | `[35.4.3]` |
| **Assinatura do responsável técnico** | `[NR-01 1.7.1.1]` |

> Este slide **não é o certificado**. É insumo para que a organização emita o certificado
> `[NR-01 1.7.1.1]` e arquive a cópia `[NR-01 1.7.3]`.

**Item coberto:** NR-01 1.7.1.1, 1.7.3

---

# Mapa de rastreabilidade — item da norma × slide

Tabela de conferência final. **Nenhuma alínea pode ficar sem slide.**

| Item da NR-35 | Exigência | Slide(s) |
|---|---|---|
| 35.4.1 / 35.4.1.1 / 35.4.1.2 / 35.4.1.3 / 35.4.1.3.1 | Autorização formal | 4 |
| 35.4.2 | Teórico **e** prático | 2, 3, 29 |
| 35.4.2.1 (caput) | Inicial, 8 h, antes de iniciar | 1 |
| **35.4.2.1 "a"** | Normas e regulamentos | **7**, 8 |
| **35.4.2.1 "b"** | AR e condições impeditivas | **9**, 10, 11 |
| **35.4.2.1 "c"** | Riscos e medidas de prevenção/controle | **12**, 13, 14 |
| **35.4.2.1 "d"** | Proteção coletiva | **15**, 16 |
| **35.4.2.1 "e"** | EPI: seleção, inspeção, conservação, limitação de uso | **17**, 18, 19, 20, 21, 22, 23 |
| **35.4.2.1 "f"** | Acidentes típicos | **24**, 25 |
| **35.4.2.1 "g"** | Emergência, resgate, primeiros socorros | **26**, 27, 28 |
| 35.4.2.2 | Periódico: 8 h / 2 anos | 1, 32 |
| 35.4.3 | Instrutor com proficiência | 2, 30 |
| 35.4.4 / 35.4.4.1 | Aptidão de saúde e ASO | 4 |
| 35.4.5 | Presencial obrigatório | 1, 3, 33 |
| 35.3.1 "g" "h" "j" | Início condicionado, suspensão, arquivo por 5 anos | 10, 31 |
| 35.5.1 / 35.5.2 / 35.5.3 / 35.5.4 | Planejamento, hierarquia, supervisão | 8, 9 |
| 35.7.2 / 35.7.3 / 35.7.3.1 | Emergência e salvamento | 26, 27 |
| Anexo I 5.1 | Autorresgate (acesso por cordas) | 27 |
| Anexo III (Escadas) 4.1.2.1 / 4.2.1 / 4.2.1.1 / 5.1.1 | Escada de uso individual | 23 |
| Anexo II (Ancoragem) 4.2 "b" / 4.2.1 | Seleção e autorização de pontos de ancoragem | 22 |
| Glossário | AR, absorvedor, ancoragem, proficiência, riscos adicionais | 9, 12, 17, 22, 30 |
| **NR-01 1.7.1.1 / 1.7.2 / 1.7.3 / 1.7.4** | Certificado e registro | 1, 31, 34 |
| **NR-01 1.7.1.2.3** | Gatilhos do eventual | 32 |
| **NR-01 Anexo II 4.6** | Avaliação | 33 |

Slides em **negrito** na coluna direita são os **slides-resumo** das alíneas — os obrigatórios.

---

# Contagem de conformidade do modelo

| Verificação | Resultado |
|---|---|
| Alíneas do conteúdo programático `[35.4.2.1]` | 7 |
| Slides-resumo (1 por alínea) | 7 — slides 7, 9, 12, 15, 17, 24, 26 ✅ |
| Alíneas sem cobertura | 0 ✅ |
| Slide de identificação alinhado ao certificado `[NR-01 1.7.1.1]` | Slide 1 ✅ |
| Slide de aviso de escopo | Slide 2 ✅ |
| Slide dedicado à presencialidade `[35.4.5]` | Slide 3 ✅ |
| Slide de ponte para a parte prática `[35.4.2]` | Slide 29 ✅ |
| Slide de reciclagem + gatilhos | Slide 32 ✅ |
| Slide de avaliação `[NR-01 Anexo II 4.6]` | Slide 33 ✅ |
| Slide de assinatura para impressão | Slide 34 ✅ |
| Slides que exigem dados do canteiro (placeholders) | 5, 6, 10, 11, 13, 16, 20, 21, 22, 26, 28, 30 |
| Total de slides | 34 |

---

# Nota final para o agente

Este modelo cobre **a parte teórica das 8 horas** do treinamento inicial de NR-35. Ao entregar
um deck construído a partir dele, informar ao usuário, sem maquiar:

- carga horária **exigida pela norma**: 8 h mínimas `[35.4.2.1]`;
- o deck apoia a **parte teórica**; a **parte prática é obrigatória** `[35.4.2]` e **presencial**
  `[35.4.5]`;
- o deck **não certifica** — o certificado é emitido pela organização, com os 8 campos e as duas
  assinaturas `[NR-01 1.7.1.1]`;
- a **lista de placeholders** pendentes de dados reais do canteiro;
- a **versão da norma** usada: **Portaria MTE nº 1.259, de 15/07/2026** (com a ressalva registrada
  no arquivo local: a página gov.br cita 15/06/2026 e o PDF diz 15/07/2026 — o PDF foi adotado
  como fonte primária).
