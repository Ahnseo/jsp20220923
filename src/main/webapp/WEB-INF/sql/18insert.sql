-- INSERT INTO : 테이블에 레코드 추가하는 명령문
-- INSERT 테이블명 (컬럼1, 컬럼2...) VALUES(값1, 값2...);  컬럼과 값은 순서와 개수를 맞춰서 입력

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10,'Son','HM','1993-01-04','EmpID10.pic','soccerPlayer');

SELECT * FROM Employees;

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11,'Ahn','Seojung', '1993-01-04', 'GuitarPlay.pic', 'Guitarist');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12,'Black','Panther','1970-01-01','empID12.pic'); 

INSERT INTO Employees
(EmployeeID, LastName, FirstName,Photo)
VALUES
(13, 'iron', 'man','empID13.pic');

-- null 은 값이 없음.
-- (연습) 새 직원 추가 , EmployeeID 컬럼 뺴고
SELECT * FROM Employees;

INSERT INTO Employees
(LastName, FirstName)
VALUES
('Natasha', 'Romard');

SELECT * FROM Customers;

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(92,'AhnSeoJung','Ahnseo','YoungDungPoGu DangSanDong','Seoul','07720','Korea');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(93,'ChoiARm','rm_rm','YoungDungPoGu DangSanDong','Seoul','07720','Korea');

DELETE FROM Customers WHERE CustomerID =92; -- 92번 지워보기
DELETE FROM Customers WHERE CustomerID =93; -- 93번 지워보기
DESC Customers; -- DESCRIBE : 테이블 구조를 조회하는 명령문
