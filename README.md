# global-retail-analytics-sql
SQL portfolio project for data analyst role - global e-commerce analysis
Day 2 Completion 
- Added products table (5 products across Electronics, Clothing, Home)
- Added orders table (8 transactions with foreign keys)
- Learned pattern matching with `LIKE` (% and _ wildcards)
- Learned range filtering with `BETWEEN`
- Learned logical operators `AND`, `OR`, `NOT`
- Answered 7 business questions including:
  - Products with "Laptop" in name
  - Orders in May 2025
  - Total revenue per product (GROUP BY + SUM)

Day 3 Completion 
- Learned INNER JOIN (matching rows only)
- Learned LEFT JOIN (all rows from left table)
- Learned RIGHT JOIN and SELF JOIN concepts
- Learned UNION and UNION ALL (stacking results)
- Answered 7 business questions including:
  - Orders with customer names
  - Customers with no orders (LEFT JOIN + IS NULL)
  - Orders with product details (3-table JOIN)
  - Combined customer and product names using UNION

Day 4 Completion 
- Learned COUNT() for counting rows (and COUNT(DISTINCT) for unique values)
- Learned SUM() for adding numerical values
- Learned AVG() for calculating averages (handles NULLs automatically)
- Learned MIN() and MAX() for finding extremes
- Answered 8 business questions including:
  - Total customers vs customers with email
  - Total revenue across all orders
  - Average electronics price
  - Highest quantity in a single order
  - Complete business metrics summary

Day 5 Completion 
- Learned GROUP BY for grouping rows before aggregation
- Mastered HAVING for filtering groups after aggregation (vs WHERE for rows)
- Added 3 new customers (Mexico, China, UAE) and 5 new orders
- Answered 8 business questions including:
  - Customers per country
  - Total revenue per product and per customer
  - Average order quantity per product
  - Products ordered more than 2 times (HAVING)
  - Unique customers per product category
- Key insight: Every non-aggregate column in SELECT must be in GROUP BY
