# Joins
## types
* INNER JOIN
* LEFT JOIN, RIGHT JOIN
* FULL JOIN
* CROSS JOIN
* SELF JOIN


## Publisher Table

| publisher\_id | org\_name | address |
| :--- | :--- | :--- |
| 1 | Everyman's Library | NY |
| 2 | Oxford University Press | NY |
| 3 | Grand Central Publishing | Washington |
| 4 | Simon & Schuster | Chicago |


## Book Table

| book\_id | title | isbn | fk\_publisher\_id |
| :--- | :--- | :--- | :--- |
| 0 | The Diary of a Young Girl | 0199535566 | 1 |
| 1 | Pride and Prejudice | 9780307594006 | 1 |
| 2 | To Kill a Mockingbird | 0446310786 | 2 |
| 3 | The Book of Gutsy Women: Favorite Stories of Courage and Resilience | 1501178415 | 2 |
| 4 | War and Peace | 178886526 | 2 |

## Inner Join with publisher_id

| id | name | address | title | ISBN |
| :--- | :--- | :--- | :--- | :--- |
| 1 | Everyman's Library | NY | The Diary of a Young Girl | 0199535566 | 
| 1 | Everyman's Library | NY | Pride and Prejudice | 9780307594006 |
| 2 | Oxford University Press | NY | To Kill a Mockingbird | 0446310786 |
| 2 | Oxford University Press | NY | The Book of Gutsy Women: Favorite Stories of Courage and Resilience | 1501178415 |
| 2 | Oxford University Press | NY | War and Peace | 178886526 |
