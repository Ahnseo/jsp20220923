-- DATABASE 스키마 만들기
CREATE DATABASE mydb1;

-- 데이터베이스 선택 사용하기
USE mydb1;
USE w3schools;

SELECT * FROM customers;

-- 다른 database에 있는 테이블 사용하기, 앞에 스키마명 붙여서 사용
USE mydb1;
SELECT * FROM w3schools.Customers;

