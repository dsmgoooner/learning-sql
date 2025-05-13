/* LEFT ANTI JOIN
Returns Row from Left that has NO MATCH in Right */

/* Get customers who haven't placed any order */

SELECT 
	c.id,
    c.first_name
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

/* Right ANTI JOIN
Returns Row from Right that has NO MATCH in Left */

/* Get all orders without matching customers */

SELECT  *
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id
WHERE c.id IS NULL;

/* Get all customers along with their orders,
but only for customers who have placed an order 
(Without Using INNER JOIN */

SELECT *
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;

-- CROSS JOIN
-- Generate all possible combination of customers and orders 

SELECT *
FROM customers
CROSS JOIN orders;