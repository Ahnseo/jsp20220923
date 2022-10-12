
-- IN : 나열된 값 중에 일치하면, 레코드(row) 가져옴
SELECT * FROM Customers WHERE Country ='Mexico' OR Country ='Germany';
SELECT * FROM Customers WHERE Country In('Mexico', 'Germany');

SELECT * FROM Customers WHERE City IN('Madrid', 'München', 'London');
SELECT * FROM Suppliers WHERE Country IN('UK', 'USA', 'Japan');
SELECT * FROM Products WHERE CategoryID IN(1, 2, 3); 
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate IN('1996-07-08', '1996-07-19');

-- BETWEEN :  범위 내의 조건
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31'; -- '1996-08-01' 이상,  '1996-08-31' 이하
SELECT * FROM Products WHERE Price BETWEEN 10.00 AND 20.00; -- 10.00 이상, 20.00 이하
SELECT * FROM Orders WHERE OrderDate BETWEEN '1998-01-01' AND '1998-01-31';
SELECT * FROM Employees 
WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31';

-- (연습)
SELECT * FROM Products WHERE ProductName In('Chais', 'Konbu', 'Gumbär Gummibärchen');
SELECT ProductID, ProductName FROM Products WHERE ProductID IN(1, 3);
SELECT * FROM Products WHERE Price BETWEEN 50.00 AND 100.00;
SELECT EmployeeID, FirstName, LastName, BirthDate FROM Employees WHERE FirstName BETWEEN 'J' AND 'M';


-- LIKE : 패턴으로 레코드 조회 
-- % : 문자가 0개 이상 
-- _ : 하나의 문자 아무거나(문자가 꼭 있어야 함, 공백 포함) 
SELECT * FROM Customers WHERE CustomerName LIKE 'A%'; -- 대소문자 구분없이
SELECT * FROM Customers WHERE CustomerName LIKE '%A'; -- 대소문자 구분없이
SELECT * FROM Customers WHERE CustomerName LIKE '%ER%'; -- 문자 사이 ER 이 있는 경우
SELECT * FROM Customers WHERE CustomerName LIKE '_R%'; -- 두번째글자가 r 인 경우
SELECT * FROM Customers WHERE CustomerName LIKE 'A_%_%'; -- A로 시작하고 3글자 이상~!
SELECT * FROM Customers WHERE CustomerName LIKE 'A%E'; -- A로 시작하고 E로 끝나는

SELECT * FROM Employees WHERE FirstName LIKE 'A%'; -- A로 시작하는 FirstName 직원들
SELECT * FROM Suppliers WHERE ContactName LIKE '%E'; -- E로 끝나는 ContactName 공급자들
SELECT * FROM Products WHERE ProductName LIKE 'C%S'; -- C로 시작하고, S로 끝나는 상품이름들
SELECT * FROM Products WHERE ProductName LIKE 'C____'; -- C로 시작하는 5글자 상품이름들





