-- 3. What is the total number of players in each team?
SELECT
    t.team_name
  , COUNT(p.player_id) AS total_players
FROM
  Teams AS t
INNER JOIN
  Players AS p
  ON
    t.team_id = p.team_id
GROUP BY
  t.team_name
ORDER BY
  t.team_name;
