SELECT m.title, r.id "Theatre Number"
FROM movies m
INNER JOIN (
  SELECT r2.movie_id
  FROM rooms r2
  WHERE r2.seats >= 50
) AS r
ON m.id = r.movie_id AND m.title != 'Batman';
