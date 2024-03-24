-- 2. What is the team name of the player with player_id = 3?
SELECT
    p.player_id
  , p.player_name
  , t.team_name
FROM
  Players AS p
INNER JOIN
  Teams AS t
  ON
    t.team_id = p.team_id
WHERE
  p.player_id = 3;
