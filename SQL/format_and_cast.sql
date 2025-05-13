/* Format, Convert and Cast*/
/* 1. Format & Convert :Changing the value from one to another 
   2. Casting : Changing the data type from one to another. */
   
-- FORMAT()

SELECT FORMAT(12345.6789, 2);

-- DATE_FORMAT()


SELECT
  orderid,
  creationtime,
  DATE_FORMAT(creationtime, '%d') AS day_of_month
FROM orders;



/*
Format	    Meaning	           Example
%d	   Day of month (01-31)	     14
%e	    Day of month (1-31)	        14
%W	     Weekday name	             Tuesday
%a	    Abbreviated weekday	        Tue
%m	      Month (01-12)	              05
%Y	     Year (4 digits)	         2025
*/

SELECT
  orderid,
  creationtime,
  DATE_FORMAT(creationtime, '%d') AS day,
  DATE_FORMAT(creationtime, '%a') AS abbreviated_Weekday,
  DATE_FORMAT(creationtime, '%m') AS month,
  DATE_FORMAT(creationtime, '%M') AS name_of_month,
  DATE_FORMAT(creationtime, '%b') AS abb_name_of_month,
  DATE_FORMAT(creationtime, '%Y') AS year,
  DATE_FORMAT(creationtime, '%d-%m-%Y') AS European_format,
  DATE_FORMAT(creationtime, '%m-%d-%Y') AS USA_format
  FROM orders;

-- Show CreationTime using the following format:
-- Day Wed Jan Q1 2025 12:34:56

SELECT 
orderid,
creationtime,
CONCAT('Day',' ',date_format(creationtime, '%a'),' ', date_format(creationtime, '%b'), ' Q1 ', 
date_format(creationtime, '%Y'), ' ', DATE_FORMAT(creationtime, '%H:%i:%s')) as custome_format
FROM orders;

SELECT 
date_format(orderdate, '%b-%Y') as date,
COUNT(orderid) as total_orders
FROM orders
GROUP BY date_format(orderdate, '%b-%Y')
ORDER BY date_format(orderdate, '%b-%Y') ;


-- CAST()


SELECT
CAST('123' AS UNSIGNED) AS str_to_int,
CAST(123 AS CHAR) AS int_to_str;

