-- INNER JOIN

/* Get all customers along with their orders, but only 
for customers who have placed an order */

SELECT
	c.id,
    first_name,
    sales,
    o.order_id
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id;

-- Left Join
/* Return all the rowa  from Left and only matching from Right */

/* Get all customers along with their orders,
including those without orders */

SELECT
	c.id,
    first_name,
    sales,
    o.order_id
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id;

/* LEFT JOIN
Returns all rows from Right and Only matching from Left */

/* Get all customers along with their orders,
including those without matching customers */

SELECT 
	c.id,
    first_name,
    sales,
    o.order_id
FROM customers c
RIGHT JOIN orders o
ON c.id = o.customer_id;
