-- no 1
SELECT DISTINCT c.customername AS 'namaKustomer', p.productname AS 'namaProduk', pl.textdescription FROM customers AS c
JOIN orders ON c.customerNumber = orders.customerNumber
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products AS p ON orderdetails.productCode = p.productCode
JOIN productlines AS pl ON p.productLine = pl.productLine
WHERE p.productName LIKE '%Titanic%'
ORDER BY c.customerName;

-- no 2
SELECT c.customername, p.productname, o.`status`, o.shippeddate FROM customers AS c
JOIN orders AS o ON c.customerNumber = o.customerNumber
JOIN orderdetails ON o.orderNumber = orderdetails.orderNumber
JOIN products AS p ON orderdetails.productCode = p.productCode
WHERE p.productName LIKE '%Ferrari%' 
AND o.`status` = 'Shipped' 
AND o.shippedDate BETWEEN '2003-10-01' AND '2004-10-01'
ORDER BY o.shippedDate DESC;

-- no 3
-- SELECT * FROM employees 
-- WHERE firstname = 'Gerard';

SELECT 'Gerard' AS Supervisor, CONCAT(firstName, ' ', lastName) AS 'Karyawan' FROM employees
WHERE reportsTo = 1102
ORDER BY firstName ASC;

-- no 4

-- a
SELECT c.customername, p.paymentdate, e.firstname AS employeeName, p.amount FROM payments AS p
JOIN customers AS c ON p.customerNumber = c.customerNumber
JOIN employees AS e ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE p.paymentDate LIKE '_____11%';

-- b
SELECT c.customername, p.paymentdate, e.firstname AS employeeName, p.amount FROM payments AS p
JOIN customers AS c ON p.customerNumber = c.customerNumber
JOIN employees AS e ON c.salesRepEmployeeNumber = e.employeeNumber
WHERE p.paymentDate LIKE '_____11%'
ORDER BY p.amount DESC 
LIMIT 1;

-- c
SELECT c.customername, p.productname FROM customers AS c
JOIN orders ON c.customerNumber = orders.customerNumber
JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
JOIN products AS p ON orderdetails.productCode = p.productCode
JOIN payments pay ON c.customerNumber = pay.customerNumber
WHERE c.customerName = 'Corporate Gift Ideas Co.'
AND pay.paymentDate LIKE '_____11%';