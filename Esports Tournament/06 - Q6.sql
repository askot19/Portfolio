-- 6. What are the team names and the number of matches they have won?
SELECT
    t.team_name
  , COUNT(m.winner_id) AS total_wins
FROM
  Teams AS t
INNER JOIN
  Matches AS m
  ON
    t.team_id = m.winner_id
GROUP BY
  t.team_name
ORDER BY
  t.team_name;
