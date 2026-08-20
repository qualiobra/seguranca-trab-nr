# Base NR — Construção Civil

Base de conhecimento aberta sobre as **Normas Regulamentadoras (NRs)** de segurança e saúde no
trabalho aplicáveis a obras de construção civil no Brasil — otimizada para **consulta por
agentes de IA** e por engenheiros/técnicos no dia a dia do canteiro: o que pode embargar a obra,
que documentos manter, o que inspecionar, que treinamentos dar, e templates prontos (controle de
EPI, APR, PT, OS, DDS, checklists de inspeção).

> **Agente de IA?** Comece pelo [AGENTS.md](AGENTS.md). Mapa completo: [INDEX.md](INDEX.md).
> Consulta temática: [matriz-temas](03-matrizes/matriz-temas.md).

## O que tem aqui

| Pasta | Conteúdo |
|---|---|
| `00-guia-interdicao/` | Embargo × interdição: base legal, fiscalização na prática, ranking de riscos, multas, recurso |
| `01-nrs-texto-oficial/` | Textos oficiais de 22 NRs (PDF do gov.br + conversão Markdown com versão/hash), em 3 prioridades por risco de interdição |
| `02-fichas-operacionais/` | 16 fichas destiladas: gatilhos de embargo, documentos obrigatórios, erros comuns por NR |
| `03-matrizes/` | Documentos obrigatórios · inspeções × periodicidade · índice de 28 temas de canteiro |
| `04-templates/` | Controle/ficha de EPI, APR, PT, OS, DDS + 8 checklists de inspeção (326 itens) |
| `05-treinamentos/` | Cargas horárias, reciclagens e conteúdos programáticos por NR + guia para gerar slides de treinamento |
| `_meta/` | Fontes oficiais validadas, scripts de verificação/atualização, changelog |

## Por que confiar

- **Toda afirmação normativa cita NR + item** (ex.: "NR-18, 18.9.1"), conferida contra o texto
  oficial local — nunca de memória. O que é prática de mercado sem item citável está marcado
  **[PRÁTICA]**.
- **~1.700 citações verificadas** por revisão adversarial multiagente na montagem; os gates
  determinísticos (`_meta/check-citacoes.sh`) reportam **0 citações inexistentes**.
- Precedências que agentes costumam errar estão explícitas (NR-18 × NR-24, grua = NR-18,
  PGR ≠ PPRA…) — ver [AGENTS.md](AGENTS.md).

## Instalação da skill e do agente

O repositório inclui uma **skill de consulta** (`skills/consulta-nr/`) e um **agente de
segurança do trabalho** (`agents/engenheiro-sst.md`) que ensinam qualquer agente de IA a usar a
base sem inventar norma:

- **Claude Code**: adicione o repositório como plugin (ele já traz `.claude-plugin/plugin.json`)
  — ou copie `skills/consulta-nr/` para `~/.claude/skills/` e `agents/engenheiro-sst.md` para
  `.claude/agents/` (projeto) ou `~/.claude/agents/` (pessoal).
- **Codex / Copilot CLI / Gemini CLI**: copie `skills/consulta-nr/` para `~/.agents/skills/`
  (alias multi-runtime). Para o agente, use o corpo de `agents/engenheiro-sst.md` (abaixo do
  frontmatter) como system prompt.
- **Hermes e outros runtimes**: o corpo de `agents/engenheiro-sst.md` é uma persona
  autossuficiente — use-o como system prompt e garanta acesso de leitura à pasta da base.

## Avisos

- **Snapshot datado** (ver `_meta/CHANGELOG.md`). NRs mudam por portaria: rode
  `_meta/check-vigencia.sh` e o roteiro de `_meta/como-atualizar.md`. **A NR-10 muda em
  01/06/2027.**
- Não substitui o texto oficial nem assessoria profissional. Em divergência, o PDF oficial prevalece.
- Licenças: CC BY 4.0 (conteúdo) · MIT (scripts) · atos oficiais sem proteção autoral — [LICENSE.md](LICENSE.md).

---
Feito por **QualiApps** · contribuições e correções são bem-vindas via issue/PR.
