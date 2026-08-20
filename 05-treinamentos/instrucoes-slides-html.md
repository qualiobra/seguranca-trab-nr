---
tipo: instrução
titulo: "Guia para agentes de IA — geração de decks de slides HTML de treinamento SST"
publico_alvo: "Agentes de IA que gerarão material didático de treinamento NR para canteiro de obras"
data: 2026-08-19
idioma: pt-BR
documento_fonte_obrigatorio: ./requisitos-treinamento-por-nr.md
modelo_de_estrutura: ./modelo-estrutura-deck.md
fontes:
  - nr: NR-01
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-01/NR-01.md
    versao: Portaria MTE nº 765, de 15/05/2025
    uso: Campos do certificado (1.7.1.1), modalidades, EAD (Anexo II)
  - nr: NR-05
    arquivo: ../01-nrs-texto-oficial/prioridade-2/NR-05/NR-05.md
    versao: Portaria MTP nº 4.219, de 20/12/2022
  - nr: NR-06
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-06/NR-06.md
    versao: Portaria MTE nº 57, de 16/01/2025
  - nr: NR-10
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-10/NR-10.md
    versao: Portaria SEPRT nº 915, de 30/07/2019
  - nr: NR-11
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-11/NR-11.md
    versao: Portaria MTPS nº 505, de 29/04/2016
  - nr: NR-12
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-12/NR-12.md
    versao: Portaria MTE nº 344, de 21/03/2024
  - nr: NR-18
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-18/NR-18.md
    versao: Portaria MTE nº 836, de 13/05/2026
  - nr: NR-33
    arquivo: ../01-nrs-texto-oficial/prioridade-2/NR-33/NR-33.md
    versao: Portaria SEPRT/MTE nº 1.690, de 15/06/2022
  - nr: NR-35
    arquivo: ../01-nrs-texto-oficial/prioridade-1/NR-35/NR-35.md
    versao: Portaria MTE nº 1.259, de 15/07/2026
---

# Guia para agentes de IA — decks de slides HTML de treinamento SST

## Leia isto primeiro

> ### O deck de slides é **material didático de apoio**. Ele NÃO é o treinamento.
>
> O treinamento é o evento presencial ou em AVA, com instrutor proficiente, carga horária
> cumprida, parte prática executada quando exigida, avaliação de aprendizagem e certificado
> assinado pelo responsável técnico. O deck entra dentro disso — não no lugar disso.
>
> Um agente que gera um deck e o entrega dizendo "treinamento de NR-35 pronto" produziu um
> **passivo trabalhista**, não um entregável.

## Regra de ouro do conteúdo

**Nenhuma carga horária, periodicidade, conteúdo programático ou requisito de certificado pode
sair da memória do modelo.** Tudo vem de `./requisitos-treinamento-por-nr.md`, que por sua vez
cita o item de cada norma no texto oficial local em `../01-nrs-texto-oficial/`.

Se o dado não estiver lá, o agente tem duas saídas — e só duas:

1. Ler o texto oficial local da NR e extrair o item; **ou**
2. Escrever no deck, literalmente: **"A norma não fixa carga horária"** / **"A norma não fixa
   periodicidade"** / **"Conteúdo definido pelo empregador (NR-01 item 1.7.1.2.2)"**.

**Nunca** preencher com número plausível, praxe de mercado, "geralmente são X horas" ou
comparação com outra NR.

---

# Parte A — Processo de construção do deck

## A.1 Fluxo obrigatório (7 passos)

```
1. IDENTIFICAR o treinamento
      ↓
2. EXTRAIR os requisitos da tabela-mestra (com itens)
      ↓
3. CONFIRMAR modalidade e parte prática
      ↓
4. COLETAR exemplos reais do canteiro COM O USUÁRIO
      ↓
5. MONTAR módulos (1 módulo ≈ 1 alínea/bloco do conteúdo programático)
      ↓
6. ESCREVER os slides (1 slide-resumo por item obrigatório, no mínimo)
      ↓
7. RODAR o checklist de qualidade (Parte D) antes de entregar
```

### Passo 1 — Identificar o treinamento

Ancorar em três perguntas ao usuário, **antes de escrever qualquer HTML**:

- Qual **treinamento** exatamente? (Ex.: "trabalho em altura" → NR-35; "básico de segurança" →
  NR-18 Quadro 1; "operador de grua" → NR-18 Quadro 1; "espaço confinado — vigia" → NR-33 Quadro 1.)
