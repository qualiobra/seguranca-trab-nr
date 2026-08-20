# 04-templates — Documentos de SST para obras

Templates em Markdown, prontos para uso ou adaptação, fundamentados nos textos oficiais arquivados em `../01-nrs-texto-oficial/`. Tabelas simples de propósito: a conversão para PDF, planilha ou formulário digital é etapa posterior.

| Arquivo | O que é |
|---|---|
| `controle-entrega-epi.md` | Ficha de entrega, troca e devolução de EPI: cabeçalho da obra e do empregado, tabela com data/EPI/CA/quantidade/motivo/assinatura, registro de informação no fornecimento e termo de responsabilidade do trabalhador (NR-06 e NR-01). |
| `ficha-epi-por-funcao.md` | Matriz função da obra → EPI típicos → referência normativa, para pedreiro, carpinteiro, armador, eletricista, operador de betoneira, servente e trabalho em altura. |
| `apr-analise-preliminar-risco.md` | Formulário de análise de risco por tarefa: etapas, perigos, riscos, medidas, responsáveis, condições impeditivas e aprovação. |
| `pt-permissao-trabalho.md` | Duas seções: **PT** de trabalho em altura (NR-35) e **PET** de espaço confinado (NR-33), com conteúdo mínimo, validade e encerramento de cada uma. |
| `dds-registro.md` | Registro de Diálogo Diário de Segurança: tema, data, participantes, encaminhamentos e assinaturas. |
| `ordem-de-servico-sst.md` | Ordem de Serviço por função: riscos, medidas na hierarquia legal, EPI, emergência, capacitação e ciência do trabalhador. |

## Como um agente de IA deve usar estes arquivos

1. **Preencher com dados reais da obra.** Tudo que está marcado **EXEMPLO** é fictício e deve ser substituído — razão social, CNPJ, nomes, matrículas, números de CA, datas, alturas, níveis de risco. Nunca entregar um documento com dado de exemplo remanescente.
2. **Puxar riscos e medidas do PGR do canteiro**, não de listas genéricas: o inventário de riscos e o plano de ação são a fonte (NR-01, 1.5.7.1) e, na construção, o PGR ainda carrega a relação de EPI e os projetos de proteção (NR-18, 18.4.3).
3. **Manter os itens de norma citados.** Cada campo traz o item que o fundamenta; ao adaptar o template, preserve a citação ou remova o campo — não deixe campo sem lastro parecendo exigência legal.
4. **Respeitar as marcações `[PRÁTICA]`.** Elas indicam prática de mercado sem item de NR que a imponha (o formulário chamado "APR", o DDS, escalas de severidade, prazos de guarda não fixados). Não converta prática em exigência, nem o contrário.
5. **Nunca citar item de memória.** Antes de acrescentar uma citação nova, ler o trecho correspondente em `../01-nrs-texto-oficial/` e conferir a redação vigente e a portaria que a alterou.
6. **Validar com responsável técnico.** Estes arquivos são material de apoio, **não são modelo oficial** do MTE nem substituem PGR, procedimentos operacionais, laudos ou a análise de profissional legalmente habilitado em segurança do trabalho. Documentos do PGR devem ser datados e assinados (NR-01, 1.5.7.2).
7. **Observar prazos de guarda quando existirem**: 5 anos para a documentação de trabalho em altura (NR-35, 35.3.1 "j") e para as PETs emitidas (NR-33, 33.5.9); 20 anos para o histórico de atualizações do inventário de riscos (NR-01, 1.5.7.3.3.1).

> Em caso de divergência entre estes templates e o PDF oficial da NR, **prevalece o PDF oficial** — a base local foi convertida automaticamente e cada arquivo de norma traz sua fonte, data de download e hash no cabeçalho.
