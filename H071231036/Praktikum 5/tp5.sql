SELECT DISTINCT c.customername, p.productname, p.productdescription FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN products p ON od.productCode = p.productCode
WHERE productname LIKE '%titanic%'
ORDER BY customername

SELECT c.customerName, p.productName, o.status, o.shippedDate
FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN products p ON od.productCode = p.productCode
WHERE p.productName LIKE '%Ferrari%' 
  AND o.status = 'Shipped' 
  AND o.shippedDate BETWEEN '2003-10-01' AND '2004-10-01'
ORDER BY o.shippeddate DESC ;

SELECT e1.firstName AS supervisorFirstName, e2.firstName AS employeeFirstName
FROM employees e1
INNER JOIN employees e2 ON e1.employeeNumber = e2.reportsTo
WHERE e1.firstName = 'Gerard'
ORDER BY e2.firstName ASC;


SELECT c.customerName, p.paymentDate, e.firstName AS employeeName, p.amount
FROM customers c
INNER JOIN payments p ON c.customerNumber = p.customerNumber
INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE MONTH(p.paymentDate) = 11
ORDER BY p.amount DESC
LIMIT 1;

SELECT c.customerName, p.productName
FROM customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN products p ON od.productCode = p.productCode
WHERE c.customername = "Corporate Gift Ideas Co."






