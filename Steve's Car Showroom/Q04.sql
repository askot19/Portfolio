-- 4. What are the details of the cars sold by each salesperson?
-- 4. Quais são os detalhes dos carros vendidos por cada funcionário?

-- Permite identificarmos se os funcionários estão mais familiarizados com algum tipo/modelo de carro específico. É possível identificar vieses inconscientes que prejudiquem as vendas, ou até mesmo classificar equipes mais eficazes nas vendas de acordo com os tipos e modelos que os funcionários mais vendem.

SELECT
   sp.name
 , c.*
 FROM
   sales AS s
INNER JOIN
   cars AS c
   ON
     c.car_id = s.car_id
INNER JOIN
   salespersons AS sp
   ON
     sp.salesman_id = s.salesman_id
ORDER BY
   sp.name;
