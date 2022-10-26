
-- TRANSACTION  : 하나의 업무 (여러 update, delete, insert, select 쿼리의 묶음)

-- ROLLBACK : 진행되고 있던 내용을 모두 복원함
-- COMMIT : 진행된 내용을 DB에 반영함, 
--          커밋하지않으면, 내눈에는 반영된것처럼 보여도, 다른사람들에게는 적용안되어있음. 
--          커밋하면, 복원 힘듬.

-- AUTO COMMIT 여부 확인
SHOW VARIABLES WHERE variable_name = 'autocommit';
SET autocommit = 0; -- OFF 명령

-- UPDATE1 와 UPDATE2 가 둘다 추가되거나, 둘다 되지 않거나.
CREATE TABLE Bank(
	customerId INT PRIMARY KEY NOT NULL,
    balance INT
);

INSERT INTO Bank(CustomerId, balance) 
VALUES(1, 10000),
	  (2,50000);

-- 송금 업무 : TRANSACTION 해야함.
-- 1번 고객이 2번고객에게 5000원 송금 
SELECT * FROM Bank;

UPDATE Bank
SET balance = balance - 5000
WHERE CustomerId = 1;

UPDATE Bank
SET balance = balance + 5000
WHERE CustomerId = 2;

SELECT * FROM Bank;

-- 2번 고객이 1번고객에게 5000원 송금 ---------------------------------------------------------------
-- AUTO COMMIT 여부 확인
SHOW VARIABLES WHERE variable_name = 'autocommit';
SET autocommit = 0; -- OFF

UPDATE Bank
SET balance = balance - 5000
WHERE CustomerId = 2;


UPDATE Bank
SET balance = balance + 5000
WHERE CustomerId = 1;

SELECT * FROM Bank;
ROLLBACK;
COMMIT;

-- spring20221017/controller/ex27/sub01     스프링으로 Transaction 
SELECT * FROM Bank;

SET autocommit = 1; -- ON