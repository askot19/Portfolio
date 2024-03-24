-- 6. What are the details of the cars sold in the year 2021 by salesperson 'Emily Wong'?
-- 6. Quais são os detalhes dos carros vendidos pela 'Emily Wong', durante o ano de 2021?

-- Esta questão permite observar as características específicas de um produto associadas a um funcionário ao longo de determinado ano. Elas permitem que identifiquemos as especialidades atreladas às vendas deste funcionário e estabelecer estratégias de desempenho para ele.
SELECT
     sp.name AS salesperson
   , c.*
FROM
   salespersons AS sp

INNER JOIN
   sales AS s
   ON
     s.salesman_id = sp.salesman_id
INNER JOIN
   cars AS c
   ON
     c.car_id = s.car_id
WHERE
   YEAR(s.purchase_date) = '2021'
   AND
   sp.name = 'Emily Wong';
