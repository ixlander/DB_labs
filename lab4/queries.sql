 -- 1
CREATE DATABASE lab4;

-- 2
CREATE TABLE Warehouses(
    code serial primary key,
    location varchar(255),
    capacity integer
);

CREATE TABLE Boxes(
    code CHAR(4),
    contents VARCHAR(255),
    value REAL,
    warehouse INTEGER
);

-- 4
SELECT * FROM Warehouses;

-- 5
SELECT * FROM Boxes WHERE value > 150;

-- 6
SELECT DISTINCT contents FROM Boxes;

-- 7
SELECT warehouse, COUNT(*) AS box_count
FROM Boxes GROUP BY warehouse;

-- 8
SELECT warehouse, COUNT(*) AS box_count
FROM Boxes GROUP BY warehouse
HAVING COUNT(*) > 2;

-- 9
INSERT INTO Warehouses (location, capacity)
VALUES ('New York', 3);

-- 10
INSERT INTO Boxes (code, contents, value, warehouse)
VALUES ('H5RT', 'H5RT', 200, 2);

-- 11
UPDATE Boxes
SET value = value * 0.85
WHERE code = (
    SELECT code FROM Boxes
    ORDER BY value DESC
    LIMIT 1 OFFSET 2
);

-- 12
DELETE FROM Boxes WHERE value < 150;

-- 13
DELETE FROM Boxes
WHERE warehouse = (
    SELECT code FROM Warehouses
    WHERE location = 'New York'
)
RETURNING *;
