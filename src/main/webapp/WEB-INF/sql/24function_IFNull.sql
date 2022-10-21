-- null 관련 함수
-- IFNULL : 값이 없으면, 다른값으로 바꿔서 조회
SELECT ProductName ,Price FROM Products; -- 김치의 가격 null 인 상태
SELECT ProductName, IFNULL(Price, 0) FROM Products; 

SELECT AVG(IFNULL(Price, 0)) FROM Products; -- null => 0 값으로 치환하여, 평균 구하기

-- 연습) Customers 테이블에 CustomerName 이 null 이면-> 'Anonymous'로 조회되도록 하자
SELECT * FROM Customers;
SELECT CustomerID, IFNULL(CustomerName, 'Anonymous'), Address, City, PostalCode, Country FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Customers ORDER BY CustomerID DESC; -- 다시 조회하면, null 리턴