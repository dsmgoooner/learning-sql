/* Filtering Data */

-- Retrieve all customers from germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- Retrieve all customers not from germany
SELECT *
FROM customers
WHERE country <> 'Germany';

-- Retrieve all customers with a score greater than 500
SELECT *
FROM customers
WHERE score > 500;

/* Logical Operator */

-- Retrieve all customers who are from USA and have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

-- Retrieve all customers who are either from USA or have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500 ;

-- Retrieve all customers with a score not less than 500

SELECT * 
FROM customers
WHERE NOT score < 500;

/* Range Operator */

-- Retrieve all customers whose score falls in the range between 100 and 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

/* Memebership Operator */

-- Retrieve all customers from USA and GERMANY

SELECT *
FROM customers
WHERE country IN ('USA', 'Germany');

-- Retrieve all customers not from USA and GERMANY
SELECT *
FROM customers
WHERE country NOT IN ('USA', 'Germany');

/* Search Operator */

-- Find all customers whose first name start with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name contains 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has 'r' in 3rd position

SELECT *
FROM customers
WHERE first_name LIKE '__r%';