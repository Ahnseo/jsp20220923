-- ALIAS (별명, 별칭) : 컬럼 또는 테이블의 별칭을 줄 수 있다. 즉, 컬럼명을 일시적으로 바꿀수 있다. 데이터가 바뀌는것이 아니다.
-- AS                   ..많이 쓰임

SELECT * FROM Customers;
SELECT CustomerID, CustomerName FROM Customers; -- 컬럼명을 종종 바꾸고 싶을떄가 있단말이여

SELECT CustomerID AS id,
	   CustomerName AS name
FROM Customers;

SELECT CustomerID AS id, IFNULL(CustomerName,'Anonymous') AS name FROM Customers;

-- 연습) 직원 테이블 AS 별칭으로 바꿔 조회
SELECT * FROM Employees;

SELECT EmployeeID AS id,
	FirstName AS fname,
	LastName AS lname,
    BirthDate AS birth,
    Photo,
    Notes
FROM Employees;

-- AS 생략가능!! 하지만, 쓰거나 안쓰거나 일관성있게 코드작성
SELECT EmployeeID  id,
	FirstName fname,
	LastName lname,
    BirthDate birth,
    Photo,
    Notes
FROM Employees;

-- Products 테이블에 가격 null 추가
-- Price null ->0.00 조회
-- 위 컬럼명 Price , AS 키워드 생략하고 하세요

SELECT * FROM Products;

INSERT INTO Products (ProductName) VALUES('SmartPhone');
SELECT * FROM Products ORDER BY ProductID DESC; 

SELECT ProductID id,
	   ProductName name,
	   IFNULL(Price,0) price
FROM Products ORDER BY ProductID DESC; 

 
 
 
 
 
 
