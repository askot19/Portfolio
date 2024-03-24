-- 8. Which team won the most matches?
SELECT
    t.team_name
  , COUNT(m.winner_id) total_wins
FROM
  Teams AS t
INNER JOIN
  Matches AS m
  ON
    t.team_id = m.winner_id
GROUP BY
  t.team_name
ORDER BY
  total_wins DESC
LIMIT
  1;
