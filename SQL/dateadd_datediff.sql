-- DATEADD()
-- DATE_ADD(date, INTERVAL n unit)

SELECT DATE_ADD('2025-05-10', INTERVAL 5 DAY) AS new_date;
SELECT DATE_ADD('2025-05-10', INTERVAL -4 MONTH) AS new_date;
SELECT DATE_ADD('2025-05-10', INTERVAL 2 YEAR) AS new_date;

SELECT
orderdate,
DATE_ADD(orderdate, INTERVAL 2 YEAR)as TwoYearsLater
FROM orders;

-- DATEDIFF
/* DATEDIFF(date1, date2),
   DATEDIFF(MONTH, date1, date2)
   DATEDIFF(YEAR, date1, date2)
  will return date1 - date2 in terms of days.
*/
SELECT DATEDIFF('2025-05-14', '2025-05-10') AS date_diff;

SELECT
employeeid,
birthdate,
TIMESTAMPDIFF(YEAR, birthdate, CURDATE()) as age
FROM employees;

SELECT 
DATE_FORMAT(orderdate, '%b') as ordermonth,
AVG(DATEDIFF(shipdate, orderdate))
FROM orders
GROUP BY ordermonth;

-- Time gap analysis
-- Find the number of days between each order and the previous order

SELECT
  orderid,
  orderdate AS CurrentOrderDate,
  LAG(orderdate) OVER (ORDER BY orderdate) AS PreviousOrderDate,
  DATEDIFF(orderdate, LAG(orderdate) OVER (ORDER BY orderdate)) AS NrOfDays
FROM orders;