- É **inicial**, **periódico** ou **eventual**? Os três têm conteúdos e cargas diferentes
  `[NR-01 1.7.1.2]`. Em várias normas, o conteúdo do periódico e do eventual é **definido pelo
  empregador**, não pela norma (ex.: `[NR-18 Anexo I 2.2]`, `[NR-35 35.4.2.2]`,
  `[NR-33 Anexo III 2.3]`).
- Qual o **público**? Operador, vigia, supervisor de entrada, membro de CIPA, representante
  nomeado da NR-05 — a carga horária muda por perfil (ex.: NR-33 supervisor 40 h vs. vigia 16 h).

### Passo 2 — Extrair os requisitos da tabela-mestra

Abrir `./requisitos-treinamento-por-nr.md` e copiar, para uma tabela de trabalho:

| Campo | Fonte |
|---|---|
| NR e item que obriga o treinamento | Seção da NR na tabela-mestra |
| Carga horária inicial | Idem — ou "a norma não fixa" |
| Periodicidade do periódico | Idem — ou "a norma não fixa" |
| Gatilhos do eventual | Seção 11 da tabela-mestra (visão consolidada) |
| **Lista completa das alíneas do conteúdo programático** | Idem, com o item |
| Campos do certificado | Seção 1.3 da tabela-mestra `[NR-01 1.7.1.1]` |
| Versão da norma (portaria) | Front-matter da tabela-mestra |

**Esta tabela vira o índice do deck.** Nenhuma alínea pode ficar de fora.

### Passo 3 — Confirmar modalidade e parte prática

Consultar as seções 1.6.1 e 10 da tabela-mestra. Isso determina **avisos obrigatórios** no deck
(ver Parte C).

### Passo 4 — Coletar exemplos do canteiro real

> **O agente NUNCA inventa o canteiro.** Fotos, riscos, equipamentos, procedimentos e acidentes
> citados no deck devem vir do usuário.

Pedir ao usuário, de forma explícita, antes de gerar:

- Nome da obra / canteiro e etapa atual;
- 3 a 6 **fotos reais** de situações do canteiro (o certo e o errado);
- Equipamentos efetivamente usados (marca/modelo de talabarte, andaime, grua, detector de gases…);
- Procedimentos internos aplicáveis (PT, PET, AR, plano de resgate);
- Acidentes ou quase-acidentes já ocorridos naquela obra (anonimizados);
- Nome do **instrutor** e do **responsável técnico** do treinamento.

Enquanto o usuário não fornecer, usar **placeholders visivelmente marcados** — nunca conteúdo
inventado que passe por real:

```html
<figure class="ph">
  <div class="ph-box">[FOTO DO CANTEIRO — a inserir]</div>
  <figcaption>PLACEHOLDER — substituir por foto real da obra antes de aplicar o treinamento</figcaption>
</figure>
```

**Motivo normativo, não estético:** a NR-33 exige que os equipamentos usados no treinamento
garantam o aprendizado **em situações similares às do local de trabalho** `[NR-33 Anexo III 2.2]`;
a NR-10 marca 14 dos 18 tópicos do curso SEP com (*) — devem ser dirigidos **especificamente às
condições características do ramo e da instalação** `[NR-10 Anexo III, item 2, nota (*)]`; a
NR-01 exige que a avaliação contemple **situações práticas da rotina laboral**
`[NR-01 Anexo II 4.6.3]`; e o treinamento básico da NR-18 exige falar do **PGR daquele canteiro**
`[NR-18 Anexo I 2.1 "a" V]`. Deck genérico não atende esses itens.

### Passo 5 — Montar os módulos

Regra de mapeamento: **1 módulo ≈ 1 alínea (ou bloco numerado) do conteúdo programático da NR.**

Exemplos de mapeamento direto:

| Treinamento | Módulos derivados |
|---|---|
| NR-35 inicial | 7 módulos = alíneas "a" a "g" de `[35.4.2.1]` |
| NR-18 básico | 5 módulos = incisos I a V de `[Anexo I 2.1 "a"]` |
| NR-33 vigia/trabalhador autorizado | 5 módulos = incisos I a V de `[Anexo III 2.1 "b"]` |
| NR-33 supervisor de entrada | 12 módulos = incisos I a XII de `[Anexo III 2.1 "a"]` |
| NR-10 básico | 15 módulos = blocos 1 a 15 de `[Anexo III, item 1]` |
| NR-12 operação de máquinas | 9 módulos = alíneas "a" a "i" de `[Anexo II item 1]` (+8 se automotriz, `[1.1]`) |
| NR-05 CIPA | 8 módulos = alíneas "a" a "h" de `[5.7.2]` |
| NR-18 operador de grua | 10 módulos = incisos I a X de `[Anexo I 2.1 "c"]` |

