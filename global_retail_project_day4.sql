USE global_retail_project;

SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(email) AS customers_with_email FROM customers;
SELECT COUNT(DISTINCT country) AS unique_countries FROM customers;
SELECT * FROM customers;
SELECT COUNT(*) AS active_customers FROM customers WHERE is_active = TRUE;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(DISTINCT customer_id) AS customers_who_ordered FROM orders;

SELECT SUM(quantity) AS total_items_sold FROM orders;
SELECT SUM(o.quantity * p.price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;

SELECT AVG(quantity) AS avg_quantity_per_order FROM orders;
SELECT AVG(price) AS avg_product_price FROM products;

SELECT MIN(price) AS cheapest_product, MAX(price) AS most_expensive FROM products;
SELECT MIN(order_date) AS first_order, MAX(order_date) AS last_order FROM orders;
SELECT MIN(signup_date) AS earliest_signup, MAX(signup_date) AS latest_signup 
FROM customers;

SELECT 
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_items,
    AVG(quantity) AS avg_items_per_order,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM orders;

SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(email) AS customers_with_email FROM customers;
SELECT AVG(price) AS avg_electronics_price
FROM products
WHERE category = 'Electronics';
SELECT MAX(quantity) AS max_quantity_in_one_order FROM orders;
SELECT COUNT(DISTINCT product_id) AS unique_products_ordered FROM orders;
SELECT SUM(quantity) AS coffee_mug_quantity
FROM orders
WHERE product_id = 104;
SELECT 
    COUNT(DISTINCT customer_id) AS customers_who_ordered,
    COUNT(*) AS total_orders,
    SUM(quantity) AS total_items_sold,
    AVG(quantity) AS avg_items_per_order,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    SUM(o.quantity * p.price) AS grand_total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;
