-- 데이터 타입
-- 수 : INT, DEC (DECIMAL)
-- INT(size) : 정수 타입  , 저장은4bite, size설정은 출력에만 영향을 끼침 ,    - 21억 ~ 0 ~ 21억
-- java int, long
USE mydb1;

CREATE TABLE myTable05(
	col1 INT(3) ZEROFILL,
    col2 INT(4),
    col3 INT -- 기본설정 INT(11)   1 000 000 000 자리수
);
desc myTable05;
INSERT INTO myTable05(col1,col2,col3) VALUES(9,99,2100000000);
INSERT INTO myTable05(col1,col2,col3) VALUES(999,9999,2100000000);
INSERT INTO myTable05(col1,col2,col3) VALUES(999,9999,2140000000);
SELECT * FROM myTable05;

-- DEC(size) : 10진수와 소수점 설정
-- java double, bigDecimal
CREATE TABLE myTable06(
	col1 DEC(3, 1), -- 2자리수, 소수점아래 1자리
    col2 DEC(5, 2) -- 3자리수, 소수점 아래 2자리
);
INSERT INTO myTable06(col1, col2)VALUES(33.3, 333.33);
SELECT * FROM myTable06;

CREATE TABLE myTable07(
	col1 DECIMAL(10, 2),
    col2 DEC(14, 3)
);
desc myTable07;
INSERT INTO myTable07(col1, col2) VALUES(10000000.99, 2222222222.99);
SELECT * FROM myTable07;

-- 날짜 : DATE 날짜, DATETIME 날짜와 시간
-- DATE : java.sql.Date
-- DATETIME : java.sql.Timestamp 
CREATE TABLE myTable08(
	col1 DATE,
    col2 DATETIME
);
INSERT INTO myTable08(col1, col2) VALUES('2022-10-21', '2022-10-21 11:03:00');
INSERT INTO myTable08(col1, col2) VALUES('2022-12-31', '2023-01-01 23:59:59');
SELECT * FROM myTable08;

CREATE TABLE myTable09(
	col1 INT ZEROFILL,
    col2 DEC(10, 3),
    col3 VARCHAR(255),
    col4 CHAR(10),
    col5 DATE,
    col6 DATETIME
);
INSERT INTO myTable09(col1, col2, col3, col4, col5, col6)VALUES();

SELECT * FROM myTable09;

CREATE TABLE myTable10(
	name VARCHAR(255),
    age INT,
    score DEC(10,2),
    address VARCHAR(255),
    birthdate DATE,
    inserted DATETIME
);

SELECT * FROM myTable10;
set SQL_SAFE_UPDATES = 0; -- LOCK 해제 
DELETE FROM myTable10 WHERE inserted ='2022-10-21 11:40:16';
set SQL_SAFE_UPDATES = 1; -- LOCK 
SELECT * FROM myTable09;
desc myTable09;

