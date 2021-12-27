SELECT ship_country, COUNT(*)
FROM orders
WHERE freight > 50
GROUP BY ship_country;

SELECT category_id, SUM(units_in_stock)
FROM products
GROUP BY category_id
ORDER BY sum(units_in_stock) desc
LIMIT 7;
