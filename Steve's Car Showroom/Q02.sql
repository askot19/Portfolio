-- 2. What is the total number of cars sold by each salesperson?
-- 2. Qual o número total de carros vendidos por cada funcionário?

-- Esta questão pode auxiliar como uma métrica de desempenho de cada funcionário. Ela auxilia a identificar quais são os destaques e, com análises mais profundas, entender quais características estão associadas a este tipo de funcionário.
-- Também auxilia a identificar os funcionários com baixo desempenho, alertando para medidas que auxiliem na correção e exemplificar boas condutas de trabalho baseadas nos funcionários de destaque.
-- Questões envolvendo desempenho de pessoal são mais complexas, então necessitam de análises também voltadas para softskills, apenas o número de vendas realizadas por cada funcionário não podem ser atribuídas como única métrica de desempenho do funcionário. Outros fatores devem ser levados em consideração.

SELECT
   sp.name
 , COUNT(s.salesman_id) AS num_of_sales
FROM ((
 salespersons AS sp
INNER JOIN
  sales AS s
    ON s.salesman_id = sp.salesman_id))
GROUP BY
  sp.name
ORDER BY
  sp.name;
