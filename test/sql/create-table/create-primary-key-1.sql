CREATE TABLE bees (
  id int,
  color int,
  hive_id int UNIQUE,
  PRIMARY KEY (id) ON CONFLICT FAIL
);
