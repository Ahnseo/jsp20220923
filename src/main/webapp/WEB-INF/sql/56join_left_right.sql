CREATE DATABASE mydb6;
USE mydb6;

CREATE TABLE TableA(
	col1 INT
);
CREATE TABLE TableB(
	c1 INT
);

INSERT INTO TableA (col1) VALUES(1),(2),(3),(4),(5);
INSERT INTO TableB (c1) VALUES(2),(4),(5),(7),(8);
-- #################################################################################
-- INNER JOIN : 컬럼들의 교집합 값 
-- = JOIN
SELECT * FROM TableA a JOIN TableB b ON a.col1 = b.c1;

-- LEFT OUTER JOIN : INNER JOIN 결과 + 왼쪽 테이블의 레코드들
-- =LEFT JOIN
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1 = b.c1;

-- RIGHT OUTER JOIN : INNER JOIN 결과 + 오른쪽 테이블의 레코드들
-- =RIGHT JOIN
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;
-- #################################################################################