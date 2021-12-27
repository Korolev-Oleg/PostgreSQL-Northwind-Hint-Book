select * from products;

SELECT category_id, SUM(unit_price * units_in_stock)
FROM products
WHERE discontinued != 1
GROUP BY category_id
HAVING sum(unit_price * units_in_stock) > 11300
ORDER BY SUM(unit_price * units_in_stock) DESC;
