use mydb6;
-- union : 합집합
SELECT * FROM TableA
UNION
SELECT * FROM TableB;

-- union all : 중복 합집합
SELECT * FROM TableA
UNION ALL
SELECT * FROM TableB;

-- full outer join 
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1 = b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;

-- leetcode 1965 
SELECT e.employee_id  FROM Employees e LEFT JOIN Salaries s ON e.employee_id = s.employee_id 
WHERE salary IS NULL
UNION
SELECT s.employee_id  FROM Employees e RIGHT JOIN Salaries s ON e.employee_id = s.employee_id
WHERE name IS NULL
ORDER BY employee_id ASC;
