-- 9. What are the team names and the number of players in each team whose salary is greater than 100,000?
SELECT
    t.team_name
  , COUNT(p.player_id) AS num_players
FROM
  Teams AS t
INNER JOIN
  Players AS p
  ON
    t.team_id = p.team_id
WHERE
  p.salary > 100000
GROUP BY
  t.team_name
ORDER BY
  t.team_name;
