
-- 1.
CREATE DATABASE lab3;

-- 3.
SELECT lastname FROM employees;

-- 4.
SELECT DISTINCT lastname FROM employees;

-- 5.
SELECT * FROM employees WHERE lastname = 'Smith';

-- 6.
SELECT * FROM employees WHERE lastname IN ('Smith', 'Doe');

-- 7.
SELECT * FROM employees WHERE department = 14;

-- 8.
SELECT * FROM employees WHERE department IN (37, 77);

-- 9.
SELECT SUM(budget) AS total_budget FROM departments;

-- 10.
SELECT department, COUNT(*) AS employee_count FROM employees GROUP BY department;

-- 11.
SELECT department FROM employees GROUP BY department HAVING COUNT(*) > 2;

-- 12.
SELECT name FROM departments ORDER BY budget DESC LIMIT 1 OFFSET 1;

-- 13.
SELECT e.name, e.lastname
FROM employees e
JOIN departments d ON e.department = d.code
WHERE d.budget = (SELECT MIN(budget) FROM departments);

-- 14.
SELECT name, lastname FROM employees WHERE city = 'Almaty'
UNION
SELECT name, lastname FROM customers WHERE city = 'Almaty';

-- 15.
SELECT * FROM departments WHERE budget > 60000 ORDER BY budget ASC, code DESC;

-- 16.
UPDATE departments SET budget = budget * 0.9
WHERE code = (SELECT code FROM departments ORDER BY budget ASC LIMIT 1);

-- 17.
UPDATE employees SET department = 14 WHERE department = 77;

-- 18.
DELETE FROM employees WHERE department = 14;

-- 19.
DELETE FROM employees;
