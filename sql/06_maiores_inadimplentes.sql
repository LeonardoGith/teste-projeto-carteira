-- 06. Os 10 maiores contratos inadimplentes
-- Pedido: Quais são os 10 contratos inadimplentes de maior valor emprestado? Traga também o nome do cliente e o nome da agência.
-- Colunas, nesta ordem: contrato_id, cliente, agencia, valor_emprestado
-- Atenção: Ordene do maior valor emprestado para o menor.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT c.contrato_id, cl.nome AS cliente, a.nome AS agencia, c.valor_emprestado
FROM contratos c
JOIN clientes cl ON cl.cliente_id = c.cliente_id
JOIN agencias a ON a.agencia_id = c.agencia_id
WHERE c.status = 'inadimplente'
ORDER BY c.valor_emprestado
LIMIT 10;
