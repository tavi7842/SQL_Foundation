-- 4. Write the query to delete the records from Student table whose sname contains ‘V’.

select * from Student;
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

delete from Student where SName like "%V%";
Query OK, 2 rows affected (0.00 sec)

mysql> select * from Student;
+------------+----------+------+--------------------+--------+---------+
| Student_Id | SName    | Age  | Email_Id           | Gender | Address |
+------------+----------+------+--------------------+--------+---------+
|          2 | Kamala   |   11 | kamal@gmail.com    | Female | Nellore |
|          3 | Gayathri |    9 | gayathri@gmail.com | Female | Guntur  |
|          5 | Lakshmi  |   12 | lakshmi@gmail.com  | Female | Nellore |
+------------+----------+------+--------------------+--------+---------+
3 rows in set (0.00 sec)
