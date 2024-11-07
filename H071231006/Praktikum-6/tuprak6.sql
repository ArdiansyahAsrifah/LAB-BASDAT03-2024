-- no 1
SELECT c.customerName, 
		 CONCAT(e.firstName, ' ', e.lastName) AS salesRep, 
		 (c.creditLimit - SUM(p.amount)) AS remainingCredit
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN payments p USING (customerNumber)
GROUP BY c.customerName
HAVING remainingCredit > 0;

-- no 2
SELECT p.productName AS 'Nama Produk', 
       GROUP_CONCAT(distinct c.customerName SEPARATOR ',') AS 'Nama Customer', 
       COUNT(DISTINCT c.customerNumber) AS 'Jumlah Customer', 
       SUM(od.quantityOrdered) AS 'Total Quantitas'
FROM products p
JOIN orderdetails od USING (productCode)
JOIN orders o USING (orderNumber)
JOIN customers c USING (customerNumber)
GROUP BY p.productName;

-- no 3
SELECT CONCAT(e.firstName, ' ', e.lastName) AS employeeName, 
       COUNT(c.customerNumber) AS totalCustomers
FROM employees e
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY e.employeeNumber
ORDER BY totalCustomers DESC;

-- no 4
SELECT CONCAT(e.firstName, ' ', e.lastName) AS NamaKaryawan, 
       p.productName AS NamaProduk, 
       SUM(od.quantityOrdered) AS JumlahPesanan
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders os ON c.customerNumber = os.customerNumber	
JOIN orderdetails od ON os.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
WHERE o.country = 'Australia'
GROUP BY NamaKaryawan, NamaProduk
ORDER BY JumlahPesanan DESC;

-- no 5
SELECT c.customerName AS 'Nama Pelanggan', 
		 p.productName AS 'Nama Produk',
		 COUNT(p.productLine) AS 'Banyak Jenis Produk'
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o. customerNumber
JOIN orderdetails AS od
ON o.orderNumber = od .orderNumber
JOIN products AS p
ON od. productCode = p.productCode
WHERE o.shippedDate IS NULL
GROUP BY c.customerName;

