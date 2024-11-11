CREATE DATABASE lab7;


-- 1
CREATE INDEX idx_countries_name ON countries(name);

-- Example
SELECT * FROM countries WHERE name = 'Kazakhstan';

-- 2
CREATE INDEX idx_employees_name_surname ON employees(name, surname);

-- Example Query
SELECT * FROM employees WHERE name = 'Alice' AND surname = 'Johnson';

--3
CREATE UNIQUE INDEX idx_employees_salary ON employees(salary);

-- Example Query
SELECT * FROM employees WHERE salary < 90000 AND salary > 60000;

--4
CREATE INDEX idx_employees_name_substring ON employees((substring(name FROM 1 FOR 4)));

-- Example Query
SELECT * FROM employees WHERE substring(name FROM 1 FOR 4) = 'Jack';


--5
CREATE INDEX idx_departments_budget ON departments(budget);
CREATE INDEX idx_employees_department_salary ON employees(department_id, salary);

-- Example Query
SELECT * FROM employees e
JOIN departments d ON d.department_id = e.department_id
WHERE d.budget > 1000000 AND e.salary < 90000;

