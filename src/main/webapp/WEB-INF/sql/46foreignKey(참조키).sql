CREATE DATABASE mydb2;
USE mydb2;

-- 복붙
CREATE TABLE Products AS 
SELECT * FROM w3schools.Products;
CREATE TABLE Categories AS 
SELECT * FROM w3schools.Categories;

-- 확인중..
DESC Products;
DESC Categories;

-- Primary 설정 
ALTER TABLE Products
ADD PRIMARY KEY (ProductID);
ALTER TABLE Categories
ADD PRIMARY KEY (CategoryID);

ALTER TABLE Products
ADD FOREIGN KEY (CategoryID) 
REFERENCES Categories(CategoryID); -- CategoryID 1 ~ 8 만 사용 가능

SELECT * FROM Products;
SELECT * FROM Categories;
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('lobster', 1, 8, '12EA /1box ', 199.9); -- ProductID 0번으로 등록되었네..?

-- 상품테이블 에서 카테고리id = 8 일때,
-- 'Description' 조회
SELECT CategoryID, ProductName FROM Products WHERE CategoryID = 8;

-- 확인중..
DESC Products;
DESC Categories;


 