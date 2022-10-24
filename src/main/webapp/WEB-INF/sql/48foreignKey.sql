-- 참조키 언제 사용해 ? : 2,3정규화 또는 일대일테이블(비밀스러운 정보를 따로 분리할때 사용)

DESC Student;
SELECT * FROM Student;
-- 요구사항 : 학생의 연락처를 저장해주세요.
-- 비상연락망(학생+ 부모) .. 원자화 해야함.

-- 학생 테이블에 StudentId 컬럼 추가

CREATE TABLE Contact(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    studentId INT, -- studentId 컬럼은 필요에 따라 Null 또는 NOT NULL
    contact VARCHAR(255),
    FOREIGN KEY (studentId) REFERENCES Student (id) -- 참조키 제약사항 추가 필수!
			  -- studentId 컬럼을 Student테이블의 id 컬럼을 참조하겠다.고 설정
			  -- 부모 테이블 : Student 테이블
              -- 자식 테이블 : Contact 테이블
              -- 부모 테이블 id 를 삭제하려면, 자식 테이블 레코드 먼저 삭제해야함.
);
desc Contact;
DROP TABLE Contact;
INSERT INTO Contact (studentId, contact) VALUES (2, '010-1111-1111');
INSERT INTO Contact (studentId, contact) VALUES (2, '010-2222-2222');

DELETE FROM Contact WHERE studentId =2;
SELECT * FROM Contact;




