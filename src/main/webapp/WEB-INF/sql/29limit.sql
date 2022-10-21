-- LIMIT : 조회 결과를 제한하는 키워드

SELECT * FROM Customers;
SELECT * FROM Customers LIMIT 10;

-- 가장 비싼 가격 상품 3개만 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 3;
SELECT * FROM Products WHERE Price IS NOT NULL ORDER BY Price DESC LIMIT 3;

-- 가장 나이가 많은 직원 2명 조회
SELECT * FROM Employees WHERE EmployeeID IS NOT NULL ORDER BY BirthDate LIMIT 2;
-- 가장 나이가 어린 직원 2명 조회
SELECT * FROM Employees WHERE EmployeeID IS NOT NULL ORDER BY BirthDate DESC LIMIT 2;
 
-- LIMIT n, m : n번째 까지 제외하고, m개. 필요한 레코드만 조회 ###  n+1번째 레코드부터 m개 제한해서 조회  ##########
-- 위의 배운것은 LIMIT 0, m  : 0 다음부터 m개 조회를 배운것이지.

SELECT * FROM Customers WHERE CustomerID ORDER BY CustomerID LIMIT 2, 3; -- 3번째 부터 3개의 레코드 조회
-- 연습) 직원의 나이가 두번째, 세번째로  많은 사람은?
SELECT * FROM Employees ORDER BY BirthDate LIMIT 1, 2;
-- 두번째로 어린 직원 조회
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 1, 1;
-- 두번째로 비싼 상품 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 1, 1;
-- 10번째로 가격이 비싼 상품 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 9, 1; -- CustomerID 28
SELECT * FROM Products ORDER BY Price DESC;


