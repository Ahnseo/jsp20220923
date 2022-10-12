-- USE w3schools;
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country ='Germany';

-- AND : 두 조건 모두 true 이면, row가 선택됨.
SELECT * FROM Customers WHERE Country ='Germany' AND City ='Berlin';
SELECT * FROM Customers WHERE CustomerName >='A' AND CustomerName < 'B'; -- A로 시작하는 고객들만
SELECT * FROM Customers WHERE CustomerName >='C' AND CustomerName < 'D'; -- C로 시작하는 고객들만
SELECT * FROM Customers WHERE CustomerName >='E' AND CustomerName < 'F'; -- E로 시작하는 고객들만
SELECT * FROM Products WHERE (Price >= 10.00) AND (Price < 20.00);
SELECT * 
FROM Employees 
WHERE (BirthDate >= '1950-01-01') 
  AND (BirthDate <= '1959-12-31'); -- 복잡해지니까, 괄호 사용

-- OR :  두 조건중 하나라도 true 이면, row가 선택됨.
SELECT * FROM Customers WHERE (Country='Germany') OR (Country='Mexico');
SELECT * FROM Customers WHERE (Country='USA') OR (Country='UK');
SELECT * FROM Customers WHERE (City='berlin') OR (City='london'); 
SELECT * FROM Suppliers WHERE (Country='USA') OR (Country='UK');
SELECT * 
FROM Products 
WHERE (SupplierID=1) 
   OR (SupplierID=2);
SELECT * 
FROM Products 
WHERE (SupplierID>=1) 
  AND (SupplierID<=2);

-- NOT : false -> true, true -> false
SELECT * FROM Customers WHERE NOT Country = 'Germany';
SELECT * FROM Customers WHERE Country <> 'Germany'; 
SELECT * FROM Customers WHERE Country != 'Germany';

SELECT * FROM Customers WHERE NOT Country = 'USA';
SELECT * FROM Suppliers WHERE NOT Country = 'USA';
SELECT * FROM Orders WHERE NOT ((OrderDate >='1997-01-01') AND (OrderDate <= '1997-12-31'));
SELECT * 
FROM Orders 
WHERE ! ((OrderDate >='1997-01-01') 
		AND (OrderDate <= '1997-12-31'));




