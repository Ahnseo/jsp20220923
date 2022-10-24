-- 학생 Table을 만들려고한다.
-- 이름 나이 성별 등등이 있는데, primaryKey로 쓸 컬럼이 없으니,
-- id 컬럼을 새로만들어 primaryKey로 지정하자.

CREATE TABLE Student(
	id INT PRIMARY KEY AUTO_INCREMENT , -- PRIMARY KEY 설정 (숫자, 유니크+notNull, auto_increment)
    name VARCHAR(255),
    age INT,
    gender VARCHAR(255)
);

INSERT INTO Student (name, age, gender) VALUES('KIM', 28, 'M'); -- id컬럼과 값은 굳이 작성하지않아도 자동 삽입
INSERT INTO Student (name, age, gender) VALUES('PARK', 34, 'F');
SELECT * FROM Student;

DELETE FROM Student WHERE id =1;  -- 지워도, id는 자동증가
INSERT INTO Student (name, age, gender) VALUES('AHN', 44, 'M');
INSERT INTO Student (name, age, gender) VALUES('Choi', 19, 'F');
