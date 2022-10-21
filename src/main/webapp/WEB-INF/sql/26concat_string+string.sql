-- CONCAT : String을 연결한 결과 리턴

SELECT CONCAT('ab', 'cd');
SELECT CONCAT('def',' ','xyz');

SELECT * FROM Customers;
SELECT  CustomerName, CONCAT(Address, ' ', City)  AS address FROM Customers;

-- 직원 테이블에서 firstName, lastName 연결해서 FullName(별칭) 조회
SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;