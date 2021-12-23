--  Conditional selection of records
SELECT *
FROM products
WHERE unit_price > 25 AND units_in_stock > 40;

SELECT *
FROM customers
WHERE city = 'Berlin' OR city = 'San Francisco' OR city = 'London';

SELECT *
FROM ORders
WHERE shipped_date > '1998-04-30' AND (freight < 75 OR freight > 150);

