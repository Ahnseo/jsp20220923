
-- ORDER BY : 가져온 레코드(row)를 정렬함
SELECT * FROM Customers; -- 순서가 보장되지않음
SELECT * FROM Customers ORDER BY CustomerID; -- CustomerID 기준으로 정렬
SELECT * FROM Customers ORDER BY CustomerName; -- CustomerName 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City; -- Country 정렬-> City정렬

-- ASC : 오름 차순 a-z,
-- DESC : 내림 차순 z-a
SELECT * FROM Customers ORDER BY Country ASC;
SELECT * FROM Customers ORDER BY Country DESC;
SELECT * FROM Customers ORDER BY Country ASC, City DESC; -- Country오름차순, City내림차순 조합으로 조회

-- ORDER BY '컬럼 번호'로 정렬 가능하다.
SELECT * FROM Customers ORDER BY CustomerName;
SELECT * FROM Customers ORDER BY 2; -- CustomerName 기준으로 정렬
SELECT CustomerName, City FROM Customers ORDER BY 1; -- CustomerName 기준으로 정렬
SELECT CustomerName, City FROM Customers ORDER BY 2,1; -- City정렬-> CustomerName정렬

-- (연습)
SELECT * FROM Employees ORDER BY BirthDate; -- 직원 생일순 조회
SELECT * FROM Employees ORDER BY 4;

SELECT * FROM Products ORDER BY ProductName ASC; -- 상품명 순으로 상품 조회
SELECT * FROM Products ORDER BY Price DESC; -- 가격이 높은것부터 조회

SELECT Country, city FROM Suppliers ORDER BY 1, 2; -- 공급자 나라, 도시 순으로 조회
SELECT Country, city FROM Suppliers ORDER BY Country, city;
SELECT * FROM Suppliers ORDER BY 7, 5; -- 위 와 같다.

SELECT * FROM Products WHERE CategoryID=1 ORDER BY 2, 6 DESC; -- 조합 예시



 
