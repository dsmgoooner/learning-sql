-- Calculation String Function

/* Calculate the length of each customer's first name */

SELECT 
first_name,
LENGTH(first_name) as lenght
FROM customers;

-- STRING EXTRACTION

-- LEFT functions

/* Retrieve the first two characters of each first name */

SELECT 
first_name, 
LEFT(TRIM(first_name), 2) as first_two_char
FROM customers;

-- RIGHT functions

/* Retrieve the last two characters of each first name */

SELECT 
first_name, 
Right(first_name, 2) as last_two_char
FROM customers;

-- SUBSTRING

/* Retrieve a list of customer's first names removing the first character */

SELECT
first_name,
SUBSTRING(TRIM(first_name), 2) AS sub_name
FROM customers;