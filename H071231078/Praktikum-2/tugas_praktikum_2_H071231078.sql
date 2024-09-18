-- nomor-1
-- SELECT productCode AS `Kode Produk`, productName AS `Nama Produk`, quantityInStock AS `Jumlah Stock` 
-- FROM products
-- WHERE quantityInStock BETWEEN 5000 AND 6000;
-- 
-- nomor 2
-- SELECT orderNumber AS `Nomor Pesanan`, orderDate AS `Tanggal Pesanan`, `status` , customerNumber AS `Nomor Pelanggan` 
-- FROM orders 
-- WHERE `status` != "shipped" 
-- ORDER BY customerNumber desc

-- nomor 3
-- SELECT employeeNumber AS `Nomor Karyawan`, firstName, lastName, email, jobTitle AS `jabatan` 
-- FROM employees 
-- WHERE jobTitle = 'Sales Rep'
-- ORDER BY firstName
-- LIMIT 10;


-- nomor-4

-- SELECT productCode AS `Kode Produk`, productName AS `Nama Produk`, productLine AS `Lini Produk`, buyPrice AS `Harga Beli` 
-- FROM products
-- ORDER BY buyPrice DESC
-- LIMIT 5,10;

-- nomor-5

-- SELECT DISTINCT country, city FROM customers 
-- ORDER BY country ASC, city ASC; 
