-- MODIFY COLUMN : 컬럼 수정
-- 변경하는 데이터 타입,제약사항이 이미 있는 데이터에 위반하고 있는지 먼저 확인
DESC MyTable17;

ALTER TABLE MyTable17
MODIFY COLUMN name VARCHAR(255) NOT NULL;

-- 연습) MyTable17 의 address 컬럼 수정
-- type : VARCHAR(255)ALTER
-- 제약사항 : UNIQUE
DESC MyTable17;
AlTER TABLE MyTable17 MODIFY COLUMN address VARCHAR(255) UNIQUE;
                                           -- VARCHAR(255) -> VARCHAR(100)으로 변경할때, 데이터가 잘려서 , 회손될 수 있다. 


 
