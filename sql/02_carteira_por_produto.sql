-- 02. Carteira por produto
-- Pedido: Para cada produto, quantos contratos existem e quanto foi emprestado no total?
-- Colunas, nesta ordem: produto, contratos, total_emprestado
-- Atenção: Ordene do maior total emprestado para o menor.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT produto, COUNT(*) AS contratos, SUM(valor_emprestado) AS total_emprestado
FROM contratos
GROUP BY produto
ORDER BY total_emprestado DESC;
