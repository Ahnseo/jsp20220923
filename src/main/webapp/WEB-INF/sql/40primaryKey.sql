-- PRIMARY KEY : NOT NULL + UNIQUE 조합

CREATE TABLE MyTable17(
	id INT Primary key,
    name VARCHAR(50),
    age INT
);

DESC MyTable17;
INSERT INTO MyTable17 (id, name, age) VALUES(1, 'AHN', 30);
INSERT INTO MyTable17 (id, name, age) VALUES(2, 'KIM', 45);
INSERT INTO MyTable17 (id, name, age) VALUES(1, 'PARK', 26); -- x
SELECT * FROM MyTable17;