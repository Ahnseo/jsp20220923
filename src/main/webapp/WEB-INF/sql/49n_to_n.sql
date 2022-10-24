-- n 대 n 테이블 : 다대다 관계 테이블
-- 결론: 새 테이블이 필요하다.

DESC Student;

-- 학생들이 들을수있는 강의 테이블을 만들어보자
CREATE TABLE Lecture (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);
INSERT INTO Lecture (name) VALUES('MAth');
INSERT INTO Lecture (name) VALUES('English');

SELECT * FROM Lecture;
SELECT * FROM Student;

-- 다대다 관계 새테이블
CREATE TABLE StudentLecture(
	studentId INT NOT NULL,
    lectureId INT NOT NULL,
    FOREIGN KEY (studentId) REFERENCES Student(id),
    FOREIGN KEY (lectureId) REFERENCES Lecture(id),
    PRIMARY KEY(studentId, lectureId) --  studentId, lectureId 모두 변경될 일이 없으니, 이렇게 PRIMARY KEY 묶어서 지정하겠다
);

INSERT INTO StudentLecture(studentId, lectureId) VALUES(2, 1); -- 2번학생이 1번강의 듣고
INSERT INTO StudentLecture(studentId, lectureId) VALUES(2, 2); -- 2번학생이 2번강의 또한 들음
INSERT INTO StudentLecture(studentId, lectureId) VALUES(3, 1); -- 3번학생이 1번강의를 들음.
INSERT INTO StudentLecture(studentId, lectureId) VALUES(4, 2); -- 4번학생이 2번강의를 들음

SELECT * FROM StudentLecture;
SELECT * FROM Lecture;
SELECT * FROM Student;