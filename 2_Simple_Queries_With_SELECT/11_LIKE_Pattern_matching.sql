-- placeholder `%` meaning 0, 1 or more characters
-- placeholder `_` meaning 1 any char
-- LIKE `U%` - string, beginning with `U`


-- Select employers where firstname endswith `n`
select last_name, first_name
from employees
where first_name like '%n';

select last_name, first_name
from employees
where first_name like 'uch%';

select *
from employees
where first_name like '%An%'

