-- UPDATE : 레코드(row)의 필드(column)들을 수정
 -- 변경전 꼭 확인하기
  -- 변경후 꼭 확인하기
  -- 한번 잃어버린 데이터를 되돌리기 매우 어렵다!
  -- WHERE 를 빼먹지 말아라. 실수하면, 모든 레코드들이 업데이트 된다...
	
SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Alfred Schmit'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Maria Shcmit', City = 'Korea'
WHERE CustomerId = 1;

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- 92번 고객을 고객명, 별칭, 주소 , 도시 , 우편번호, 국가를 수정하는 쿼리 작성/실행
SELECT * FROM Customers WHERE CustomerID = 92; -- 변경전 꼭 확인하기
UPDATE Customers SET CustomerName = 'Lim Varm', ContactName='Esadora', City='Seoul', Country='Korea' WHERE CustomerId = 92;
SELECT * FROM Customers WHERE CustomerID = 92; -- 변경후 꼭 확인하기
-- 93번 고객을 고객명, 별칭, 주소 , 도시 , 우편번호, 국가를 수정하는 쿼리 작성/실행
SELECT * FROM Customers WHERE CustomerID = 93; -- 변경전 꼭 확인하기
UPDATE Customers
SET CustomerName = 'Team Bro', ContactName='Bigbro', City='Seoul', Country='Korea' 
WHERE CustomerId = 93;
SELECT * FROM Customers WHERE CustomerID = 93; -- 변경후 꼭 확인하기