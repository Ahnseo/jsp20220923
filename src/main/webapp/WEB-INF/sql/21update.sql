-- 여러행 한번에 수정하기

SELECT * FROM Customers WHERE Country ='mexico';

UPDATE Customers
SET PostalCode ='00000'
WHERE Country ='mexico'; -- 실패 이유: Key Column 으로 만, 업데이트 가능하기 때문. 

DESC Customers;

-- safe UPDATE disable  , 하지만 실제로 사용하지말것.
set SQL_SAFE_UPDATES = 0;
DESC Customers;

-- USA 국가의 고객들의 City를 New York으로 변경
SELECT * FROM Customers WHERE Country='USA';
UPDATE Customers
SET City ='New York'
WHERE  Country='USA';
SELECT * FROM Customers WHERE Country='USA';

-- UK 국가의 고객들의 address를 GangNam으로 변경
SELECT * FROM Customers WHERE Country ='UK';
UPDATE Customers
SET Address ='GangNam'
WHERE Country ='UK';
SELECT * FROM Customers WHERE Country ='UK';

UPDATE Customers
SET CustomerName=?, ContactName=?, Address=?, City=?, Country=? 
WHERE CustomerId = ? ;

SELECT * FROM Customers WHERE CustomerID = 1


