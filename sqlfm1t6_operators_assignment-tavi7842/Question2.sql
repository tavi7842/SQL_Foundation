-- 2. Write a query to update sname as ‘Vikas’ of Student table where student_id is 4.

update Student set SName="Vikas" where Student_Id=4;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Student;
+------------+----------+------+--------------------+--------+------------+
| Student_Id | SName    | Age  | Email_Id           | Gender | Address    |
+------------+----------+------+--------------------+--------+------------+
|          1 | Vijay    |   10 | vijay@gmail.com    | Male   | Chitoor    |
|          2 | Kamala   |   11 | kamal@gmail.com    | Female | Nellore    |
|          3 | Gayathri |    9 | gayathri@gmail.com | Female | Guntur     |
|          4 | Vikas    |   11 | rakesh@gmail.com   | Male   | Vijayawada |
|          5 | Lakshmi  |   12 | lakshmi@gmail.com  | Female | Nellore    |
+------------+----------+------+--------------------+--------+------------+
5 rows in set (0.00 sec)