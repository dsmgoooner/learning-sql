-- SET OPERATORS

SELECT 
firstname,
lastname
FROM customers

UNION

SELECT 
firstname,
lastname
FROM employees;

-- UNION return all rows from both queries, excluding duplicates

SELECT 
firstname,
lastname
FROM customers

UNION

SELECT 
firstname,
lastname
FROM employees;

-- UNION ALL
-- Returns all rows from both queries, including duplicates
-- UNION ALL generally faster than UNION

SELECT 
firstname,
lastname
FROM customers

UNION ALL

SELECT
firstname,
lastname
FROM employees;

-- Except
/* Return all distinct rows from the first query
that are not found in the second query*/

-- Find the employees who are not customers at the same time

SELECT
firstname,
lastname
FROM employees

EXCEPT

SELECT
firstname,
lastname
FROM customers;

-- INTERSECT
/* Returns only the rows that are common in both queries */

SELECT
firstname,
lastname
FROM employees

INTERSECT

SELECT
firstname,
lastname
FROM customers;

-- USE CASE

/* Orders data are stored in separate tables ( Orders and OrdersArchive)
Combine all orders data into one report without duplicates */

SELECT 
'Orders' AS SourceTable,
orderid,
productid,
customerid,
salespersonid,
orderdate,
shipdate,
orderstatus,
shipaddress,
billaddress,
quantity,
sales,
creationtime
FROM orders

UNION

SELECT
'OrdersArchive' AS SourceTable,
orderid,
productid,
customerid,
salespersonid,
orderdate,
shipdate,
orderstatus,
shipaddress,
billaddress,
quantity,
sales,
creationtime
FROM orders_archive
ORDER BY orderid;