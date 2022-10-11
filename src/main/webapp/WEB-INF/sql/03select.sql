-- SELECT : 데이터를 얻는 명령문
/*
SELECT 컬럼명리스트 FROM 테이블명;
*/ 
-- Customers 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName 열 조회
SELECT CustomerName FROM Customers;

-- Customers 테이블의 모든 레코드를 CustomerName, Address 열 조회
SELECT CustomerName, Address FROM Customers;

-- Employees 테이블의 모든 레코드(행)을 LastName, BirthDate 열 조회
SELECT LastName, BirthDate FROM Employees;

/*
 sql 작성시 주의할 점
 대소문자를 구별하지 않는다.
 하지만, 데이터베이스 종류에 따라 구분할 수도 있다.  
 => 오라클은 테이블명에서 대소구분 안하지만, mariaDB는 테이블명 대소구분 한다.
 그럼 막 섞어써도되냐 ? 회사마다 다르지만, 
 지금 우리는
 키워드는 대문자,
 그외 소문자 or CamelCase 사용하겠다.

*/
SELECT LastName,BirthDate FROM Employees; -- 권장
SELECT lastName, birthDate FROM Employees; -- 권장하지않음
select lastName, birthDate from employees; -- 권장하지않음

-- 모든 컬럼 : *
SELECT * FROM Customers;
SELECT
	CustomerID,
    CustomerName,
    ContactName,
    Address,
    City,
    PostalCode,
    Country
FROM
	Customers;
    
-- Employees 테이블의 모든 레코드와 모든 컬럼 조회
SELECT * FROM Employees;

-- SELECT 이후 컬럼의 순서가 결과의 순서가 된다.
SELECT CustomerName, Address FROM Customers; -- 순서가 다르다
SELECT Address, CustomerName FROM Customers; -- 순서가 다르다

-- Employees 테이블의 모든 레코드를 FirstName, LastName, BirthDate 순서대로 컬럼 조회
SELECT FirstName, LastName, BirthDate FROM Employees;
-- Employees 테이블의 모든 레코드를 LastName, FirstName, BirthDate 순서대로 컬럼 조회
SELECT LastName, FirstName, BirthDate FROM Employees;