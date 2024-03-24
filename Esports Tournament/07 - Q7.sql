-- 7. What is the average salary of players in the teams with country 'USA'?
SELECT
    t.team_name
  , AVG(p.salary) AS average_alary
FROM
  Teams AS t
INNER JOIN
  Players AS p
  ON
    t.team_id = p.team_id
WHERE
  t.country = 'USA'
GROUP BY
  t.team_name
ORDER BY
  t.team_name;
