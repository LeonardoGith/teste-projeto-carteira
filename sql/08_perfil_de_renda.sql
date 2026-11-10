-- 08. Perfil de renda dos clientes
-- Pedido: Separe os clientes em três faixas de renda mensal e mostre quantos clientes há em cada faixa e a renda média da faixa.
-- Colunas, nesta ordem: faixa, clientes, renda_media
-- Atenção: Faixas: 'ate_5mil' (abaixo de 5000), '5_a_10mil' (de 5000 até abaixo de 10000) e 'acima_10mil' (10000 ou mais). renda_media com 2 casas decimais.
-- Escreva uma única consulta abaixo. Teste na sua IDE e depois rode: npm test

SELECT CASE WHEN renda_mensal < 5000 THEN 'ate_5mil'
            WHEN renda_mensal < 10000 THEN '5_a_10mil'
            ELSE 'acima_10mil' END AS faixa,
       COUNT(*) AS clientes,
       ROUND(AVG(renda_mensal), 2) AS renda_media
FROM clientes
GROUP BY 1;
