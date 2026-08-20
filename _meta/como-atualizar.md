# Como atualizar esta base

As NRs mudam por portaria do MTE a qualquer momento. Roteiro (executável por um agente de IA):

1. **Detectar**: rode `_meta/check-vigencia.sh` (compara página oficial, bytes do PDF e texto
   extraído das 22 NRs com o snapshot). Atenção à pegadinha conhecida: a página do gov.br pode
   listar mais de uma consolidação da mesma NR — confira o CONTEÚDO do texto baixado (grep pelo
   termo da portaria), nunca só o nome do arquivo. O WAF do gov.br bloqueia HEAD; use GET.
2. **Baixar**: atualize a URL da NR alterada em `_meta/download-nrs.sh` e reexecute (regenera
   PDF + Markdown com metadados e hash).
3. **Propagar**: consolidação nova pode renumerar blocos inteiros — revise TODAS as citações
   daquela NR nos destilados (fichas, matrizes, templates, treinamentos), não só o tema da
   portaria. Rode `_meta/check-citacoes.sh` e `_meta/check-links.sh` ao final.
4. Registre no `_meta/CHANGELOG.md`.

## Atualização já agendada

| Quando | O quê |
|---|---|
| **01/06/2027** | NR-10 nova redação (Portaria MTE nº 737/2026) entra em vigor — substituir o texto e revisar todos os destilados que citam NR-10 |
