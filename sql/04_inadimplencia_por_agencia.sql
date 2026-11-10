-- 04. Inadimplência por agência
-- Pedido: Para cada agência, quantos contratos ela tem, quantos estão inadimplentes e qual é a taxa de inadimplência?
-- Colunas, nesta ordem: agencia, contratos, inadimplentes, taxa_inadimplencia
-- Atenção: agencia é o nome da agência. taxa_inadimplencia vai de 0 a 100 (inadimplentes ÷ contratos × 100), com 2 casas decimais.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT a.nome AS agencia,
       COUNT(*) AS contratos,
       SUM(CASE WHEN c.status = 'inadimplente' THEN 1 ELSE 0 END) AS inadimplentes,
       ROUND(100.0 * SUM(CASE WHEN c.status = 'inadimplente' THEN 1 ELSE 0 END) / COUNT(*), 2) AS taxa_inadimplencia
FROM contratos c
JOIN agencias a ON a.agencia_id = c.agencia_id
GROUP BY a.nome;
