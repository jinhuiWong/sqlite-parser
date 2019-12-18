CREATE TABLE bees (
  id int PRIMARY KEY,
  color int,
  hive_id int UNIQUE REFERENCES hives(id)
);
