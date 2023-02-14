-- 1. Write a query to select student names from Student table whose age is greater than 10.


select * from Student where Age>10;
+------------+---------+------+-------------------+--------+------------+
| Student_Id | SName   | Age  | Email_Id          | Gender | Address    |
+------------+---------+------+-------------------+--------+------------+
|          2 | Kamala  |   11 | kamal@gmail.com   | Female | Nellore    |
|          4 | Rakesh  |   11 | rakesh@gmail.com  | Male   | Vijayawada |
|          5 | Lakshmi |   12 | lakshmi@gmail.com | Female | Nellore    |
+------------+---------+------+-------------------+--------+------------+
3 rows in set (0.00 sec)