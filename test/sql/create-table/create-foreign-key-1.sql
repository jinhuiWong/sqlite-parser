CREATE TABLE bees (
  id int PRIMARY KEY,
  color int,
  hive_id int UNIQUE,
  FOREIGN KEY (hive_id) REFERENCES hives
);
