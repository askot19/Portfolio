-- 10. What is the date and the score of the match with match_id = 3?
SELECT
    match_date
  , score_team1
  , score_team2
FROM
  Matches
WHERE
  match_id = 3;
