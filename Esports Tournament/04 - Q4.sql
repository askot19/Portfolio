-- 4. What is the team name and captain name of the team with team_id = 2?
SELECT
    t.team_id
  , t.team_name
  , p.player_name
FROM
  Teams AS t
INNER JOIN
  Players AS p
  ON
    t.captain_id = p.player_id
WHERE
  t.team_id = 2;
