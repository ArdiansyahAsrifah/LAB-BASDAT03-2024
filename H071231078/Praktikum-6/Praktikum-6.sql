-- NO. 1
-- SELECT c.customerName, CONCAT(e.firstName,' ',e.lastName) AS 'SalesRep', (c.creditLimit - SUM(p.amount)) AS remainingCredit FROM customers c
-- JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
-- JOIN payments p USING(customernumber)
-- GROUP BY c.customerName 
-- HAVING remainingCredit > 0;

-- NO. 2
-- SELECT p.productName AS 'nama produk', GROUP_CONCAT(c.customerName ORDER BY c.customerName) AS 'nama customer', COUNT( DISTINCT c.customerNumber) AS 'jumlah customer', sum(od.quantityOrdered) AS 'Total Quantitas' from orders o 
-- JOIN customers c USING(customerNumber)
-- JOIN orderdetails od USING (orderNumber)
-- JOIN products p USING(productcode)
-- GROUP BY p.productName

-- NO. 3
-- SELECT CONCAT(e.firstName,' ',e.lastName) AS 'employeeName', COUNT(c.customerNumber) AS 'totalCustomer' FROM employees e
-- JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
-- GROUP BY e.lastname ORDER BY totalcustomer desc

-- NO. 4
-- SELECT CONCAT(e.firstName,' ',e.lastName) AS 'NamaKaryawan', p.productName AS 'Nama Produk', SUM(od.quantityOrdered) AS 'JumlahPesanan' FROM products p
-- JOIN orderdetails od USING (productcode)
-- JOIN orders o USING (ordernumber)
-- JOIN customers c USING (customernumber)
-- right JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
-- JOIN offices ofc USING (officecode)
-- WHERE ofc.country = "australia"
-- GROUP BY e.employeeNumber, p.productName
-- ORDER BY JumlahPesanan desc

-- NO. 5
-- SELECT c.customerName AS 'Nama Pelanggan', group_concat(p.productName ORDER BY p.productName) AS 'Nama Produk', COUNT(DISTINCT p.productCode) AS 'Banyak Jenis Produk' FROM customers c
-- JOIN orders o USING (customernumber)
-- JOIN orderdetails od USING(ordernumber)
-- JOIN products p USING (productcode)
-- WHERE o.shippedDate is null
-- GROUP BY c.customerName
-- ORDER BY 'Nama Pelanggan'
