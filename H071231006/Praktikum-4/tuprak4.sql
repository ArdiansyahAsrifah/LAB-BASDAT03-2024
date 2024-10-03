USE classicmodels;

-- no 1
SELECT customernumber, customername, country FROM customers
WHERE country = 'USA' AND creditLimit BETWEEN 50000 AND 100000
   OR country != 'USA' AND creditLimit BETWEEN 100000 AND 200000
ORDER BY creditLimit DESC;

-- no 2
SELECT productcode, productname, quantityinstock, buyprice FROM products
WHERE quantityinstock BETWEEN 1000 AND 2000
	AND buyprice < 50 OR buyprice > 150
	AND productline NOT LIKE '%Vintage%';

-- no 3
SELECT productcode, productname, msrp FROM products
WHERE productline LIKE '%Classic%' AND buyprice > 50;

-- no 4
SELECT ordernumber, orderdate, `status`, customernumber FROM orders
WHERE ordernumber > 10250
  AND `status` not IN ('shipped','cancelled')
  AND orderdate BETWEEN '2004-01-01' AND '2005-12-31';
  
-- no 5
SELECT *, quantityordered * priceEach * 0.95 AS discountedTotalPrice FROM orderdetails
WHERE quantityordered > 50
  AND priceEach > 100
  AND productCode NOT LIKE 'S18%'
ORDER BY discountedTotalPrice DESC;