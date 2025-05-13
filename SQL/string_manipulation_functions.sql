-- STRING FUNCTIONS

-- Manipulation Functions

-- 1. CONCAT

/* Concatenate first name and country into one colmn */

SELECT
first_name,
country,
CONCAT(first_name,'-' ,country) as name_country
FROM customers; 

-- 2.LOWER

/* Convert the first_name to lowercase */

SELECT LOWER(first_name) as low_name
FROM customers;

-- 3.UPPER

/* Convert the first_name to uppercase */

SELECT UPPER(first_name) as upp_name
FROM customers;

-- 4. TRIM

/* Find customes whose first name contains leading 
or trailing spaces */

SELECT first_name
FROM customers
WHERE first_name != TRIM(first_name);

-- 5. Replace

/* Remove dashes (-) from a phone number */

SELECT
'123-4567-3456' as phone,
REPLACE('123-4567-3456','-','') as clean_phone;

/* Replace File Extence from txt to csv */

SELECT 
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename;


