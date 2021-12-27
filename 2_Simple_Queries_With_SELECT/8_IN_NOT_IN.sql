-- Logical negation
SELECT *
FROM customers
WHERE country IN ('Mexico', 'Canada', 'Germany', 'USA');

SELECT *
FROM products
WHERE category_id IN (1, 3, 4, 7)
ORDER BY category_id;

SELECT *
FROM products
WHERE category_id NOT IN (1, 3, 4, 7)
