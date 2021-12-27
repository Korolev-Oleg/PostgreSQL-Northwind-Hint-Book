-- Union costumers and employees by country
SELECT country
FROM customers
UNION
SELECT country
FROM employees
ORDER BY country;

-- find country suppliers same as country customers
SELECT country
FROM suppliers
INTERSECT
SELECT country
from customers;

-- find the country from which customers, and not suppliers
SELECT country
FROM customers
    EXCEPT
SELECT country
FROM suppliers;

-- except suppliers countries from customers countries
SELECT country
FROM customers
    EXCEPT ALL
SELECT country
FROM suppliers;
