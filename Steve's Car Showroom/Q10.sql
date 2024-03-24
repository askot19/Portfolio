-- 10. What is the name and age of the salesperson who generated the highest revenue in the year 2022?
-- 10. Qual o nome e a idade da pessoa que gerou a maior receita no ano de 2022?

-- Esta questão nos permite identificar as características associadas ao funcionário com maior faturamento, elas pondem indicar um perfil de funcionário para contratações futuras. Contudo, devemos tomar cuidado para que o rastreamento deste perfil não esteja enviesado.

SELECT
    sp.name
  , sp.age
  , SUM(c.cost_$) AS total_revenue
FROM
  salespersons AS sp
INNER JOIN
  sales AS s
  ON
    sp.salesman_id = s.salesman_id
INNER JOIN
  cars AS c
  ON
    s.car_id = c.car_id
WHERE
  YEAR(s.purchase_date) = '2023'
GROUP BY
    sp.name
  , sp.age
ORDER BY
  total_revenue DESC
LIMIT
  1;