Ordem dentro do módulo: **manter a ordem da norma**. Facilita a conferência pelo auditor fiscal
e pelo responsável técnico.

**Dimensionamento honesto.** Se a norma fixa 40 h (NR-33 supervisor) e o deck tem 25 slides, o
deck cobre uma fração do treinamento. Declarar isso no slide de identificação: "este deck apoia
a parte teórica; a carga horária total do treinamento é de 40 h, das quais no mínimo 20 h são de
parte prática `[NR-33 Anexo III 1.2]`".

### Passo 6 — Escrever os slides

**Mínimo absoluto: 1 slide-resumo por item obrigatório do conteúdo programático.** Um item da
norma que não tem nenhum slide é um item não coberto — e o deck não pode ser apresentado como
cobrindo o conteúdo programático.

Se um item for extenso (ex.: "medidas de controle do risco elétrico", com 13 sub-tópicos em
`[NR-10 Anexo III 1, bloco 4]`), o slide-resumo é obrigatório **e** slides de detalhe são
recomendados — mas o slide-resumo é o que garante a rastreabilidade item↔slide.

### Passo 7 — Checklist

Ver Parte D. Não entregar sem rodar.

## A.2 O que o agente NÃO deve fazer

| Proibido | Por quê |
|---|---|
| Inventar carga horária ou periodicidade | Regra de ouro; risco de autuação |
| Dizer "conforme NR-06, treinamento de 4 h" | A NR-06 **não fixa carga horária** `[NR-06 6.7.1]` |
| Gerar deck de NR-35 e chamar de treinamento EAD | NR-35 é **presencial obrigatório** `[35.4.5]` |
| Gerar deck do "básico de segurança" da NR-18 como EAD | **Deve ser presencial** `[18.14.3]` |
| Substituir a parte prática por vídeo/animação no deck | O conteúdo prático só é EAD **se previsto em NR específica** `[NR-01 1.7.9.1]` |
| Emitir o certificado dentro do HTML | O certificado exige **assinatura do trabalhador** e **do responsável técnico** `[NR-01 1.7.1.1]` |
| Copiar longos trechos literais da NR nos slides | Slide é para o trabalhador de obra, não para o auditor. Parafrasear em linguagem simples e citar o item no rodapé |
| Usar dados de outro canteiro como se fossem desta obra | Fabricação de registro; ver Passo 4 |
| Omitir a versão/portaria da norma | Normas mudaram recentemente (NR-35 em 2026, NR-18 em 2026, NR-10 muda em 2027) |

---

# Parte B — Requisitos técnicos do HTML

## B.1 Arquitetura obrigatória

| Requisito | Especificação |
|---|---|
| **Arquivo único** | Um `.html` autocontido. CSS em `<style>`, JS em `<script>`, imagens em `data:` URI ou SVG inline |
| **Zero dependências externas** | Sem CDN, sem Google Fonts, sem `fetch`, sem `<link>` remoto. O canteiro **não tem internet confiável** — o arquivo tem de abrir de um pendrive |
| **Abre com duplo clique** | Funciona em `file://`. Nada que exija servidor local (sem módulos ES importados por caminho remoto, sem `fetch` de JSON externo) |
| **Fontes** | Somente `font-family` de sistema (`system-ui`, `-apple-system`, `Segoe UI`, `Roboto`, `Arial`, `sans-serif`) |
| **Tamanho** | Meta: **abaixo de 15 MB** com as imagens embutidas. Comprimir fotos antes de virar base64 |
| **Idioma** | `<html lang="pt-BR">` |
| **Impressão** | `@media print` funcional: 1 slide por página, sem cortar texto — instrutor imprime como apostila e como lista de apoio |

## B.2 Navegação

**Teclado (obrigatório):**

| Tecla | Ação |
|---|---|
| `→`, `PageDown`, `Espaço` | Próximo slide |
| `←`, `PageUp` | Slide anterior |
| `Home` / `End` | Primeiro / último slide |
| `Esc` | Índice / visão geral dos slides |
| `F` | Tela cheia |

