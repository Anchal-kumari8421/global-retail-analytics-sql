USE global_retail_project;

SELECT orders.order_id, 
       customers.first_name, 
       customers.last_name,
       orders.order_date
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;


SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.quantity
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;
SELECT c.first_name, c.last_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
SELECT c.first_name, c.last_name, o.order_id, o.order_date
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
SELECT o.order_id, 
       c.first_name, 
       c.last_name, 
       p.product_name,
       o.quantity,
       o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;
SELECT a.first_name AS customer1, 
       b.first_name AS customer2, 
       a.country
FROM customers a
INNER JOIN customers b ON a.country = b.country
WHERE a.customer_id < b.customer_id;
SELECT o.order_id, p.product_name, p.price, o.quantity
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id;
SELECT o.order_id, 
       c.first_name, 
       c.last_name, 
       p.product_name, 
       o.quantity, 
       p.price,
       (o.quantity * p.price) AS line_total
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;
SELECT c.first_name, c.last_name, c.country
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
SELECT p.product_name, o.order_id, o.quantity
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;
SELECT first_name AS name FROM customers
UNION
SELECT product_name FROM products;