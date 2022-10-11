-- WHERE 연산자 not equals : <> , != 
-- 회사마다 다르니까, 회사 선배님들 것을 보고 사용하세요

SELECT * FROM Customers WHERE Country <> 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country <> 'Germany'; -- 80
SELECT * FROM Customers WHERE Country != 'Mexico'; -- 86
SELECT * FROM Customers WHERE Country != 'Germany'; -- 80

-- (연습) Suppliers 테이블에서 국가가 Japan이 아닌 공급자들 조회
SELECT * FROM Suppliers WHERE Country != 'Japan'; -- 27
SELECT * FROM Suppliers WHERE Country <> 'Japan'; -- 27
-- (연습)
SELECT COUNT(*) FROM Suppliers WHERE Country <> 'Japan'; -- 27
SELECT * FROM Employees WHERE EmployeeID != 1; -- 8
