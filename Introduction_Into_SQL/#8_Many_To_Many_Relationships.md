# Clean before create talbes
```postgresql
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;
```


# Book
```postgresql
CREATE TABLE if not exists BOOK
(
    book_id int PRIMARY KEY,
    title text,
    ISBN varchar(256)
);
```

# Author
```postgresql
CREATE TABLE if not exists author
(
    author_id int PRIMARY KEY,
    full_name varchar(256),
    rating float
);
```

# Book author select
```postgresql

```
