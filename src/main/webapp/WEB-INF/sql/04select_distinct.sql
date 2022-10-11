SELECT * FROM Customers;
SELECT Country FROM Customers; -- 91rows

-- distinct : 중복되는 값 제거
SELECT DISTINCT Country FROM Customers; -- 21rows
SELECT DISTINCT City, Country FROM Customers; -- 69rows

-- (연습) Suppliers 테이블의 Country 컬럼을 중복 제거없이 조회
SELECT Country FROM Suppliers; -- 29rows
-- (연습) Suppliers 테이블의 Country 컬럼을 중복 제거해서 조회
SELECT DISTINCT Country FROM Suppliers; -- 16rows




