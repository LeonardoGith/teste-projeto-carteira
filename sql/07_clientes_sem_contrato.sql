-- 07. Clientes que nunca contrataram
-- Pedido: Quais clientes estão cadastrados, mas nunca fizeram nenhum contrato?
-- Colunas, nesta ordem: nome, cidade, data_cadastro
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT cl.nome, cl.cidade, cl.data_cadastro
FROM clientes cl
WHERE NOT EXISTS (SELECT 1 FROM contratos c WHERE c.cliente_id = cl.cliente_id);
