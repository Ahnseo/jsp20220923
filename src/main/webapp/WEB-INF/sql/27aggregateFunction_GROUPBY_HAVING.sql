-- aggregate function : 집합 함수 , 그룹 함수
-- GROUP BY

SELECT * FROM Products;

SELECT MAX(Price) FROM Products;

SELECT * FROM Products ORDER BY CategoryID, Price DESC;
SELECT CategoryID, MAX(Price) FROM Products GROUP BY CategoryID;

-- 연습) 카테고리id 별 가장 작은 값
--       카테고리id 별 평균 가격
--       카테고리id 별 가격 합
SELECT * FROM Products;
SELECT CategoryID, MIN(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, AVG(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, SUM(Price) FROM Products GROUP BY CategoryID;

-- 연습) 나라별 고객 수
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;
-- 연습) 나라별 도시별 고객수
SELECT Country, City, COUNT(*) FROM Customers GROUP BY Country, City;
-- 연습) 도시별 공급자 수
SELECT City, COUNT(*) FROM Suppliers GROUP BY City;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country, COUNT(*) FROM Customers GROUP BY Country HAVING COUNT(*) > 5; -- 결과가 5보타 큰 값만 출력하길 원해

-- 연습) 상품 테이블에서 카테고리별 평균을 구하는데, 평균 > 30 조회
SELECT CategoryID, AVG(Price) AS Price
FROM Products GROUP BY CategoryID 
HAVING AVG(Price) > 30;






