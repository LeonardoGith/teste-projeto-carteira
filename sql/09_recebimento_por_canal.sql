-- 09. Recebimento por canal
-- Pedido: Para cada canal de pagamento, quantos pagamentos foram feitos e quanto foi recebido no total?
-- Colunas, nesta ordem: canal, pagamentos, total_recebido
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT canal, COUNT(*) AS pagamentos, SUM(valor_pago) AS total_recebido
FROM pagamentos
GROUP BY canal;
