USE w3schools;

CREATE TABLE Salary(
	EmployeeId INT PRIMARY KEY,
    Salary INT DEFAULT 0
);

SELECT * FROM Employees; -- 9명

INSERT INTO Salary (EmployeeId, Salary) 
VALUES  (1, 1000),
		(2, 1000),
        (3, 2000),
        (4, 2000),
        (5, 1000),
        (6, 1500),
        (7, 2000),
        (8, 3000),
		(9, 4000);
     
     
ALTER TABLE Employees ADD COLUMN Salary INT; -- 컬럼 추가 했다가..
ALTER TABLE Employees DROP COLUMN Salary; -- 필요 없어서 드롭함.
DESC Employees; -- 컬럼 드롭 확인.

-- ex27/sub02 스프링으로, 2개의 INSERT 쿼리를 Transaction 하여. 등록하고, 아래 SELECT 확인 중.
SELECT * FROM Salary ORDER BY 1 DESC; 
SELECT * FROM Employees ORDER BY 1 DESC;
SELECT e.EmployeeID, CONCAT(e.firstname,' ',e.lastname) AS NAME, s.salary FROM Employees e JOIN Salary s ON e.EmployeeID = s.employeeId WHERE e.EmployeeID = 13 ;


select * FROM OrderDetails ORDER BY 2 desc;
DESC OrderDetails;
SELECT * FROM Products ORDER BY 1 DESC ;
SELECT * FROM OrderDetails;
-- ProductName , quantity 를 입력하면, 각각의 테이블에 저장되도록 스프링 post방식 INSERT 쿼리를 작성해보자
-- ex27/sub03
SELECT * FROM Products ORDER BY 1 DESC ;
select * FROM OrderDetails WHERE ProductID =80; -- 맘스터치 수량 체크