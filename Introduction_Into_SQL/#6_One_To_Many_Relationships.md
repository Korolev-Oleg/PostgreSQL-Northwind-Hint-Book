# Publisher Table

| publisher\_id | org\_name | address |
| :--- | :--- | :--- |
| 1 | Everyman's Library | NY |
| 2 | Oxford University Press | NY |
| 3 | Grand Central Publishing | Washington |
| 4 | Simon & Schuster | Chicago |

```sql
CREATE TABLE if not exists publisher 
(
    publisher_id integer PRIMARY KEY,
    org_name     varchar(128) NOT NULL,
    address      text         NOT NULL
)
```

#### Insert new publishers into publisher table

```postgresql
INSERT INTO publisher
VALUES (1, 'Everyman''s Library', 'NY'),
       (2, 'Oxford University Press', 'NY'),
       (3, 'Grand Central Publishing', 'Washington'),
       (4, 'Simon & Schuster', 'Chicago')
```

## Book Table

| book\_id | title | isbn | fk\_publisher\_id |
| :--- | :--- | :--- | :--- |
| 0 | The Diary of a Young Girl | 0199535566 | 1 |
| 1 | Pride and Prejudice | 9780307594006 | 1 |
| 2 | To Kill a Mockingbird | 0446310786 | 2 |
| 3 | The Book of Gutsy Women: Favorite Stories of Courage and Resilience | 1501178415 | 2 |
| 4 | War and Peace | 178886526 | 2 |


```postgresql
CREATE TABLE if not exists book
(
    book_id         integer PRIMARY KEY,
    title           text                                        NOT NULL,
    isbn            varchar(32)                                 NOT NULL,
    fk_publisher_id integer REFERENCES publisher (publisher_id) NOT NULL
)
```

#### Insert new books in to book table

```postgresql
INSERT INTO book
VALUES (0, 'The Diary of a Young Girl', '0199535566', 1),
       (1, 'Pride and Prejudice', '9780307594006', 1),
       (2, 'To Kill a Mockingbird', '0446310786', 2),
       (3, 'The Book of Gutsy Women: Favorite Stories of Courage and Resilience', '1501178415', 2),
       (4, 'War and Peace', '178886526', 2);
```

## Publisher relationship with books result

| id | name                    | address | title                   | ISBN       |
|----|-------------------------|---------|-------------------------|------------|
| 2  | Oxford University Press | NY      | To Kill a Mockingbird   | 0446310786 |
| 2  | Oxford University Press | NY      | The Book of Gusty Women | 1501178415 |
| 2  | To Kill a Mockingbird   | NY      | War and Peace           | 1788886526 |

