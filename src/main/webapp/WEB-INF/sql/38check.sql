-- CHECK : 조건에 맞는 데이터만 저장

CREATE TABLE MyTable15(
	name VARCHAR(50),
    age INT,
    CHECK(age >= 0)
);

INSERT INTO MyTable15(name, age) VALUES('AHN SEOJUNG', -1); -- x
INSERT INTO MyTable15(name, age) VALUES('AHN SEOJUNG', 0);
INSERT INTO MyTable15(name, age) VALUES('AHN SEOJUNG', 30);

SELECT * FROM MyTable15;
