-- WHERE : 결과 행의 조건을 작성할 수 있는 키워드. 
-- 즉, 어떤 레코드가 테이블에서 얻고 싶은지 문의하기
/* WHERE절 연산자
=			Equal	
>			Greater than	
<			Less than	
>=			Greater than or equal	
<=	    	Less than or equal	
<>	    	Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN		Between a certain range	
LIKE		Search for a pattern	
IN			To specify multiple possible values for a column
*/

SELECT * FROM Customers WHERE Country ='Mexico';

-- (연습)Customers 테이블에서 Country가 France인 레코드만 조회하기
SELECT * FROM Customers WHERE Country ='France';

-- (연습)Customers 테이블에서 Country가 UK인 레코드만 조회하기
SELECT * FROM Customers WHERE Country ='UK';

-- (연습)Customers 테이블에서 Country가 France인 고객의 이름만 조회
SELECT CustomerName FROM Customers WHERE Country ='France';

-- (연습)Customers 테이블에서 Country가 Japan인 공급자명(SupplierName)의 이름만 조회
SELECT SupplierName FROM Suppliers WHERE Country='Japan';



