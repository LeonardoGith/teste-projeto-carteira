-- 10. Atraso médio por produto
-- Pedido: Considerando só os pagamentos feitos depois do vencimento da parcela, quantos pagamentos atrasados cada produto teve e qual foi o atraso médio em dias?
-- Colunas, nesta ordem: produto, pagamentos_atrasados, atraso_medio_dias
-- Atenção: atraso_medio_dias com 2 casas decimais.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT c.produto,
       COUNT(*) AS pagamentos_atrasados,
       ROUND(AVG(g.data_pagamento - p.data_vencimento), 2) AS atraso_medio_dias
FROM pagamentos g
JOIN parcelas p ON p.parcela_id = g.parcela_id
JOIN contratos c ON c.contrato_id = p.contrato_id
WHERE g.data_pagamento > p.data_vencimento
GROUP BY c.produto;
