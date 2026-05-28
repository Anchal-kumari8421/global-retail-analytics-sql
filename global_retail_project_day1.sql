CREATE DATABASE global_retail_project;
USE global_retail_project;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name varchar(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
country VARCHAR(50) NOT NULL,
signup_date DATE NOT NULL,
is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO customers (customer_id, first_name, last_name, email, country, signup_date, is_active)
VALUES
(1, 'Priya', 'Sharma', 'priya@email.com', 'India', '2025-01-15', TRUE),
(2, 'Carlos', 'Lopez', 'carlos@email.com', 'Mexico', '2025-02-20', TRUE),
(3, 'Hannah', 'Schmidt', NULL, 'Germany', '2025-03-10', TRUE),
(4, 'Takeshi', 'Tanaka', 'takeshi@email.com', 'Japan', '2025-01-05', FALSE),
(5, 'Emma', 'Johnson', 'emma@email.com', 'USA', '2025-04-01', TRUE);

SELECT * FROM customers;
SELECT first_name, last_name, country
FROM customers
WHERE is_active = TRUE;
SELECT * FROM customers
WHERE country IN ('India', 'Mexico');
SELECT first_name, last_name
FROM customers
WHERE email IS NULL;
SELECT first_name, country, signup_date
FROM customers
ORDER BY signup_date DESC
LIMIT 3;
SELECT COUNT(*) as total_customers FROM customers;