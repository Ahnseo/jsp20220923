SELECT * FROM Customers;

-- 한페이지당 10명 고객
-- 1페이지
SELECT * FROM Customers ORDER BY CustomerID LIMIT 0, 10;
-- 2페이지
-- 3페이지

SELECT CustomerID, CustomerName name, ContactName, Address, PostalCode, City, Country 
					FROM Customers ORDER BY CustomerID DESC;
SELECT COUNT(*) FROM Customers;
INSERT INTO Customers (CustomerName, ContactName, Address, PostalCode, City, Country )
VALUES ('','','','','','');

INSERT INTO Customers (CustomerName, ContactName, Address, PostalCode, City, Country )
SELECT CustomerName, ContactName, Address, PostalCode, City, Country FROM Customers; -- 복붙