-- WHERE절 연산자  = : 같다.
 
  SELECT * FROM Customers WHERE Country='UK'; -- 문자열은 작은/큰 따옴표 사용 , 보통 작은따옴표 사용
  SELECT * FROM Customers WHERE Country="UK"; 
 
 -- 작은 따옴표 표현은 작은 따옴표 2개 사용
  SELECT * FROM Customers WHERE CustomerName = 'B''s Beverages';
  SELECT * FROM Customers WHERE CustomerName = 'B\'s Beverages';
  
  -- 문자열은 대소문자를 구분하지않는다. 회사마다 다름 
  SELECT * FROM Customers WHERE Country='Mexico';
  SELECT * FROM Customers WHERE Country='mexico';
  SELECT * FROM Customers WHERE Country='MEXICO'; 
  
  -- 수(Number) 형식 비교
  SELECT * FROM Customers WHERE CustomerID = 3; -- OK  보통 작은 따옴표 생략 함.
  SELECT * FROM Customers WHERE CustomerID ='3'; -- OK..
  
  -- (연습) Suppliers 테이블에서 SupplierID 가 5 번인 레코드 조회
  SELECT * FROM Suppliers WHERE SupplierID =5;
  
  -- (연습) Employees 테이블에서 FirstName 가 Nancy인 레코드 조회
  SELECT * FROM Employees WHERE FirstName ='Nancy';
  
  -- (연습) Employees 테이블에서 FirstName이 Janet인 사람의 BirthDate 레코드 조회
  SELECT BirthDate FROM Employees WHERE FirstName ='Janet'; -- 1963-08-30