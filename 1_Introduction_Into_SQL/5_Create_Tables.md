### Create table publisher

```sql
CREATE TABLE publisher
(
    org_name     varchar(128) NOT NULL,
    address      text         NOT NULL,
    publisher_id integer PRIMARY KEY
)
```
[View Table](./6_One_To_Many_Relationships.md)

### Create table book

```postgresql
CREATE TABLE book
(
    book_id integer PRIMARY KEY,
    title   text        NOT NULL,
    isbn    varchar(32) NOT NULL,
    fk_publisher_id integer REFERENCES publisher(publisher_id) NOT NULL 
)
```
[View Table](./6_One_To_Many_Relationships.md#book-table)
