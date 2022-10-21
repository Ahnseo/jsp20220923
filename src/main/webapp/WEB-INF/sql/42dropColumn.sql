-- DROP TABLE : 컬럼 삭제
-- 삭제 전에 백업 꼭 하기!!
-- MyTable17 phoneNumber 컬럼 삭제
DESC MyTable17;
ALTER TABLE MyTable17
DROP COLUMN phoneNumber;

DESC MyTable17;