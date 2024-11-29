CREATE DATABASE praktikum9;
USE praktikum9;
CREATE TABLE klub (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nama_klub VARCHAR(50) NOT NULL,
	kota_asal VARCHAR(50) NOT NULL
);

CREATE TABLE pemain (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nama_pemain VARCHAR(50) NOT NULL,
	posisi VARCHAR(20) NOT NULL,
	id_klub INT,
	FOREIGN KEY (id_klub) REFERENCES klub(id)
);

CREATE TABLE pertandingan (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_klub_tuan_rumah INT,
	id_klub_tamu INT,
	tanggal_pertandingan DATE NOT NULL,
	skor_tuan_rumah INT DEFAULT 0,
	skor_tamu INT DEFAULT 0,
	FOREIGN KEY (id_klub_tuan_rumah) REFERENCES klub(id),
	FOREIGN KEY (id_klub_tamu) REFERENCES klub(id)
);

CREATE INDEX idx_posisi ON pemain(posisi);
CREATE INDEX idx_kota_asal ON klub(kota_asal);
DESCRIBE pemain;
DESCRIBE klub;
DESCRIBE pertandingan;

SELECT 
   customerName,
   country,
   FORMAT(SUM(amount), )  AS 'TotalPayment',
   COUNT(orderNumber) AS 'OrderCount',
   MAX(paymentDate) AS 'LastPaymentDate',
   CASE 
   	WHEN SUM(amount) > 100000 THEN 'VIP'
   	WHEN SUM(amount) BETWEEN 5000 AND 100000 THEN 'Loyal'
   	ELSE 'New'
   END AS `Status`
FROM 
   customers
LEFT JOIN 
   payments ON customers.customerNumber = payments.customerNumber
LEFT JOIN 
   orders ON customers.customerNumber = orders.customerNumber
GROUP BY 
   customers.customerNumber
ORDER BY 
   customerName;

SELECT 
   c.customerNumber,
   c.customerName,
   SUM(od.quantityOrdered) AS total_quantity,
   CASE 
      WHEN SUM(od.quantityOrdered) > (SELECT AVG(quantityOrdered) FROM orderdetails) THEN 'di atas rata-rata'
      ELSE 'di bawah rata-rata'
   END AS kategori_pembelian
FROM 
   customers c
JOIN 
   orders o ON c.customerNumber = o.customerNumber
JOIN 
   orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY 
   c.customerNumber, c.customerName
ORDER BY 
   total_quantity DESC; 
   
SELECT * FROM customers

START TRANSACTION

UPDATE customers
SET customername = "konsonan"
WHERE state NOT LIKE "%aiueo%";

rollback
SELECT 


   
