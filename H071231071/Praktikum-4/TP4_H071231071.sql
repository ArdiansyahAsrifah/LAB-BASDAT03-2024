USE classicmodels


#No1
SELECT customerNumber, 
customerName, country
FROM customers
WHERE 
(country = 'USA'
AND
(creditLimit BETWEEN 50000 AND 100000))
OR 
(country != 'USA' AND
(creditLimit BETWEEN 100000 
 AND 200000))
 ORDER BY creditLimit DESC ;


#No2
SELECT productCode,
productName,
quantityInStock, buyPrice
FROM products
WHERE 
(quantityInStock BETWEEN 1000 AND 2000)
AND
(buyPrice < 50 OR buyPrice > 150)
AND 
productLine NOT LIKE '%Vintage%';


#NO3
SELECT productCode, productName,
MSRP
FROM products
WHERE productLine LIKE '%Classic%' 
AND buyPrice > 50;


#No4
SELECT orderNumber, orderDate,
`status`, customerNumber
FROM orders
WHERE
orderNumber > 10250 AND
`status` NOT IN ('Shipped', 'Cancelled')
AND ( orderDate BETWEEN 
'2003-12-31' AND '2006-01-01');


#No5 
SELECT *, (priceEach - (priceEach*5/100)) * quantityOrdered
AS discountedTotalPrice
FROM orderdetails
WHERE quantityOrdered > 50
AND priceEach > 100
AND productCode NOT LIKE 'S18%'
ORDER BY discountedTotalPrice DESC;

