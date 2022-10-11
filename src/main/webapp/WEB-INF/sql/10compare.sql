-- greater than equal : >=
-- less than : <
-- less than equal : <=

-- 고객ID가 81 이상인 고객들 조회
SELECT CustomerID, CustomerName FROM Customers WHERE CustomerID >= 81;

-- 직원 이름 LastName 이   'a'/ 'b'로 시작하지 않는 직원들 조회
SELECT * FROM Employees WHERE LastName >= 'c';

-- 주문일자가 1998년 이후 인 주문들
SELECT  *FROM Orders WHERE OrderDate > '1997-12-31'; 