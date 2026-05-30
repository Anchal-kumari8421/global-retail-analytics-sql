USE global_retail_project;
SELECT * FROM Customers;
SELECT * FROM customers WHERE email LIKE '%.com';
SELECT * FROM customers WHERE email LIKE '%gmail%';
SELECT * FROM customers WHERE first_name LIKE 'P%';
SELECT * FROM customers WHERE last_name LIKE '%ez';

SELECT * FROM customers 
WHERE signup_date BETWEEN '2025-02-01' AND '2025-03-31';
SELECT * FROM customers 
WHERE signup_date BETWEEN 2 AND 4;

SELECT * FROM customers 
WHERE is_active = 'India' OR country = 'Mexico';
SELECT * FROM customers 
WHERE is_active = TRUE AND country = 'Germany';
SELECT * FROM customers 
WHERE NOT country = 'USA';
SELECT * FROM customers 
WHERE is_active = TRUE
AND (country = 'India' OR country = 'Germany')
AND NOT country = 'Mexico';

CREATE TABLE products (
product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL
);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES
(101, 'Laptop Pro 15', 'Electronics', 1200.00, 50),
(102, 'Wireless Mouse', 'Electronics', 25.99, 200),
(103, 'Cotton T-Shirt', 'Clothing', 15.50, 150),
(104, 'Coffee Mug', 'Home', 8.99, 300),
(105, 'Desk Lamp', 'Home', 35.00, 75);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity)
VALUES
(1001, 1, 101, '2025-05-01 10:30:00', 1),
(1002, 1, 102, '2025-05-01 10:31:00', 2),
(1003, 2, 103, '2025-05-02 14:15:00', 3),
(1004, 3, 104, '2025-05-03 09:45:00', 1),
(1005, 5, 105, '2025-05-05 16:20:00', 1),
(1006, 2, 101, '2025-05-10 11:00:00', 1),
(1007, 4, 102, '2025-05-12 13:30:00', 1),
(1008, 1, 104, '2025-05-15 12:00:00', 2);

SELECT * FROM products WHERE product_name LIKE '%Laptop%';
SELECT * FROM products WHERE price BETWEEN 20 AND 100;
SELECT * FROM orders
WHERE order_date BETWEEN '2025-05-01' AND '2025-05-31';
SELECT first_name, last_name, country
FROM customers
WHERE is_active = TRUE
AND (country = 'India' OR country = 'Germany');
SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
SELECT p.product_name, SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;