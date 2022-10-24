-- DELETE : 테이블의 레코드 삭제
-- WHERE 절이 꼭 필요하다. 
-- 안쓰면, 모든 데이터 삭제된다...
-- 하기전에 SELECT 먼저해서 데이터 확인하자
-- SELECT 하고 내용을 복사해서 사용해라. 괜히 타이핑했다가 . 실수 할라.


DESC Products;
DELETE FROM Customers WHERE CustomerID =1;
SELECT * FROM Customers WHERE CustomerID =1; 


SELECT * FROM Customers WHERE CustomerID =91;
DELETE FROM Customers WHERE CustomerID =91;
SELECT * FROM Customers WHERE CustomerID =91;

-- USA 고객들 지우기
SELECT * FROM Customers  WHERE Country ='USA';
DELETE FROM Customers WHERE Country ='USA';

-- UK 고객들 지우기 
SELECT * FROM Customers WHERE Country ='UK';
DELETE FROM Customers WHERE Country ='UK';

-- Mexico 고객들 지우기
SELECT * FROM Customers WHERE Country ='Mexico';
DELETE FROM Customers WHERE Country ='Mexico';




