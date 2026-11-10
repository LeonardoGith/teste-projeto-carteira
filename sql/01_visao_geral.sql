-- 01. Visão geral da carteira
-- Pedido: Quantos contratos existem, quanto foi emprestado no total e qual é o valor médio emprestado por contrato?
-- Colunas, nesta ordem: total_contratos, total_emprestado, ticket_medio
-- Atenção: Arredonde ticket_medio para 2 casas decimais.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT COUNT(*) AS total_contratos,
       SUM(valor_emprestado) AS total_emprestado,
       ROUND(AVG(valor_emprestado), 2) AS ticket_medio
FROM contratos;