**Botões (obrigatório):** botões grandes de "Anterior" e "Próximo" — alvo mínimo de **44×44 px**,
porque o deck será usado em **tablet, com luva, na obra**.

**Toque (obrigatório em qualquer deck destinado a tablet):** swipe esquerda/direita.

**Indicador de progresso (obrigatório):** "Slide 12 de 38" + barra. O trabalhador precisa saber
quanto falta; o instrutor precisa administrar a carga horária.

**Acessibilidade mínima:**
- Contraste ≥ 4.5:1 para texto (obra tem luz forte e telas sujas);
- Foco visível nos botões;
- Navegação funciona sem mouse;
- `alt` descritivo em toda imagem;
- Nada essencial transmitido **apenas** por cor (usar ícone + texto junto do verde/vermelho).

## B.3 Linguagem — escrever para trabalhador de obra

Base normativa direta: o material didático deve ser produzido em **linguagem adequada aos
trabalhadores** `[NR-12 12.16.4]`; as instruções devem ser elaboradas em **linguagem
compreensível**, com metodologias, técnicas e materiais que facilitem o aprendizado
`[NR-11 Anexo I 5.2.1]`.

Regras práticas:

| Regra | Detalhe |
|---|---|
| **Frases curtas** | Máximo ~15 palavras. Uma ideia por frase |
| **Voz ativa e imperativa** | "Trave o gancho." — não "O gancho deverá ser travado pelo operador" |
| **Máx. 6 linhas de texto por slide** | Slide não é apostila |
| **Nada de juridiquês no corpo** | "condições impeditivas" → "quando **não** pode subir". O termo técnico entra entre parênteses, uma vez |
| **Sem sigla não explicada** | Primeira aparição por extenso: "AR (Análise de Risco)", "PET (Permissão de Entrada e Trabalho)", "SPIQ", "PEMT", "ASO" |
| **Números grandes e visíveis** | Distâncias, cargas, alturas em destaque tipográfico |
| **Fonte ≥ 24 px** no corpo; ≥ 40 px no título | Deck é projetado; a última fileira do refeitório precisa ler |
| **Pictogramas** | Um pictograma SVG por conceito-chave. Usar placeholders marcados quando não houver arte definitiva |

**Padrão de placeholder de pictograma (SVG inline, sem dependência):**

```html
<svg class="pictograma-ph" viewBox="0 0 100 100" role="img"
     aria-label="Pictograma: uso de cinto de segurança tipo paraquedista">
  <rect x="2" y="2" width="96" height="96" rx="8" fill="none"
        stroke="currentColor" stroke-width="2" stroke-dasharray="6 4"/>
  <text x="50" y="46" text-anchor="middle" font-size="9">PICTOGRAMA</text>
  <text x="50" y="60" text-anchor="middle" font-size="7">cinto paraquedista</text>
</svg>
```

## B.4 Slide final — avaliação de aprendizagem

**Obrigatório em todo deck.** Base normativa:

| Norma | Exigência | Item |
|---|---|---|
| NR-18 | Treinamentos devem possuir avaliação para aferir o conhecimento adquirido — **exceto o inicial** (mas avaliar é permitido e recomendado) | 18.14.5 |
| NR-33 | Os treinamentos **devem ser avaliados** | 33.6.3 |
| NR-10 | Autorização condicionada a **avaliação e aproveitamento satisfatórios** | 10.8.8.1 |
| NR-12 | Avaliação dos capacitados sob responsabilidade do profissional habilitado; deve ser **disponibilizada à AFT** | 12.16.3 "e" e 12.16.5 |
| NR-11 (Anexo I) | Certificado só para quem cumprir a carga total **e demonstrar habilidade na operação** | 5.4.2.1 |
| NR-01 (EAD) | Conceito **satisfatório/insatisfatório**; avaliação deve contemplar **situações práticas da rotina laboral**; rastreabilidade se online | Anexo II 4.6, 4.6.2, 4.6.3 |

**Como implementar no HTML:**

