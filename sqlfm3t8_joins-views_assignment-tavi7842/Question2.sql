-- 2. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.

SELECT C1.CNAME, C2.CNAME
    -> FROM Customer C1
    -> JOIN Customer C2
    -> ON C1.SNUM = C2.SNUM
    -> WHERE C1.CNUM <> C2.CNUM;
+---------+---------+
| CNAME   | CNAME   |
+---------+---------+
| Hoffman | Clemens |
| Liu     | Grass   |
| Grass   | Liu     |
| Clemens | Hoffman |
+---------+---------+
4 rows in set (0.01 sec)