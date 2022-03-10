## Person

| id | first_name | last_name |
|----|------------|-----------|
| 1  | John       | Snow      |
| 2  | Ned        | Stark     |
| 3  | Rob        | Brethren  |

```postgresql
CREATE TABLE person
(
    person_id  int PRIMARY KEY,
    first_name varchar(64) NOT NULL,
    last_name  varchar(64) NOT NULL
);
```

#### Insert new persons into person table

```postgresql
INSERT INTO person
VALUES (1, 'John', 'Snow'),
       (2, 'Ned', 'Stark'),
       (3, 'Rob', 'Brethren')
```

## Passport

| serial_number | registration   | fk_person_id |
|---------------|----------------|--------------|
| 123456        | Waterfall      | 1            |
| 789012        | Waterfall      | 2            |
| 345678        | King's Landing | 3            |

```postgresql
CREATE TABLE passport
(
    passport_id        int PRIMARY KEY,
    serial_number      int  NOT NULL,
    fk_passport_person int REFERENCES person (person_id),
    registration       text NOT NULL
);
```

#### Insert new passports into passport table

```postgresql
INSERT INTO passport
VALUES (1, 123456, 1, 'Waterfall'),
       (2, 789012, 2, 'Waterfall'),
       (3, 345678, 3, 'King''s Landing');
```

## Full Joined Select Result

| id  | first_name | last_name | serial_number | registration   |
|-----|------------|-----------|---------------|----------------|
| 1   | John       | Snow      | 123456        | Waterfall      |
| 2   | Ned        | Stark     | 789012        | Waterfall      |
| 3   | Rob        | Brethren  | 345678        | King's Landing |
