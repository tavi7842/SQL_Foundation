-- 3. Write a query that lists each order number followed by the name of the customer who made that order.

SELECT O.ONUM, C.CNAME
FROM Orders O
JOIN Customer C
ON O.CNUM = C.CNUM;

+------+----------+
| ONUM | CNAME    |
+------+----------+
| 3003 | Hoffman  |
| 3007 | Giovanni |
| 3009 | Giovanni |
| 3005 | Liu      |
| 3010 | Grass    |
| 3008 | Clemens  |
| 3011 | Clemens  |
| 3002 | Pereira  |
| 3001 | Cisneros |
| 3006 | Cisneros |
+------+----------+
10 rows in set (0.00 sec)