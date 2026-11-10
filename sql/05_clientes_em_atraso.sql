-- 05. Clientes com parcelas em aberto
-- Pedido: Quais clientes têm parcelas vencidas e sem nenhum pagamento? Considere vencidas as parcelas com vencimento até 2026-10-31, inclusive. Para cada cliente, traga quantas parcelas estão em aberto e a soma do valor delas.
-- Colunas, nesta ordem: cliente_id, nome, telefone, parcelas_em_aberto, valor_em_aberto
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT cl.cliente_id, cl.nome, cl.telefone,
       COUNT(*) AS parcelas_em_aberto,
       SUM(p.valor) AS valor_em_aberto
FROM parcelas p
LEFT JOIN pagamentos g ON g.parcela_id = p.parcela_id
JOIN contratos c ON c.contrato_id = p.contrato_id
JOIN clientes cl ON cl.cliente_id = c.cliente_id
WHERE g.parcela_id IS NULL
  AND p.data_vencimento <= DATE '2026-10-31'
GROUP BY cl.cliente_id, cl.nome, cl.telefone;
