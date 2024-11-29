SELECT c.customername, CONCAT(e.firstName, ' ', e.lastName)  AS salesRep, (c.creditLimit - SUM(p.amount)) AS `remainingCredit`
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN payments p ON c.customernumber = p.customernumber
GROUP BY c.customername, e.firstname, e.lastname;

SELECT p.productname, c.customername, COUNT(DISTINCT c.customernumber) AS JumlahCustomer, SUM(od.quantityordered) AS TotalQuantitas
FROM products p
JOIN orderdetails od 
USING (productcode)
JOIN orders o 
USING (ordernumber)
JOIN customers c
USING (customernumber)
GROUP BY p.productname;

SELECT CONCAT(e.firstname, ' ', e.lastname) AS employeename, COUNT(c.salesrepemployeenumber) AS totalCustomer
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
GROUP BY employeename
ORDER BY Totalcustomer DESC

SELECT CONCAT(e.firstName, ' ', e.lastName) AS `Nama Karyawan`,
p.productName AS "Nama Produk",
SUM(od.quantityOrdered) AS `Jumlah Pesanan`
FROM products AS p
JOIN orderdetails AS od
USING (productCode)
JOIN orders
USING (orderNumber)
JOIN customers AS c
USING (customerNumber)
RIGHT JOIN employees AS e
ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices AS o
USING (officeCode)
WHERE o.country LIKE "Australia"
GROUP BY p.productName, `Nama Karyawan`
ORDER BY `Jumlah Pesanan` DESC;


SELECT c.customerName, p.productName, COUNT(p.productLine) AS "Banyak Jenis Produk"
FROM customers AS c
JOIN orders AS o
USING (customerNumber)
JOIN orderdetails AS od
USING (orderNumber)
JOIN products AS p
USING (productCode)
WHERE (o.shippedDate IS NULL)
GROUP BY (c.customerName);

