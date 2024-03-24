-- 1. What are the details of all cars purchased in the year 2022?
-- 1. Quais são os detalhes dos carros vendidos em 2022?

-- Este tipo de questão de negócio nos serve para compreender quais características envolvem os produtos mais populares, podendo investir em produtos semelhantes no ano seguinte.
-- Também são ferramentas que permitem entender quais características são menos procuradas, impopulares e são evitadas pelos clientes. Fazendo pequenos ajustes no código é possível encontrar as características opostas aquelas encontradas nas que são populares entre os clientes.

SELECT
    cars.car_id
  , cars.make
  , cars.type
  , cars.style
  , cars.cost_$
  , salespersons.name
  , sales.purchase_date
FROM
  ((cars INNER JOIN
  sales
  ON
    cars.car_id = sales.car_id)
INNER JOIN
  salespersons
  ON
    sales.salesman_id = salespersons.salesman_id)    
WHERE
  YEAR(sales.purchase_date) = '2022'
ORDER BY
  cars.car_id;
