-- JOIN : 두 개 이상의 테이블을 연결해서 조회할 수있다.

CREATE DATABASE mydb5;
USE mydb5;
-- 복사해오기 ----------------------------------------------------
CREATE TABLE Categories AS
SELECT CategoryID, CategoryName FROM w3schools.Categories;

CREATE TABLE Products AS
SELECT ProductID, ProductName, CategoryID FROM w3schools.Products;
-- ---------------------------------------------------------------
-- Categories : Products = 1 : n 관계
SELECT * FROM Categories;
SELECT * FROM Products;

-- 'Chais' 상품이 어떤 카테고리명에 소속되어 있는가 ?
SELECT * FROM Products WHERE ProductName ='Chais';
SELECT * FROM Categories WHERE CategoryID = 1;

SELECT * FROM Categories WHERE CategoryID = (SELECT CategoryID FROM Products WHERE ProductName = 'Chais');
-- ######################################################################################################
-- JOIN : 두 개 이상의 테이블을 연결해서 조회할 수있다. --------------------------------------
-- CARTESIAN PRODUCT : 집합 A,B 의 곱셈
-- 결과 행row : A row x B row
-- 결과 열col : A col + B col
DESC Products; -- 3col
SELECT COUNT(*) FROM Products; -- 77row

DESC Categories; -- 2col
SELECT COUNT(*) FROM Categories; -- 8row
-- Products, Categories 테이블의 카테시안곱(두집합의 곱)은
-- 결과 행 : Products 77 row x Categories 8 row = 616 row
-- 결과 열 : Products 3 col + Categories 2 col = 5col

SELECT * FROM Products JOIN Categories; -- 5 col ,616 row

SELECT * FROM Products JOIN Categories WHERE Products.CategoryID = Categories.CategoryID; -- 이렇게 Where 를 써도 되지만,

-- 주로 사용하는 키워드 ON   ###########################################################################################
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 'Chais' 상품이 어떤 카테고리명에 소속되어 있는가 ? JOIN _ ON _ WHERE 조합하자.
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Products.ProductName = 'Chais';
-- ------------------------------------------------------------------------------------------------------------------------------

-- 연습) Ikura 라는 상품의 카테고리명 조회
SELECT Categories.CategoryName FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Products.ProductName = 'Ikura';
                                                                  --    CategoryID  =         CategoryID

-- 연습) Seafood 카테고리에 속한 상품명들을 조회
SELECT Products.ProductName FROM Categories
 JOIN Products ON Categories.CategoryID = Products.CategoryID WHERE Categories.CategoryName = 'Seafood';
					  --    CategoryID  =         CategoryID
 
-- ALIAS : 테이블명 컬럼명에 별칭을 넣어 반복되는 명칭을 줄여 작성할 수 있다. c, p 등등 줄이면, 가능한 일관성있게 사용해라
SELECT c.CategoryID, p.ProductName FROM Categories AS c 
JOIN Products AS p 
ON c.CategoryID = p.CategoryID 
WHERE p.ProductName ='Chais'; 
