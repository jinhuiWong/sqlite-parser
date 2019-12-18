-- original: fts1l.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE VIRTUAL TABLE t1 USING fts1(col_a, col_b);

  INSERT INTO t1(rowid, col_a, col_b) VALUES(1, 'testing', 'testing');
  INSERT INTO t1(rowid, col_a, col_b) VALUES(2, 'only a', null);
  INSERT INTO t1(rowid, col_a, col_b) VALUES(3, null, 'only b');
  INSERT INTO t1(rowid, col_a, col_b) VALUES(4, null, null)
;SELECT count(col_a), count(col_b), count(*) FROM t1
;DELETE FROM t1 WHERE rowid = 1;
    SELECT count(col_a), count(col_b), count(*) FROM t1
;DELETE FROM t1 WHERE rowid = 2;
    SELECT count(col_a), count(col_b), count(*) FROM t1
;DELETE FROM t1 WHERE rowid = 3;
    SELECT count(col_a), count(col_b), count(*) FROM t1
;DELETE FROM t1 WHERE rowid = 4;
    SELECT count(col_a), count(col_b), count(*) FROM t1;