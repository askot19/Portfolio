-- 9. What is the name and city of the salesperson who sold the most number of cars in the year 2023?
-- 9. Qual o nome e a cidade do funcionário que vendeu o maior número de carros no ano de 2023?

-- Esta questão permite enxergar o funcionário com o maior empenho em vendas, esta é uma nova métrica também associada ao desempenho, pois embora possa não ser o maior faturamento, o maior número de vendas pode estar associado a um funcionário que cativa os clientes.

SELECT
     sp.name
   , sp.city  
   , COUNT(s.salesman_id) AS total_cars_sold
FROM
  salespersons AS sp
INNER JOIN
  sales AS s
  ON
    sp.salesman_id = s.salesman_id
WHERE
  YEAR(s.purchase_date) = '2023'
GROUP BY
  sp.name,
  sp.city
ORDER BY
  total_cars_sold DESC
LIMIT
  1;
