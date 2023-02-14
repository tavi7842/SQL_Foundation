-- 3. Write a query to select all columns of Student table where student_id is from 1 to 3

select * from Student where Student_Id between 1 and 3;
+------------+----------+------+--------------------+--------+---------+
| Student_Id | SName    | Age  | Email_Id           | Gender | Address |
+------------+----------+------+--------------------+--------+---------+
|          1 | Vijay    |   10 | vijay@gmail.com    | Male   | Chitoor |
|          2 | Kamala   |   11 | kamal@gmail.com    | Female | Nellore |
|          3 | Gayathri |    9 | gayathri@gmail.com | Female | Guntur  |
+------------+----------+------+--------------------+--------+---------+
3 rows in set (0.01 sec)