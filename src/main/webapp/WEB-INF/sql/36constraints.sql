-- NOT NULL
CREATE TABLE MyTable12(
	col1 VARCHAR(255) NOT NULL,
    col2 VARCHAR(255)
);
desc MyTable12;
SELECT * FROM MyTable12;
INSERT INTO MyTable12(col1, col2)VALUES('a', 'b');
INSERT INTO MyTable12(col2)VALUES('c');
INSERT INTO MyTable12(col1)VALUES('a');
SET sql_safe_updates=0;
SET sql_safe_updates=1;
UPDATE MyTable12 SET col1 ='c' WHERE col2 = null;