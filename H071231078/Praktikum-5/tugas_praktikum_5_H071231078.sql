-- SELECT distinct c.customerName AS namaKostumer, p.productName AS namaProduk, pl.textDescription FROM products p 
-- INNER JOIN orderDetails od USING(productCode)
-- INNER JOIN productlines pl USING(productLine)
-- INNER JOIN orders o ON od.orderNumber = o.orderNumber
-- INNER JOIN customers c ON o.customerNumber = c.customerNumber
-- WHERE p.productName LIKE '%titanic%' ORDER BY c.customerName 




-- SELECT c.customerName , p.productName, o.`status`, o.shippedDate 
-- FROM products p 
-- INNER JOIN orderDetails od ON p.productCode = od.productCode
-- INNER JOIN productlines pl ON p.productLine = pl.productLine
-- INNER JOIN orders o ON od.orderNumber = o.orderNumber
-- INNER JOIN customers c ON o.customerNumber = c.customerNumber
-- WHERE p.productName LIKE '%ferrari%' AND o.`status` = 'shipped' AND o.shippedDate BETWEEN '2003-10-01' AND '2004-10-01';
-- 


-- SELECT e.lastName, c.contactLastName 
-- from employees e 
-- INNER JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber 
-- WHERE e.lastName = "gerard" ORDER BY c.contactLastName



-- a
-- SELECT c.customerName, pm.paymentDate, e.firstName, pm.amount FROM customers c 
-- join payments pm on c.customerNumber = pm.customerNumber
-- JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber WHERE pm.paymentDate LIKE '%-11-%' ORDER BY pm.amount DESC LIMIT 1
-- b
-- tinggal limit
-- c
-- SELECT c.customerName, p.productName
-- FROM products p 
-- INNER JOIN orderDetails od ON p.productCode = od.productCode
-- INNER JOIN orders o ON od.orderNumber = o.orderNumber
-- INNER JOIN customers c ON o.customerNumber = c.customerNumber
-- WHERE c.customerName = "Corporate Gift Ideas Co."

