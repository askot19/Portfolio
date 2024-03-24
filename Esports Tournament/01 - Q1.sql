-- 1. What are the names of the players whose salary is greater than 100,000?
-- 1. Quais são os nomes dos jogadores que possuem salário maior que 100.000?

-- Esta questão pode nos servir para encontrar o jogadores mais custosos e questionar se estes altos salários estão associados aos jogadores com maiores desempenhos nos times.
SELECT
     player_name
  ,  salary
FROM
   Players
WHERE
   salary > 100000
ORDER BY
   salary DESC;
