INSERT INTO locations (street_address, postal_code, city, state_province)
VALUES
('123 Main St', '12345', 'Springfield', 'IL'),
('456 Elm St', '67890', 'Metropolis', 'NY'),
('789 Maple Ave', '54321', 'Gotham', 'NJ'),
('321 Oak St', '98765', 'Smallville', 'KS'),
('654 Pine St', '11223', 'Star City', 'CA');


INSERT INTO departments (department_name, budget, location_id)
VALUES
('Sales', 100000, 1),           -- Location ID 1 corresponds to Springfield
('Human Resources', 50000, 2),  -- Location ID 2 corresponds to Metropolis
('IT', 75000, 3),               -- Location ID 3 corresponds to Gotham
('Marketing', 60000, 4),        -- Location ID 4 corresponds to Smallville
('Finance', 90000, 5);          -- Location ID 5 corresponds to Star City


INSERT INTO employees (first_name, last_name, email, phone_number, salary, department_id)
VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', 60000, 1),  -- Sales
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', 75000, 2),  -- HR
('Alice', 'Johnson', 'alice.j@example.com', '555-8765', 70000, 3),  -- IT
('Bob', 'Brown', 'bob.brown@example.com', '555-4321', 65000, 4),  -- Marketing
('Charlie', 'Davis', 'charlie.d@example.com', '555-6789', 80000, 5);  -- Finance
