-- table명, 컬럼명 작성관습
-- 회사 규칙을 따르자ALTER

-- 보통은 대소문자 구분 안함
-- lower camle case
-- snake_lower_case

-- 우리 강의에서는 이렇게 정하고 하겠다.0
-- 테이블명 UpperCamelCase
-- 컬럼명 lowerCamelCase 

CREATE TABLE myTable11(
	yourCarName VARCHAR(50)
);

INSERT INTO myTable11( yourCarName) VALUES ('HYUNDAE');
INSERT INTO myTable11( yourCarName) VALUES ('KIA');
SELECT * FROM myTable11;