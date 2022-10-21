-- 내장 함수들 : MIN MAX COUNT AVG SUM
USE w3schools;

-- MIN : 가장 작은 값을 리턴
-- MAX : 가장 큰 값을 리턴
SELECT * FROM Products;

SELECT MIN(Price) FROM Products;
SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers; 
SELECT MAX(CustomerName) FROM Customers; 
SELECT * FROM Customers ORDER BY CustomerName DESC;

SELECT MIN(BirthDate) FROM Employees; -- 가장 나이 많은 사람
SELECT MAX(BirthDate) FROM Employees; -- 가장 어린 사람

-- COUNT : 몇 개의 데이터가 있는지 리턴
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers; -- COUNT 함수는 null을 생략하고 리턴
INSERT INTO Customers(ContactName, City, Country) VALUES('SEO', 'seoul','korea'); -- CustomerName =null로 데이터 저장해보고 다시 확인하면,
																				 -- COUNT 함수는 null을 생략하고 리턴
SELECT * FROM Customers;

-- 연습) 100.00달러가 넘는 상품의 수 
SELECT COUNT(*) FROM Products;
-- 연습) 60년대에 태어난 직원의 수
SELECT COUNT(BirthDate) FROM Employees WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31'; -- 60년1월1일 이상, 69년12월31일 이하.

-- AVG : 평균 값 리턴, null값은 뺴고 계산한다
SELECT AVG(Price) FROM Products;
INSERT INTO Products (ProductName) VALUES('Kimchi'); -- Price null
SELECT AVG(Price) FROM Products; -- 다시 확인, null 값은 뺴고 계산한다.

SELECT * FROM OrderDetails;
-- 평균 주문 수량
SELECT AVG(Quantity) FROM OrderDetails;

-- SUM : 총합 리턴
SELECT SUM(Quantity) FROM OrderDetails;

