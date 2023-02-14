-- 4. Write a query to create a view with order num, order amount, customer id and customer name, and display all the fields whose order amount is highest from the view table.

mysql> CREATE VIEW OrderInfo AS
    -> SELECT O.ONUM, O.AMT, C.CNUM, C.CNAME
    -> FROM Orders O
    -> JOIN Customer C
    -> ON O.CNUM = C.CNUM;
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> SELECT *
    -> FROM OrderInfo
    -> WHERE AMT = (SELECT MAX(AMT) FROM OrderInfo);
+------+---------+------+---------+
| ONUM | AMT     | CNUM | CNAME   |
+------+---------+------+---------+
| 3011 | 9891.88 | 2006 | Clemens |
+------+---------+------+---------+
1 row in set (0.01 sec)
