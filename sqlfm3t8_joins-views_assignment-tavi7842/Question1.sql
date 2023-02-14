-- 1. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.
 SELECT t1.SNUM, t1.SNAME, t2.SNUM, t2.SNAME
    -> FROM Salespeople t1
    -> JOIN Salespeople t2
    -> ON t1.SNUM <= t2.SNUM;
+------+---------+------+---------+
| SNUM | SNAME   | SNUM | SNAME   |
+------+---------+------+---------+
| 1001 | Peel    | 1001 | Peel    |
| 1001 | Peel    | 1002 | Serres  |
| 1002 | Serres  | 1002 | Serres  |
| 1001 | Peel    | 1003 | AxelRod |
| 1002 | Serres  | 1003 | AxelRod |
| 1003 | AxelRod | 1003 | AxelRod |
| 1001 | Peel    | 1004 | Motika  |
| 1002 | Serres  | 1004 | Motika  |
| 1003 | AxelRod | 1004 | Motika  |
| 1004 | Motika  | 1004 | Motika  |
| 1001 | Peel    | 1005 | Fran    |
| 1002 | Serres  | 1005 | Fran    |
| 1003 | AxelRod | 1005 | Fran    |
| 1004 | Motika  | 1005 | Fran    |
| 1005 | Fran    | 1005 | Fran    |
| 1001 | Peel    | 1007 | Rifkin  |
| 1002 | Serres  | 1007 | Rifkin  |
| 1003 | AxelRod | 1007 | Rifkin  |
| 1004 | Motika  | 1007 | Rifkin  |
| 1005 | Fran    | 1007 | Rifkin  |
| 1007 | Rifkin  | 1007 | Rifkin  |
+------+---------+------+---------+
21 rows in set (0.00 sec)