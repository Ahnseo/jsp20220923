-- ALTER TABLE: 테이블 수정
-- ADD Column : 컬럼 추가

SELECT * FROM MyTable17;

ALTER TABLE MyTable17 
ADD COLUMN address VARCHAR(255);

ALTER TABLE MyTable17 
ADD COLUMN phoneNumber VARCHAR(20) NOT NULL DEFAULT '010-0000-0000';

-- 연습) 컬럼추가 
-- type : VARCHAR(255)
-- 제약사항(constraints) : NOT NULL, UNIQUE, DEFAULT 'empty'

ALTER TABLE MyTable17 ADD COLUMN contactName VARCHAR(255) NOT NULL UNIQUE DEFAULT 'empty';
DESC MyTable17;