- Bloco de **5 a 10 questões**, cada uma amarrada a um item do conteúdo programático;
- Formular as questões como **cenários do canteiro** ("O talabarte está com a costura desfiada.
  O que você faz?"), não como definição decorada — exigência de `[NR-01 Anexo II 4.6.3]`;
- Mostrar o resultado com **conceito satisfatório / insatisfatório**, no vocabulário da NR-01;
- **Botão "Imprimir gabarito preenchido"** para o instrutor arquivar junto ao registro;
- Slide seguinte: **campo de assinatura em branco** para impressão (nome, matrícula, data,
  assinatura) — a assinatura do trabalhador é campo obrigatório do certificado `[NR-01 1.7.1.1]`.

**Aviso obrigatório no slide de avaliação:**

> ⚠️ Esta avaliação embutida é **instrumento de apoio**. Quando o treinamento for realizado em
> EAD ou semipresencial, a avaliação válida é a prova aplicada **em formato presencial (com
> assinatura do empregado) ou digital (com identificação e senha individual)**, em Ambiente
> Virtual de Aprendizagem, com rastreabilidade — `[NR-01 Anexo II 4.6.1, 4.6.2 e 5.1]`.

**Nunca** fazer o HTML gerar um "certificado". O certificado exige assinatura do trabalhador e do
responsável técnico `[NR-01 1.7.1.1]` e cópia arquivada na organização `[NR-01 1.7.3]` — é
documento da empresa, não saída de um arquivo local.

---

# Parte C — Requisitos de conformidade

## C.1 Rodapé de todo slide de conteúdo

Formato obrigatório, em fonte pequena mas legível:

```
NR-35, item 35.4.2.1 "e"  ·  Portaria MTE nº 1.259, de 15/07/2026  ·  Slide 14/38
```

Três elementos, sempre:

1. **NR + item exato** coberto por aquele slide;
2. **Versão da norma** — a portaria de última alteração (está no front-matter da tabela-mestra);
3. **Numeração do slide**.

Slides que não cobrem item de norma (capa, transição de módulo, agradecimento) trazem apenas a
versão e a numeração.

**Por que a versão importa mais do que o normal agora:** NR-35 alterada pela Portaria MTE
nº 1.259/2026 (tornou-se presencial); NR-18 alterada pela Portaria MTE nº 836/2026; **NR-10 tem
nova redação publicada com vigência em 01/06/2027** — todo deck de NR-10 gerado hoje precisa
declarar que usa a redação de 2019 e trazer nota de revisão obrigatória.

## C.2 Slide 1 — identificação do treinamento

Deve **espelhar os campos do certificado** `[NR-01 1.7.1.1]`, para que o instrutor consiga
preencher o certificado a partir do deck sem retrabalho.

| Campo do slide | Campo correspondente no certificado `[NR-01 1.7.1.1]` |
|---|---|
| Título do treinamento | (contexto) |
| **Norma e itens cobertos** + versão/portaria | Conteúdo programático |
| **Carga horária total** (e quanto é prática) | Carga horária |
| **Modalidade** (presencial / EAD / semipresencial) | — (mas define a validade, `[NR-01 1.7.9]`) |
| **Tipo**: inicial / periódico / eventual | `[NR-01 1.7.1.2]` |
| **Instrutor** — nome e qualificação | Nome e qualificação dos instrutores |
| **Responsável técnico do treinamento** — nome e assinatura | Assinatura do responsável técnico |
| **Data** | Data |
| **Local de realização** | Local de realização |
| **Público-alvo / função** | (contexto; e `[NR-01 Anexo II 3.1 "l"]` se EAD) |
| **Próxima reciclagem** (data prevista + item da norma) | (deriva da periodicidade) |

Campos ainda não fornecidos ficam como `[A PREENCHER]` em destaque — **jamais preenchidos com
nome fictício**.

## C.3 Slide 2 — aviso de escopo (obrigatório)

Texto-base, a adaptar:

> **O que este material é e o que não é**
>
> Este deck é **material didático de apoio**. Ele **não substitui**:
> - o **instrutor** — a norma exige instrutor com proficiência comprovada;
> - a **parte prática**, quando a norma exigir;
> - a **avaliação** e a emissão do **certificado** pela organização.
>
> Carga horária, conteúdo e periodicidade seguem o texto oficial da norma. Em qualquer
> divergência, **prevalece o PDF oficial publicado no gov.br**.

## C.4 Aviso reforçado — NRs que exigem parte prática

Quando o treinamento for de uma das normas abaixo, o deck deve trazer um **slide dedicado**
(não só uma nota de rodapé) informando que a parte prática é obrigatória e **não pode ser
cumprida pelo deck**.

| NR | Exigência de parte prática | Item |
|---|---|---|
| **NR-35 — Trabalho em altura** | Trabalhador capacitado é o aprovado em processo envolvendo treinamento **teórico E prático** | **35.4.2** |
| **NR-33 — Espaços confinados** | Parte prática do inicial e do periódico de supervisor, vigia, trabalhador autorizado e equipe de emergência: **no mínimo 50 % da carga horária do Quadro 1** | **Anexo III 1.2** |
| **NR-12 — Máquinas** | Capacitação **deve abranger as etapas teórica e prática**; a etapa prática **deve ser supervisionada e documentada**, podendo ser na própria máquina | **Anexo II item 1** e **Anexo II 1.1.1** |
| **NR-12 — Injetoras** | Conteúdo inclui "**demonstração prática** dos perigos e dispositivos de segurança" | **12.16.11.1 "i"** |
| **NR-10 — Curso básico** | Bloco 12 "d) **prática**" (combate a incêndio) e bloco 14 "f) **práticas**" (primeiros socorros) | **Anexo III, item 1, blocos 12 e 14** |
| **NR-10 — Curso SEP** | Bloco 16: "**Treinamento em técnicas de remoção, atendimento, transporte de acidentados**" | **Anexo III, item 2, bloco 16** |
| **NR-18 — Operador de grua** | **≥ 40 h** das 80 h para a parte prática | **Anexo I, Quadro 1** |
| **NR-18 — Operador de guindaste** | **≥ 80 h** das 120 h para a parte prática | **Anexo I, Quadro 1** |
| **NR-18 — Operador de equipamentos de guindar** | **≥ 50 %** para a parte prática | **Anexo I, Quadro 1** |
| **NR-18 — Cadeira suspensa** | **≥ 8 h** das 16 h para a parte prática | **Anexo I, Quadro 1** |
| **NR-18 — Escavação manual de tubulão** | **≥ 8 h** das 24 h para a parte prática | **Anexo I, Quadro 1** |
| **NR-11 (Anexo I) — Rochas ornamentais** | Módulo III: **8 h de aulas práticas**; certificado exige **demonstrar habilidade na operação**; máx. **8 alunos por instrutor** na prática | **Anexo I 5.7 (Módulo III)**, **5.4.2.1**, **5.4.2** |
| **Gruas e guindastes (NR-18)** | Além do teórico e prático, **estágio supervisionado de ≥ 90 dias** | **Anexo I 1.2** |

Regra-mãe que sustenta todos: **o conteúdo prático só pode ser realizado em EAD ou
semipresencial se previsto em NR específica** `[NR-01 1.7.9.1]`. Nenhuma das normas acima traz
essa previsão — logo, **a prática é presencial**.

## C.5 Aviso reforçado — NRs que exigem presencialidade

Slide dedicado quando aplicável:

| Treinamento | Regra | Item |
|---|---|---|
| **Qualquer treinamento da NR-35** | **Presencial obrigatório** | **35.4.5** |
| **Básico em segurança do trabalho (NR-18)** | **Deve ser presencial** | **18.14.3** |
| **CIPA GR 2** | Mínimo **4 h presenciais** | **NR-05 5.7.4.2 "a"** |
| **CIPA GR 3 e GR 4** | Mínimo **8 h presenciais** | **NR-05 5.7.4.2 "b"** |

Se o treinamento **puder** ser EAD, o deck deve avisar que EAD só é válido dentro de um
**Ambiente Virtual de Aprendizagem** `[NR-01 Anexo II 5.1]`, com **projeto pedagógico**
`[Anexo II 3.1]`, **logs de acesso guardados por 2 anos após o fim da validade**
`[Anexo II 4.7.1]` e **duração no mínimo igual à da modalidade presencial** `[Anexo II 2.3]`.
Um HTML enviado por WhatsApp **não é EAD válido** — é material de apoio.

## C.6 Slide de reciclagem (obrigatório)

Todo deck fecha com um slide de "quando você precisa fazer de novo", com:

- A **periodicidade** do periódico daquela NR e o item — ou "a norma não fixa; prazo definido
  pelo empregador `[NR-01 1.7.1.2.2]`";
- Os **gatilhos do treinamento eventual**: mudança de procedimentos/condições/operações que
  alterem riscos `[NR-01 1.7.1.2.3 "a"]`; acidente grave ou fatal `[1.7.1.2.3 "b"]`; retorno de
  afastamento **superior a 180 dias** `[1.7.1.2.3 "c"]`;
- Os **gatilhos específicos da NR**, quando mais restritivos:
  - NR-10: afastamento **> 3 meses**, troca de função **ou mudança de empresa**, modificações
    significativas `[10.8.8.2 "a" "b" "c"]`;
  - NR-11 Anexo I: afastamento **> 6 meses**, troca de função, troca de métodos, modificações
    `[Anexo I 5.6 "a" a "d"]`;
  - NR-12: modificações significativas ou troca de métodos que impliquem **novos riscos**
    `[12.16.8]`;
  - NR-33: desvios na utilização de equipamentos ou nos procedimentos de entrada; para a equipe
    de emergência, desvios na operação de resgate ou nos simulados `[Anexo III, Quadro 1]`.

---

# Parte D — Checklist de qualidade antes de entregar

Rodar item a item. **Qualquer "não" bloqueia a entrega.**

## D.1 Conformidade normativa

- [ ] Todo dado de carga horária, periodicidade e conteúdo veio de `requisitos-treinamento-por-nr.md`, **com item citado**?
- [ ] Onde a norma não fixa parâmetro, o deck **diz isso literalmente** ("a norma não fixa carga horária") em vez de inventar número?
- [ ] **Todas** as alíneas/blocos do conteúdo programático da NR têm **pelo menos um slide-resumo**? (Conferir contra a lista do Passo 2 — checagem 1 a 1.)
- [ ] Rodapé de cada slide de conteúdo traz **NR + item + versão da norma (portaria) + nº do slide**?
- [ ] A **versão da norma** citada bate com o `ultima_alteracao` do texto oficial local?
- [ ] Deck de NR-10 traz nota de que a redação vigente é a de **2019** e que **muda em 01/06/2027**?
- [ ] Slide 1 (identificação) cobre **todos** os campos do certificado `[NR-01 1.7.1.1]`, com `[A PREENCHER]` onde faltar dado?
- [ ] Slide 2 (aviso de escopo) presente, dizendo que o deck **não substitui instrutor, prática, avaliação nem certificado**?
- [ ] Se a NR exige **parte prática**, há **slide dedicado** com a exigência e o item? (Tabela C.4)
- [ ] Se a NR exige **presencialidade**, há **slide dedicado** com a exigência e o item? (Tabela C.5)
- [ ] Slide de **reciclagem** presente, com periodicidade + gatilhos gerais da NR-01 + gatilhos específicos da NR?
- [ ] Nenhum slide afirma que o deck "certifica", "habilita", "autoriza" ou "libera" o trabalhador?
- [ ] O HTML **não** gera certificado nem documento que pareça um?
- [ ] Nenhuma carga horária foi copiada de outra NR por analogia?

## D.2 Adequação ao público

- [ ] Frases com no máximo ~15 palavras?
- [ ] Máximo de ~6 linhas de texto por slide?
- [ ] Toda sigla explicada na primeira aparição (AR, PET, PT, EPI, EPC, ASO, SPIQ, PEMT, PGR)?
- [ ] Voz ativa e imperativa nas instruções?
- [ ] Fonte do corpo ≥ 24 px e do título ≥ 40 px?
- [ ] Contraste ≥ 4.5:1?
- [ ] Nenhuma informação essencial transmitida **só** por cor?
- [ ] Cada conceito-chave tem pictograma (real ou placeholder marcado)?
- [ ] Todos os placeholders estão **visivelmente marcados** como placeholder?

## D.3 Canteiro real

- [ ] Exemplos, fotos e riscos vieram **do usuário**, não da imaginação do modelo?
- [ ] Onde não houve material do usuário, há placeholder marcado — e **nenhum exemplo inventado passando por real**?
- [ ] Equipamentos citados são os que a obra efetivamente usa?
- [ ] Deck de NR-18 básico menciona **o PGR daquele canteiro** `[NR-18 Anexo I 2.1 "a" V]`?
- [ ] Deck de NR-10 SEP customizou os 14 tópicos marcados com (*) para as condições reais da instalação `[NR-10 Anexo III item 2, nota (*)]`?
- [ ] Deck de NR-33 reflete o **tipo de espaço confinado** real da obra `[NR-33 33.6.5 e Anexo III 2.2]`?

## D.4 Técnico

- [ ] Arquivo **único**, abre com duplo clique em `file://`?
- [ ] **Zero** requisições externas (buscar por `http://`, `https://`, `cdn`, `fonts.`, `fetch(` no fonte)?
- [ ] Navegação por teclado funciona (`→` `←` `Espaço` `Home` `End` `Esc`)?
- [ ] Botões Anterior/Próximo com alvo ≥ 44×44 px?
- [ ] Swipe funciona em tablet?
- [ ] Indicador "slide X de Y" + barra de progresso?
- [ ] `@media print` gera 1 slide por página sem cortar texto?
- [ ] `<html lang="pt-BR">`?
- [ ] Arquivo abaixo de 15 MB?
- [ ] Testado em ao menos 2 navegadores?

## D.5 Avaliação de aprendizagem

- [ ] Slide de avaliação presente, com 5 a 10 questões?
- [ ] Cada questão amarrada a um item do conteúdo programático?
- [ ] Questões formuladas como **cenários do canteiro** `[NR-01 Anexo II 4.6.3]`?
- [ ] Resultado expresso como **satisfatório / insatisfatório** `[NR-01 Anexo II 4.6]`?
- [ ] Aviso de que, em EAD, vale a prova presencial assinada ou digital com senha individual em AVA `[NR-01 Anexo II 4.6.1 e 5.1]`?
- [ ] Slide de assinatura em branco para impressão (nome, matrícula, data, assinatura)?
- [ ] Botão de impressão do gabarito preenchido, para arquivo do instrutor?

## D.6 Entrega ao usuário

Ao entregar, a mensagem deve conter, obrigatoriamente:

1. **O que o deck cobre** — NR, itens, tipo (inicial/periódico/eventual);
2. **O que falta para o treinamento ser válido** — parte prática, instrutor, avaliação,
   certificado, e (se EAD) AVA + projeto pedagógico;
3. **A lista de placeholders** a substituir, com o que cada um espera receber;
4. **A carga horária exigida pela norma vs. o que o deck comporta** — sem maquiar a diferença;
5. **A versão da norma usada** e, se houver, o alerta de mudança futura (caso NR-10, jun/2027).

---

## Apêndice — esqueleto mínimo do HTML

Estrutura de referência (o deck real segue `./modelo-estrutura-deck.md` para o conteúdo):

```html
<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Treinamento NR-XX — [nome] — [obra]</title>
<style>
  :root{ --fg:#111; --bg:#fff; --acc:#b00020; --ok:#0a6b2e; }
  *{box-sizing:border-box}
  body{margin:0;font-family:system-ui,-apple-system,"Segoe UI",Roboto,Arial,sans-serif;
       color:var(--fg);background:var(--bg)}
  .slide{display:none;min-height:100vh;padding:4vh 6vw;flex-direction:column}
  .slide.ativo{display:flex}
  .slide h1{font-size:clamp(40px,5vw,64px);line-height:1.1}
  .slide p,.slide li{font-size:clamp(24px,2.4vw,32px);line-height:1.45}
  .rodape{margin-top:auto;font-size:15px;opacity:.75;border-top:1px solid #ddd;padding-top:10px}
  .nav button{min-width:44px;min-height:44px;font-size:18px}
  .ph{border:2px dashed var(--acc);padding:12px;color:var(--acc)}
  @media print{ .slide{display:flex;page-break-after:always;min-height:auto} .nav{display:none} }
</style>
</head>
<body>
  <!-- Slide 1: identificação (campos do certificado, NR-01 1.7.1.1) -->
  <!-- Slide 2: aviso de escopo -->
  <!-- Slide 3: presencialidade / parte prática, quando aplicável -->
  <!-- Slides de conteúdo: >= 1 por item obrigatório da NR -->
  <!-- Slide de reciclagem -->
  <!-- Slide de avaliação -->
  <!-- Slide de assinatura -->
  <nav class="nav" aria-label="Navegação do treinamento">
    <button id="ant" aria-label="Slide anterior">◀ Anterior</button>
    <span id="contador" aria-live="polite">1 / 1</span>
    <button id="prox" aria-label="Próximo slide">Próximo ▶</button>
  </nav>
<script>
  // teclado: ArrowRight/ArrowLeft/Space/PageUp/PageDown/Home/End/Escape/F
  // toque: touchstart/touchend -> swipe
  // hash na URL para retomar do slide atual
</script>
</body>
</html>
```
