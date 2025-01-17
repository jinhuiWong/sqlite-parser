-- original: contrib01.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE T1 (B INTEGER NOT NULL,
                     C INTEGER NOT NULL,
                     D INTEGER NOT NULL,
                     E INTEGER NOT NULL,
                     F INTEGER NOT NULL,
                     G INTEGER NOT NULL,
                     H INTEGER NOT NULL,
                     PRIMARY KEY (B, C, D));
    
    CREATE TABLE T2 (A INTEGER NOT NULL,
                     B INTEGER NOT NULL,
                     C INTEGER NOT NULL,
                     PRIMARY KEY (A, B, C));
    
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15527);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15560);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15561);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15563);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15564);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15566);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15567);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15569);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15612);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15613);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15638);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15681);
    INSERT INTO T2(A, B, C) VALUES(702118,16183,15682);
    
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15527,6,0,5,5,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15560,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15561,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15563,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15564,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15566,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15567,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15569,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15612,6,0,5,5,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15613,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15638,6,0,5,2,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15681,6,0,5,5,0);
    INSERT INTO T1(B, C, D, E, F, G, H) VALUES(16183,15682,6,0,5,2,0)
;SELECT T2.A, T2.B, T1.D, T1.E, T1.F, T1.G, T1.H, max(T1.C), '^'
      FROM T1, T2
     WHERE T1.B = T2.B
       AND T1.C = T2.C
     GROUP BY T2.A, T2.B, T1.D, T1.E, T1.F, T1.G, T1.H
     ORDER BY +max(t1.c)
;SELECT T2.A, T2.B, T1.D, T1.E, T1.F, T1.G, T1.H, max(T1.C), '^'
     FROM T1, T2
    WHERE T1.B = T2.B
      AND T1.C = T2.C
    GROUP BY T2.A, T2.B, T1.F, T1.D, T1.E, T1.G, T1.H
    ORDER BY +max(t1.c);