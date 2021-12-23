-- Fetching records between values
SELECT *
FROM orders
WHERE freight >= 20 AND freight <= 40;


-- The same with BETWEEN including boundaries
SELECT *
FROM orders
WHERE freight BETWEEN 79 AND 80

-- BETWEEN unworkable this
SELECT count(*)
FROM orders
WHERE freight >= 20 AND freight < 40;

-- Date choice
SELECT *
FROM orders
WHERE order_date BETWEEN  '1998-03-30' AND '1998-04-1';

SELECT *
FROM orders
WHERE order_date > '1998-03-30' AND order_date < '1998-04-1'


