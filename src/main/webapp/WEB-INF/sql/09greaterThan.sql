-- WHERE 연산자 
-- 보다 크다 : >
SELECT * FROM Customers WHERE CustomerID > 89;
SELECT * FROM Employees WHERE EmployeeID > 5;
SELECT * FROM Employees WHERE LastName >'Callahan'; -- 오른차순 
SELECT * FROM Employees WHERE BirthDate > '1959-12-31'; -- 1960 년생 이후 직원들

-- (연습) Product 테이블에서 가격이 10.00 보다 큰 상품들 조회
SELECT * FROM Products WHERE Price > 10.00;

-- (연습) Orders 테이블에서 1998년 이후에 주문한 주문ID 조회
SELECT * FROM Orders; -- 830개
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate > '1997-12-31'; -- 270개
