# Relational DBMS

* The theoretical basis is relational algebra
* Relational algebra defines a system of operations on relations (tables): union, intersection, subtraction, connection,
  etc.
* All operations are expressed in SQL

# Relational model

| Victoria Ashworth | Fauntleroy Circus       | London       |
|-------------------|-------------------------|--------------|
| Patricio Simpson  | Cerrito 333             | Buenos Aires |
| Francisco Chang   | Sierras de Granada 9993 | México D.F.  |
| Yang Wang         | Hauptstr. 29            | Bern         |
| Pedro Afonso      | Av. dos Lusíadas, 23    | Sao Paulo    |

* Entity - customers, orders, suppliers
* Table - ratio
* Column - attribute (contact_name, address, city)
* Result set

```sql
SELECT contact_name, address, city
FROM customers
LIMIT 5 OFFSET 10
```

# SQL - Structured Query Language

* SQL is not a procedural language or a general language
* If you need to implement procedural logic, you need another language, such as Python, C #, Java, etc.

---

* The result of an SQL query is a result set (usually a table)
* DDL (Data Definition Language) - `CREATE`, `ALTER`, `DROP`
* DML (Data Manipulation Language) - `SELECT`, `INSERT`, `UPDATE`, `DELETE`
* TCL (Transaction Control Language) - `COMMIT`, `ROLLBACK`, `SAVEPOINT`
* DCL (Data Control Language) - `GRANT`, `REVOKE`, `DENY`
* ANSI SQL-92
* Differences in procedural extensions: <br> `PL/pgSQL` in PostgreSQL, `PL/SQL` in Oracle, `T-SQL` in MS SQL


