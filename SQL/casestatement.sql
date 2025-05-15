-- Case Statement
-- Evaluates a list of condition and returns a value when the first condition is met

WITH sales AS(
	SELECT 1 Id, 60 sales UNION
    SELECT 2, 30 UNION
    SELECT 3, 15 UNION
    SELECT 4, NULL
)
SELECT
sales,
CASE 
	WHEN sales > 50 THEN 'high' 
	WHEN sales > 20 THEN 'medium' 
    ELSE 'low'
END as category
FROM sales;

-- USE CASE
-- Data Transformations

/* Generate a report showing the total sales for each category:
 - High : If the sales higher than 50
 - Medium : If the sales between 20 and 50
 - Low : If the sales equal or lower than 20
 Sort the result from highest to lowest */
 
 SELECT
 category,
 SUM(sales) AS TotalSales
 FROM(
	SELECT 
	orderid, 
	sales,
	CASE
		WHEN sales > 50 THEN 'high'
		WHEN sales > 20 THEN 'medium'
		ELSE 'low'
	END as category
    FROM orders
)  t
GROUP BY category
ORDER BY TotalSales DESC;


-- Mapping Values
-- Transform the values from one form to another

/* Retrieve employees details with gender displayed as full text */

SELECT
employeeid,
firstname,
lastname,
department,
birthdate,
CASE
	WHEN gender LIKE 'M' THEN 'male'
    WHEN gender LIKE 'F' THEN 'female'
    ELSE 'not available'
END category
FROM employees;

-- Retrieve customers details with abbreviated country codes

SELECT 
	customerid,
    firstname,
    lastname,
    country,
    CASE country
		WHEN 'Germany' THEN 'DE'
        WHEN 'USA' THEN 'US'
        ELSE 'n/a'
	END as CountryAbbr
from customers;

-- Handling Nulls

-- Conditional Aggregation

/* Count how many times each customer has made an order with sales greater than 30 */

SELECT 
customerid,
SUM(CASE
	WHEN sales > 30 THEN 1
    ELSE 0
END) flag
FROM orders
GROUP BY customerid;
