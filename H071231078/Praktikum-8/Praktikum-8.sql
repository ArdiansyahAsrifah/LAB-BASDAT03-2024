-- (SELECT p.productName, sum(od.priceEach * od.quantityOrdered) AS 'TotalRevenue', 'Pendapatan Tinggi'
-- FROM products p 
-- JOIN orderdetails od using(productcode)
-- JOIN orders o USING(ordernumber)
-- WHERE MONTH(o.orderDate) = 9
-- GROUP BY p.productCode
-- ORDER BY TotalRevenue DESC
-- LIMIT 5)
-- 
-- UNION
-- 
-- (SELECT p.productName, sum(od.priceEach * od.quantityOrdered) AS 'TotalRevenue', 'Pendapatan Pendek (Kayak kamu)'
-- FROM products p 
-- JOIN orderdetails od using(productcode)
-- JOIN orders o USING(ordernumber)
-- WHERE MONTH(o.orderDate) = 9
-- GROUP BY p.productCode
-- ORDER BY TotalRevenue ASC
-- LIMIT 5)

-- NO 2
-- SELECT p.productName FROM products p WHERE p.productCode IN
-- (
-- SELECT p.productCode 
-- FROM products p
-- EXCEPT
-- SELECT od.productCode 
-- FROM orderdetails od
-- JOIN orders o USING (orderNumber)
-- JOIN customers c USING (customerNumber)
-- WHERE c.customerNumber IN (
--     SELECT c.customerNumber
--     FROM orders o
--     JOIN customers c USING (customerNumber)
--     GROUP BY c.customerNumber
--     HAVING COUNT(o.orderNumber) > 10
-- 
--     INTERSECT
-- 
--     SELECT c.customerNumber 
--     FROM customers c
--     JOIN orders o USING (customerNumber)
--     JOIN orderdetails od USING (orderNumber)
--     WHERE od.priceEach > (SELECT AVG(priceEach) FROM orderdetails)
--     GROUP BY c.customerNumber
-- )
-- )

-- NO 3
-- SELECT c.customerName 
-- FROM customers c 
-- WHERE c.customerNumber IN 
-- (
--     SELECT pm.customerNumber 
--     FROM payments pm
--     WHERE pm.amount > 2 * (SELECT AVG(amount) FROM payments)
--     
--     INTERSECT 
--     
--     SELECT pm.customerNumber 
--     FROM customers c
--     JOIN orders o ON c.customerNumber = o.customerNumber
--     JOIN orderdetails od ON o.orderNumber = od.orderNumber
--     JOIN products p ON od.productCode = p.productCode
--     JOIN payments pm ON c.customerNumber = pm.customerNumber
--     WHERE (p.productLine = 'Planes' AND pm.amount > 20000)
--     
--     INTERSECT 
--     
--     SELECT pm.customerNumber
--     FROM customers c
--     JOIN orders o ON c.customerNumber = o.customerNumber
--     JOIN orderdetails od ON o.orderNumber = od.orderNumber
--     JOIN products p ON od.productCode = p.productCode
--     JOIN payments pm ON c.customerNumber = pm.customerNumber
--     WHERE (p.productLine = 'Trains' AND pm.amount > 20000)
-- );

-- NO 4
-- SELECT *
-- FROM (
-- 		SELECT o.orderDate AS Tanggal, o.customernumber, "membayar dan Memesan" AS Riwayat
-- 		FROM orders o
-- 		JOIN payments p ON o.orderDate = p.paymentDate
-- 		WHERE MONTH(o.orderDate) = 9 AND YEAR(o.orderDate) = 2003
-- 		AND MONTH(p.paymentDate) = 9 AND YEAR(p.paymentDate) = 2003
-- 		GROUP BY Tanggal
-- 
-- 
--     UNION
-- 
--     (SELECT DISTINCT o.orderDate AS Tanggal,c.customerNumber, "Memesan Barang" AS Riwayat 
--      FROM orders o
--      JOIN customers c ON o.customerNumber = c.customerNumber
--      WHERE MONTH(o.orderDate) = 9 AND YEAR(o.orderDate) = 2003)
-- 
--     UNION
-- 
--     (SELECT DISTINCT p.paymentDate AS Tanggal,c.customerNumber, "Membayar Barang" AS Riwayat 
--      FROM payments p
--      JOIN customers c ON p.customerNumber = c.customerNumber
--      WHERE MONTH(p.paymentDate) = 9 AND YEAR(p.paymentDate) = 2003)
-- ) AS CombinedResults
-- GROUP BY Tanggal;

-- NO 5
-- SELECT p.productCode 
-- FROM products p
-- JOIN orderdetails od
-- USING(productCode)
-- WHERE od.priceEach > (
--     SELECT AVG(od2.priceEach) 
--     FROM orderdetails od2
--     JOIN orders o2 
--     USING(orderNumber)
--     WHERE o2.orderDate BETWEEN '2001-01-01' AND '2004-03-31'
-- ) 
-- AND od.quantityOrdered > 48
-- AND LEFT(p.productVendor, 1) IN ('A', 'E', 'I', 'O', 'U')
-- 
-- EXCEPT
-- 
-- SELECT p.productCode 
-- FROM products p
-- JOIN orderdetails od
-- USING(productCode)
-- JOIN orders o 
-- USING(orderNumber)
-- JOIN customers c
-- USING(customerNumber)
-- WHERE c.country IN ('Japan', 'Germany', 'Italy');













