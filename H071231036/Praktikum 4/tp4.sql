SELECT customernumber, customername, country  FROM customers
WHERE creditlimit BETWEEN 50000 AND 100000 AND country = "usa" or creditlimit BETWEEN 100000 AND 200000 AND country != "usa" 
ORDER BY creditlimit

SELECT productcode, productname, quantityinstock, buyprice FROM products
WHERE quantityinstock BETWEEN 1000 AND 2000 AND buyprice BETWEEN 50 AND 150 AND productline != "vintage cars" AND  productline != "classic cars"

SELECT productcode, productname, MSRP FROM products
WHERE productline LIKE "%classic%" AND buyprice > 50

SELECT ordernumber, orderdate, `status`, customernumber FROM orders
WHERE ordernumber > 10250 AND `status` != "shipped" AND `status` !=  "cancelled" AND orderdate BETWEEN "2004-01-01" AND "2005-12-31"


ALTER TABLE orderdetails 
ADD COLUMN discountedTotalPrice DECIMAL(10, 2);

UPDATE orderdetails 
SET discountedTotalPrice = priceeach * 0.95

SELECT ordernumber, orderlinenumber, productcode, quantityordered, priceeach, discountedtotalprice FROM orderdetails

WHERE quantityordered > 50 AND priceeach > 100 AND productcode NOT LIKE "%S18%" 





