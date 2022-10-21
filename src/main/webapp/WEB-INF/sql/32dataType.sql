USE mydb1;

-- data type
-- 문자열 : VARCHAR, CHAR
-- VARCHAR : size 까지 문자열 저장가능 
DROP TABLE myTable01;
CREATE TABLE myTable01(col1 VARCHAR(5), col2 VARCHAR(2) );
INSERT INTO myTable01(col1, col2) VALUES('asdfg', 'as');
INSERT INTO myTable01(col1, col2) VALUES('qwe', 'q');
SELECT * FROM myTable01;
DESC myTable01;

INSERT INTO myTable01(col1, col2)VALUES('ahnseojung', '01'); -- x 
INSERT INTO myTable01(col1, col2) VALUES('ahn', '01');
SELECT * FROM myTable01;

CREATE TABLE myTable03(
	name VARCHAR(50),
    address VARCHAR(255)
);

-- CHAR : 고정 길이 저장,  CHAR(3) 이라면 'ab' 저장 -> 'ab ' (빈스트링으로 채움)
CREATE TABLE myTable04(
	col1 VARCHAR(3),
	col2 CHAR(3)
);
 INSERT INTO myTable04(col1, col2) VALUES('ab', 'ab');
SELECT * FROM myTable04;

-- 수 : INT, DEC (DECIMAL)

-- 날짜 : DATE, DATETIME
 
