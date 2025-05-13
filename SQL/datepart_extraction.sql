-- DATE & TIME FUNCTIONS
-- Part Extraction

SELECT
orderid,
orderdate,
shipdate,
creationtime
FROM orders;

-- CURDATE() - Get today's date

SELECT
orderid,
creationtime,
CURDATE() today
FROM orders;

-- PART EXTRACTION

-- DAY(), MONTH() , YEAR()

SELECT 
DAY(CURDATE()) as day,
MONTH(CURDATE()) as month,
YEAR(CURDATE()) as year;

-- USE CASE : to build reports like sales by month, days etc.

-- LAST_DAY()

SELECT 
creationtime,
LAST_DAY(creationtime) as end_of_month;
FROM orders;

-- DAYNAME(), MONTHNAME(), YEAR()

SELECT 
DAYNAME(CURDATE()) as day,
MONTHNAME(CURDATE()) as month,
YEAR(CURDATE()) as year;

/* How many orders were placed each year */

SELECT 
YEAR(orderdate) as order_year,
COUNT(YEAR(orderdate)) as no_of_orders
FROM orders
GROUP BY order_year
ORDER BY order_year DESC;

/* How many orders were placed each month */

SELECT 
MONTHNAME(orderdate) as order_month,
COUNT(MONTHNAME(orderdate)) as no_of_orders
FROM orders
GROUP BY order_month;

/* Show all orders that were placed during the month of february */

SELECT 
orderid,
MONTHNAME(orderdate) as order_month
FROM orders
WHERE MONTHNAME(orderdate) = 'February';

