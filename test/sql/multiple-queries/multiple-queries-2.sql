CREATE TABLE actors (
  id int PRIMARY KEY,
  name varchar(50) NOT NULL UNIQUE
);

INSERT INTO actors (name) VALUES
  ('Vivien Leigh'),
  ('Clark Gable'),
  ('Olivia de Havilland');

CREATE TABLE movies (
  id int PRIMARY KEY,
  title varchar(50) NOT NULL UNIQUE
);

INSERT INTO movies (title) VALUES
  ('Don Juan'),
  ('The Lost World'),
  ('Peter Pan'),
  ('Robin Hood'),
  ('Wolfman');

CREATE TABLE actors_movies (
    actor_id int REFERENCES actors,
    movie_id int REFERENCES movies
);

INSERT INTO
  actors_movies(actor_id, movie_id)
VALUES
  (2, 5);
