
USE mydb1;
-- 테이블 만들기
CREATE TABLE myTable01 ( 
-- 컬럼명 자료형 나열 
	col1 VARCHAR(255),
    col2 VARCHAR(255),
    col3 VARCHAR(255)
  );
  SELECT * FROM myTable01;

  -- 테이블 구조 보기
  DESCRIBE myTable01;
  DESC myTable01;
  
  -- 연습) 새 테이블 만들기
  CREATE TABLE myTable02(
	name VARCHAR(255),
    age INT(11),
    address VARCHAR(255)
  );
  SELECT * FROM myTable02;
  
  -- 삭제는..사용하지말자. 만약 한다면, 항상 백업하고 , DROP TABLE myTable02;
  
  -- 이미 있는 테이블 복사하기 , 종종 사용함
  CREATE TABLE myCustomers AS
  (SELECT * FROM w3schools.Customers);
  DESC  myCustomers;
  
  -- 내가 원하는 컬럼만 골라서 w3schools.Products 테이블 복사
  CREATE TABLE myProdurcts AS
  SELECT ProductID id,
		ProductName name,
        Price price
 FROM w3schools.Products;
 
 DESC myProdurcts;
  
    

  
  
  
  
  
  