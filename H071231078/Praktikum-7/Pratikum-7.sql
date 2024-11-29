-- NO 1
-- SELECT p.productCode, p.productName, p.buyPrice FROM products p
-- WHERE p.buyPrice > (SELECT AVG(p.buyPrice) FROM products p)

-- NO 2
-- SELECT o.orderNumber, o.orderDate FROM customers c 
-- JOIN orders o USING(customerNumber)
-- WHERE c.salesRepEmployeeNumber IN 
-- (SELECT e.employeeNumber FROM employees e JOIN offices o USING(officeCode) WHERE city = 'tokyo')

-- NO 3
-- SELECT c.customerName, o.orderNumber, o.shippedDate, o.requiredDate, GROUP_CONCAT(p.productName ORDER BY p.productName ASC) , SUM(od.quantityOrdered) AS total_quantity_ordered, CONCAT(e.firstName," ",e.lastName) 
-- FROM customers c 
-- JOIN orders o USING (customerNumber) 
-- JOIN orderdetails od USING(orderNumber) 
-- JOIN products p USING(productCode) 
-- JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
-- WHERE o.orderNumber = (
-- 	SELECT o.orderNumber 
-- 	FROM customers c 
-- 	JOIN orders o USING (customerNumber) 
-- 	WHERE TIMEDIFF(o.requiredDate,o.shippedDate) < 0
-- )

-- NO 4
-- SELECT p.productName, p.productLine, SUM(od.quantityOrdered) AS pp 
-- FROM products p 
-- JOIN orderdetails od USING (productCode) 
-- WHERE p.productLine IN (
--     SELECT productLine 
--     FROM (
--         SELECT p.productLine, SUM(od.quantityOrdered) AS pp 
--         FROM products p
--         JOIN orderdetails od USING (productCode)
--         GROUP BY p.productLine
--         ORDER BY pp DESC
--         LIMIT 3
--     ) AS subquery
-- )
-- GROUP BY p.productLine, p.productName
-- ORDER BY p.productLine, pp DESC;






