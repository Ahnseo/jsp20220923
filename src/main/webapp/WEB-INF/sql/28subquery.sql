-- 서브 쿼리 : 쿼리가 다른 쿼리 안에 작성될 수 있다.

-- MAX(Price) 조회
SELECT MAX(Price) FROM Products;
-- 근데 이름을 좀 알고 싶다면, subquery 사용
SELECT * From Products
WHERE Price = (SELECT MAX(Price) FROM Products);

-- 연습) 가장 낮은 가격의 상품명 조회
SELECT * FROM Products WHERE Price = (SELECT MIN(Price) FROM Products);
-- 평균 가격보다 높은 상품들 조회
SELECT * FROM Products WHERE Price > (SELECT AVG(Price) FROM Products);

-- 평균 가격보다 낮은 상품들 조회
--   All칼럼            언제?  가격 >  가격 평균
SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products);

-- 카테고리별 평균 
SELECT CategoryID, AVG(Price) AS average FROM Products GROUP BY CategoryID;

-- 카테고리별 평균이 30 초과인 '카테고리id' 조회
SELECT *  FROM 
(SELECT CategoryID, AVG(Price) average FROM Products GROUP BY CategoryID) A 
WHERE average > 30 ;




