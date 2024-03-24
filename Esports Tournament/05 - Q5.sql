-- 5. What are the player names and their roles in the team with team_id = 1?
SELECT
    p.player_name
  , p.role
  , t.team_name
FROM
  Players AS p
INNER JOIN
  Teams AS t
  ON
    p.team_id = t.team_id
WHERE
  p.team_id = 1
ORDER BY
  p.player_name;
