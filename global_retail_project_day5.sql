USE global_retail_project;

SELECT country, COUNT(*) AS number_of_customers
FROM customers
GROUP BY country;
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM orders
GROUP BY product_id;
SELECT p.product_name, SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;
SELECT c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
SELECT p.product_name, AVG(o.quantity) AS avg_quantity_per_order
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name;
SELECT p.product_name, COUNT(o.order_id) AS times_ordered
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(o.order_id) > 2;
SELECT c.first_name, c.last_name, SUM(o.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.quantity * p.price) > 30;
SELECT p.category, COUNT(DISTINCT o.customer_id) AS unique_customers
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.category;

INSERT INTO customers (customer_id, first_name, last_name, email, country, signup_date, is_active)
VALUES
(6, 'Luis', 'Fernandez', 'luis@email.com', 'Mexico', '2025-05-01', TRUE),
(7, 'Wei', 'Zhang', 'wei@email.com', 'China', '2025-05-10', TRUE),
(8, 'Fatima', 'Al-Mansouri', 'fatima@email.com', 'UAE', '2025-05-15', TRUE);

INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity)
VALUES
(1009, 6, 103, '2025-05-20 10:00:00', 2),
(1010, 7, 101, '2025-05-21 11:30:00', 1),
(1011, 8, 105, '2025-05-22 14:45:00', 1),
(1012, 2, 102, '2025-05-23 09:15:00', 1),
(1013, 6, 104, '2025-05-24 16:00:00', 3);