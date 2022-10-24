USE Cinema;
-- 
-- desc Orders;DirectorDirectorDirectordirectorIDname
-- desc Customers;
-- desc Employees;
-- DESC Shippers;

-- AlTER TABLE Orders ADD FOREIGN KEY (CustomerId) References Customers (CustomerID);
-- ALTER TABLE Orders ADD FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID);
-- ALTER TABLE Orders ADD FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID);
-- desc Orders;

-- 영화 페이지 만들려면,

-- 영화 TABLE
-- ID primaryKey (PK)
-- 제목
-- 장르
-- 상여시간
-- 개봉일
-- 감독
-- 배우 

-- 배우 TABLE
-- ID primaryKey (PK)
-- 배우명

-- 영화-배우 TABLE 
-- 영화 ID
-- 배우 ID  
-- PK (영화 ID, 배우 ID)

-- 감독TABEL 또한 여려명 일수있으니 배우TABLE 처럼
-- 장르TABEL 또한 여러장르 일수있으니 배우TABLE 처럼

-- CREATE SCHEMA Cinema;

CREATE TABLE CinemaPage1(
	id INT PRIMARY KEY NOT NUll AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    genreID INT NOT NULL ,
    time TIME DEFAULT 0, -- 아직 개봉일이 정해지지않아, 비공개라면 null을 허용하지만, null은 관리하기 힘드니까 디폴트 0 을 주자. 
    date DATE ,
    directorID INT NOT NULL,
    ActorID INT NOT NULL
);

CREATE TABLE genre(
	id INT PRIMARY KEY NOT NUll AUTO_INCREMENT,
    name VARCHAR(255)
);
INSERT INTO genre (name) VALUES ('comidy');
INSERT INTO genre (name) VALUES ('액션');

-- 영화 + 장르 테이블 : 하나의 장르는 여러 영화에 적용될 수 있으므로
CREATE TABLE CinemaGenre(
	movieID INT NOT NULL,
	genreID INT NOT NULL,
    FOREIGN KEY(movieID) REFERENCES CinemaPage1(id),
    FOREIGN KEY(genreID) REFERENCES genre(id),
    PRIMARY KEY(movieID, genreID)
);


-- ----------------------------------------------------------------

CREATE TABLE director(
	id INT PRIMARY KEY NOT NUll AUTO_INCREMENT,
    name VARCHAR(255)
);
INSERT INTO director (name) VALUES ('안서정');

-- 영화 + 감독 테이블  : 한명의 감독이 여러 영화를 만들 수 있으므로
CREATE TABLE CinemaDirector(
	movieID INT NOT NULL,
	directorID INT NOT NULL,
    FOREIGN KEY(movieID) REFERENCES CinemaPage1(id),
    FOREIGN KEY(directorID) REFERENCES director(id),
    PRIMARY KEY(movieID, directorID)
);
-- ---------------------------------------------------------------

CREATE TABLE actor(
	id INT PRIMARY KEY NOT NUll AUTO_INCREMENT,
    name VARCHAR(255)
);
INSERT INTO actor (name) VALUES ('황정민');
INSERT INTO actor (name) VALUES ('하정우');

-- 영화 + 배우 테이블  : 한명의 배우가 여러 영화에 참여할 수 있으므로
CREATE TABLE CinemaActor(
	MovieID INT NOT NULL,
    actorID INT NOT NULL,
    
    FOREIGN KEY(MovieID) REFERENCES CinemaPage1(id),
	FOREIGN KEY(actorID) REFERENCES actor(id),
    PRIMARY KEY(MovieID, actorID)
);


INSERT INTO CinemaPage1 (title, genreID, time, date, directorID, ActorID) 
VALUES ('수리남', 2, '120', '2022-10-24', 1, 1);
INSERT INTO CinemaPage1 (title, genreID, time, date, directorID, ActorID) 
VALUES ('수리남', 2, '120', '2022-10-24', 1, 2);

SELECT * FROM CinemaPage1;
DESC CinemaPage1;
SELECT * FROM director;

SELECT * FROM CinemaPage1;





