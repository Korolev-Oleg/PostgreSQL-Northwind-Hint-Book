-- Target sampling of records
select company_name, contact_name, phone
from customers
where country = 'USA';

select  *
from products
where unit_price > 20;

select count(*)
from products
where unit_price < 20;

select *
from products
where discontinued = 1;

select *
from customers
where city != 'Berlin';

select *
from orders
where order_date >= '1998-01-01';

