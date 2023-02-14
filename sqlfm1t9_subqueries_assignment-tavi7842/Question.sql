-- 1. Find all rows from the Customers table for which the salesperson number is 1001.

 SELECT *
FROM Customer
WHERE SNUM = 1001;

+------+-------+--------+------+
| snum | sname | city   | comm |
+------+-------+--------+------+
| 1001 | Peel  | London | 0.12 |
+------+-------+--------+------+
1 row in set (0.00 sec)

-- 2. Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.
  SELECT CNAME, O1.ONUM, O2.ONUM
    -> FROM Orders O1, Orders O2, Customer
    -> WHERE O1.CNUM = O2.CNUM
    -> AND O1.CNUM = Customer.CNUM
    -> AND O1.ONUM < O2.ONUM;
+----------+------+------+
| CNAME    | ONUM | ONUM |
+----------+------+------+
| Giovanni | 3007 | 3009 |
| Clemens  | 3008 | 3011 |
| Cisneros | 3001 | 3006 |
+----------+------+------+
3 rows in set (0.00 sec)

-- 3. Find the total amount in Orders for each salesperson for whom this total is greater than the amount of the largest order in the table.
  SELECT SNAME, SUM(AMT) AS Total
    -> FROM Salespeople, Orders, Customer
    -> WHERE Salespeople.SNUM = Customer.SNUM
    -> AND Customer.CNUM = Orders.CNUM
    -> GROUP BY SNAME
    -> HAVING SUM(AMT) > (SELECT MAX(AMT) FROM Orders);
+-------+----------+
| SNAME | Total    |
+-------+----------+
| Peel  | 15382.07 |
+-------+----------+
1 row in set (0.01 sec)


-- 4. Write a query that produces the names and ratings of all customers of all who have above average orders.
  
 SELECT CNAME, RATING
    -> FROM Customer, Orders
    -> WHERE Customer.CNUM = Orders.CNUM
    -> AND AMT > (SELECT AVG(AMT) FROM Orders);
+---------+--------+
| CNAME   | RATING |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
| Clemens |    100 |
+---------+--------+
3 rows in set (0.02 sec)