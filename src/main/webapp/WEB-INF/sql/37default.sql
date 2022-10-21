-- DEFAULT : 기본값

CREATE TABLE MyTable13(
	col1 INT,
    col2 INT NOT NULL,
    col3 INT DEFAULT 99,
    col4 INT NOT NULL DEFAULT 99
);
SELECT * FROM MyTable13;
INSERT INTO MyTable13 (col1, col2, col3, col4) VALUES(3,4,5,6);
-- INSERT INTO MyTable13 (col1                  ) VALUES(1); -- x
INSERT INTO MyTable13 (      col2            ) VALUES(1);
INSERT INTO MyTable13 (      col2, col3      ) VALUES(3,3);

-- 현재 일시
SELECT now();
SELECT sysdate();

-- 게시물을 작성한 날짜 시간을 알고싶다. 
CREATE TABLE MyTable14(
	name VARCHAR(255) NOT NULL,
    birth DATE,
    inserted DATETIME NOT NULL DEFAULT now()
);

INSERT INTO MyTable14(name, birth) VALUES('ahn', '1993-01-04');
SELECT * FROM MyTable14;

