SELECT m.title, r.id "Theatre Number"
FROM movies m
LEFT OUTER JOIN rooms r
ON m.id = r.movie_id;
