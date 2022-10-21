-- UNIQUE : 같은 값을 갖을 수 없음.

CREATE TABLE MyTable16(
	name VARCHAR(50),
    contactName VARCHAR(50) UNIQUE,
    age INT    
);
desc MyTable16;
INSERT INTO MyTable16(name, contactName, age)VALUES('ahn', 'ahnseoj', 99);
INSERT INTO MyTable16(name, contactName, age)VALUES('ahn', 'ahn', 99);
INSERT INTO MyTable16(name, contactName, age)VALUES('ahn', 'ahn', 30); -- x
SELECT * FROM MyTable16;