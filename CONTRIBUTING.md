# Como contribuir

Obrigado pelo interesse! Este repositório alimenta agentes de IA que orientam decisões reais de
segurança em canteiro — por isso o padrão de qualidade é rígido e **toda contribuição passa por
verificação contra o texto oficial** antes de entrar.

## Como este repositório funciona

Este repositório é o **espelho publicado** de uma base mantida com auditoria contínua (verificação de
citações, golden set de regressão, checagem de vigência das normas). Na prática, para você:

- **Issues** são o canal principal para reportar problemas. Issues **procedentes** entram na
  fila de não conformidade do processo interno; quando a correção é publicada num sync, o
  CHANGELOG **credita o autor** (sem prazo garantido).
- **PRs** são bem-vindos (regras abaixo). O repositório público é **republicado por snapshot**
  a partir da base interna: uma vez aprovado, o PR é portado para a base interna antes do
  snapshot seguinte — o merge pode vir acompanhado de um commit de sincronização.

## Abrindo uma issue

Use sempre um dos formulários (issues em branco estão desativadas):

| Formulário | Quando usar |
|---|---|
| **Erro na base** | Citação errada, número trocado, link quebrado, afirmação sem lastro |
| **Melhoria** | Novo template/checklist, destilado, script, skill/agente ou documentação |
| **Norma desatualizada** | Saiu portaria nova do MTE que muda alguma das 22 NRs |

Dúvida de uso não é issue — use as **Discussions** do repositório.

Na issue de erro, o campo **"evidência no texto oficial"** é obrigatório: cole o trecho do
dispositivo (os textos estão em `01-nrs-texto-oficial/`) que prova o erro. Issue sem evidência
verificável será devolvida pedindo o trecho.

## Abrindo um PR — o padrão de qualidade

As cinco regras que a revisão vai conferir (as mesmas da auditoria interna):

1. **Toda afirmação normativa nova, ALTERADA ou REMOVIDA cita NR + item** (ex.: "NR-18, 18.9.1") **conferido no texto
   oficial de `01-nrs-texto-oficial/`** — e você cola o trecho do dispositivo na descrição do
   PR (também para o valor antigo, quando alterar ou remover). Item "de memória" não entra, e
   **citação a norma fora das 22 NRs da base não fundamenta exigência** (fonte não-NR — NBR,
   convenção coletiva, jurisprudência — só entra com marca explícita de fonte, nunca como item de NR).
2. **Recomendação sem item citável leva a marca `[PRÁTICA]`** (prática de mercado ≠ exigência
   legal). Nunca misture as duas sem marcar.
3. **PRs que tocam `01-nrs-texto-oficial/` são recusados por padrão** — a atualização de norma
   é feita pelo mantenedor via `_meta/download-nrs.sh` a partir do PDF oficial do gov.br.
   Detectou portaria nova? Abra a issue "Norma desatualizada", que é o caminho certo.
4. **Rode os gates antes de submeter** e cole o resumo no PR:
   ```bash
   _meta/check-citacoes.sh
   _meta/check-links.sh
   ```
   Os dois precisam terminar sem erro fatal e sem `NAO-ENCONTRADO` — e as contagens de
   `PAREAMENTO-AMBIGUO` e `NR-DESCONHECIDA` **não podem aumentar** em relação à `main` (aviso
   não é licença: número novo nessas classes precisa ser justificado no PR). A CI roda os dois
   gates automaticamente. Requisitos locais: `bash` + `python3` (somente biblioteca padrão).
5. **Dados de exemplo são fictícios e marcados como tal** (nada de dados reais de obra,
   empresa ou pessoa).

**Escopo aceito:** correções de conteúdo, atualização de normas (com portaria + link gov.br),
melhoria de fichas/matrizes, novos templates e checklists, scripts, documentação, adaptações da
skill/agente. **Fora de escopo:** aconselhamento jurídico, conteúdo sem fonte oficial, normas
estaduais e NBRs técnicas como fundamento (por ora), qualquer coisa que **enfraqueça** uma
exigência de segurança — e igualmente qualquer coisa que **invente exigência que o texto oficial
não impõe** (obrigação fabricada engana o agente de IA tanto quanto obrigação suprimida).

## Processo de review

O mantenedor confere cada citação do PR contra o texto oficial (mesma régua da auditoria
interna). PRs com trecho colado na descrição aceleram muito. Mudança que toque valor normativo
(número, periodicidade, carga horária, prazo) passa por dupla verificação antes do merge.

## Licença das contribuições

Ao contribuir, você concorda em licenciar sua contribuição sob **CC BY 4.0** (conteúdo) ou
**MIT** (scripts), as mesmas do projeto — veja [LICENSE.md](LICENSE.md).

## Conduta

Discussão técnica, com fonte, com respeito. Conduta inadequada pode ser reportada de forma
privada pelo contato do perfil [github.com/qualiobra](https://github.com/qualiobra). Discordou de um item? Traga o dispositivo e o
trecho — aqui quem decide é o texto oficial, não a opinião de quem fala mais alto.
