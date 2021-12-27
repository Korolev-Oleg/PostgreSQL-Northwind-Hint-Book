-- Scalar functions
SELECT ship_city, order_date
FROM orders
WHERE ship_city = 'London'
ORDER BY order_date ASC;

SELECT MIN(order_date)
FROM orders
WHERE ship_city = 'London';

SELECT ship_city, order_date
FROM orders
WHERE ship_city = 'London'
ORDER BY order_date DESC;

SELECT max(order_date)
FROM orders
WHERE ship_city = 'London';

SELECT AVG(unit_price)
FROM products
WHERE discontinued != 1;

SELECT SUM(units_in_stock)
FROM products
WHERE discontinued != 1;

