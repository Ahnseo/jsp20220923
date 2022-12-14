USE w3schools;

SELECT * FROM Products;
SELECT * FROM Suppliers;
SELECT * FROM Products p JOIN Suppliers s On p.SupplierID = s.SupplierID;

-- 'Tofu' 상품을 공급하는 공급자명의 도시를 조회해라 
SELECT s.City FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE p.ProductName ='tofu';
-- (상품명, 공급자, 도시 또한 조회해보자)
SELECT p.ProductName, s.SupplierName, s.City FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE p.ProductName ='tofu';

-- " Mayumi's " 가 공급하는 상품명들 조회
SELECT p.ProductName, s.SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE s.SupplierName ="Mayumi's";
SELECT p.ProductName, s.SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE s.SupplierName ='Mayumi''s';

-- '1996-07-04' 주문한 고객명 조회
SELECT * FROM Orders WHERE OrderDate ='1996-07-04';
-- '1996-07-04' 주문을 처리한 직원명 조회
-- '1996-07-04' 주문을 배송한 배송자명 조회
SELECT * FROM Orders ; 
SELECT * FROM Employees ;
SELECT * FROM Shippers ;

SELECT CONCAT(e.lastName, ' ', e.firstName ) FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID WHERE OrderDate ='1996-07-04';

SELECT s.ShipperName FROM Orders o JOIN Shippers s ON o.ShipperID = s.ShipperID WHERE OrderDate ='1996-07-04';


SELECT CustomerName FROM w3schools.Customers WHERE CustomerId = 77;
SELECT BirthDate FROM Employees WHERE EmployeeId = 3;

SELECT BirthDate FROM Employees;


    
