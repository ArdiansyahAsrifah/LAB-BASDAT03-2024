SELECT productCode, productName, buyPrice
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products);

SELECT o.orderNumber, o.orderDate
FROM orders o
WHERE o.customerNumber IN (
    SELECT c.customerNumber
    FROM customers c
    WHERE c.salesRepEmployeeNumber IN (
        SELECT e.employeeNumber
        FROM employees e
        WHERE e.officeCode IN (
            SELECT o.officeCode
            FROM offices o
            WHERE o.city = 'Tokyo'
        )
    )

SELECT 
    c.customerName,
    o.orderNumber,
    o.shippedDate,
    o.requiredDate,
    p.productName,
    od.quantityOrdered AS total_quantity_ordered
FROM 
    orders o
JOIN 
    customers c ON o.customerNumber = c.customerNumber
JOIN 
    orderdetails od ON o.orderNumber = od.orderNumber
JOIN 
    products p ON od.productCode = p.productCode
WHERE 
    o.orderNumber IN (
        SELECT o2.orderNumber
        FROM orders o2
        WHERE o2.shippedDate > o2.requiredDate
    );



SELECT 
    p.productName,
    p.productLine,
    SUM(od.quantityOrdered) AS total_quantity_ordered
FROM 
    products p
JOIN 
    orderdetails od ON p.productCode = od.productCode
WHERE 
    p.productLine IN (
        SELECT productLine
        FROM (
            SELECT 
                p.productLine,
                SUM(od.quantityOrdered) AS total_quantity_ordered
            FROM 
                products p
            JOIN 
                orderdetails od ON p.productCode = od.productCode
            GROUP BY 
                p.productLine
            ORDER BY 
                total_quantity_ordered DESC
            LIMIT 3
        ) AS top_categories
    )
GROUP BY 
    p.productName, p.productLine
ORDER BY 
    total_quantity_ordered DESC;





