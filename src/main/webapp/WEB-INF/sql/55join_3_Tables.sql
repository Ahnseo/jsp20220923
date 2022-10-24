
-- 3 개의 테이블 카테시안 곱하기

SELECT * FROM Customers c 
	     JOIN Orders o
		 JOIN Employees e ;
-- 결과 행 : c row * o row * e row 
-- 결과 열 : c col + o col + e col
SELECT COUNT(*) FROM Customers; -- 91
SELECT COUNT(*) FROM Orders; -- 830
SELECT COUNT(*) FROM Employees; -- 9

DESC Customers; -- 7 col
DESC Orders; -- 5 col
DESC Employees; -- 6 col
-- --------------------------------
SELECT * FROM Customers c 
	     JOIN Orders o ON c.CustomerID = o.CustomerID
		 JOIN Employees e ON o.EmployeeID = e.EmployeeID WHERE o.OrderDate = '1996-007-04';
         
-- 연습) 1996-07-04 에 주문을 처리한 직원이름과 배송자명 조회

DESC Orders; -- Orders테이블 안에 OrderID, CustomerID, EmployeeID, OrderDate, ShipperID
SELECT * FROM Orders;
DESC Employees;
DESC Shippers;

SELECT c.CustomerName, CONCAT(lastName, ' ',firstName) AS EmployeeName , s.ShipperName, o.OrderDate FROM Orders o
JOIN Employees e ON o.EmployeeID = e.EmployeeID
JOIN Shippers s ON o.ShipperID = s.ShipperID 
JOIN Customers c On o.CustomerID = c.CustomerID
WHERE OrderDate = '1996-07-04';      


-- 1996-07-04 에 주문된 상품명 조회 3개 테이플 곱
SELECT * FROM OrderDetails; -- OrderDetailID, OrderID, ProductID, Quantity

SELECT p.ProductName FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Orders o On od.OrderID = o.OrderID
WHERE o.OrderDate ='1996-07-04';

-- 1996-07-04 에 주문된 상품들의 총 주문 금액
SELECT SUM(od.Quantity *p.Price) FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Orders o On od.OrderID = o.OrderID
WHERE o.OrderDate ='1996-07-04';

-- 각 날짜멸 매출액 
SELECT o.OrderDate, SUM(od.Quantity *p.Price) FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Orders o On od.OrderID = o.OrderID
GROUP BY o.OrderDate
ORDER BY o.OrderDate DESC;    

-- 고객별 주문 총 금액 조회
SELECT * FROM OrderDetails;

SELECT c.CustomerID, c.CustomerName ,SUM( od.Quantity * p.Price) TotalPrice FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.CustomerID -- 동명이인 때문에 key로 
ORDER BY c.CustomerID;
  

