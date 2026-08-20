# Como contribuir

Obrigado pelo interesse! Este repositório alimenta agentes de IA que orientam decisões reais de
segurança em canteiro — por isso o padrão de qualidade é rígido e **toda contribuição passa por
verificação contra o texto oficial** antes de entrar.

## Como este repositório funciona

Este repo é o **espelho publicado** de uma base mantida com auditoria contínua (verificação de
citações, golden set de regressão, checagem de vigência das normas). Na prática, para você:

- **Issues** são o canal principal para reportar problemas — cada uma entra no processo interno
  de não conformidade e volta corrigida num sync, **com crédito a você no CHANGELOG**.
- **PRs** são bem-vindos (regras abaixo). Ao ser aprovado, seu PR é incorporado à base auditada
  e consolidado no sync seguinte — o merge pode vir acompanhado de um commit de sincronização.

## Abrindo uma issue

Use sempre um dos formulários (issues em branco estão desativadas):

| Formulário | Quando usar |
|---|---|
| **Erro na base** | Citação errada, número trocado, link quebrado, afirmação sem lastro |
| **Norma desatualizada** | Saiu portaria nova do MTE que muda alguma das 22 NRs |
| **Melhoria** | Novo template/checklist, destilado, script ou documentação |

Na issue de erro, o campo **"evidência no texto oficial"** é obrigatório: cole o trecho do
dispositivo (os textos estão em `01-nrs-texto-oficial/`) que prova o erro. Issue sem evidência
verificável será devolvida pedindo o trecho.

## Abrindo um PR — o padrão de qualidade

As cinco regras que o review vai conferir (as mesmas da auditoria interna):

1. **Toda afirmação normativa nova cita NR + item** (ex.: "NR-18, 18.9.1") **conferido no texto
   oficial de `01-nrs-texto-oficial/`** — e você cola o trecho do dispositivo na descrição do
   PR. Item "de memória" não entra.
2. **Recomendação sem item citável leva a marca `[PRÁTICA]`** (prática de mercado ≠ exigência
   legal). Nunca misture as duas sem marcar.
3. **`01-nrs-texto-oficial/` nunca é editado à mão** — só via `_meta/download-nrs.sh` a partir
   do PDF oficial do gov.br (atualização de norma: abra antes a issue "Norma desatualizada").
4. **Rode os gates antes de submeter** e cole o resumo no PR:
   ```bash
   _meta/check-citacoes.sh
   _meta/check-links.sh
   ```
   Os dois precisam terminar sem erro fatal e sem `NAO-ENCONTRADO`.
5. **Dados de exemplo são fictícios e marcados como tal** (nada de dados reais de obra,
   empresa ou pessoa).

**Escopo aceito:** correções de conteúdo, atualização de normas (com portaria + link gov.br),
melhoria de fichas/matrizes, novos templates e checklists, scripts, documentação, adaptações da
skill/agente. **Fora de escopo:** aconselhamento jurídico, conteúdo sem fonte oficial, normas
estaduais e NBRs técnicas (por ora), qualquer coisa que enfraqueça uma exigência de segurança.

## Processo de review

O mantenedor confere cada citação do PR contra o texto oficial (mesma régua da auditoria
interna). PRs com trecho colado na descrição aceleram muito. Mudança que toque valor normativo
(número, periodicidade, carga horária, prazo) passa por dupla verificação antes do merge.

## Licença das contribuições

Ao contribuir, você concorda em licenciar sua contribuição sob **CC BY 4.0** (conteúdo) ou
**MIT** (scripts), as mesmas do projeto — veja [LICENSE.md](LICENSE.md).

## Conduta

Discussão técnica, com fonte, com respeito. Discordou de um item? Traga o dispositivo e o
trecho — aqui quem decide é o texto oficial, não a opinião mais alta.
