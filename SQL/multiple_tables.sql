-- MULTIPLE JOINs

/* Using SalesDB, retrieve a list of all orders, along with 
the related customers, product and employee details */

SELECT 
	o.orderid,
	c.firstname as CustomerName, 
	p.product AS ProductName,
    p.price,
    o.quantity,
    e.firstname AS SalePerson
FROM orders o
LEFT JOIN customers c
ON o.customerid = c.customerid
LEFT JOIN products p
ON o.productid = p.productid
LEFT JOIN employees e
ON o.salespersonid = e.employeeid;