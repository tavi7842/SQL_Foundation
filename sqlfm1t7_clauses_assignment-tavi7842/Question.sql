-- 1. Write the query to display customer details whose sales_number is not equal to 1002. 

select * from customer where snum!=1002;
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+

-- 2. Write the query to display customer names with min ratings of each customer group by customer names having sum of ratings greater than 600.

  select cname,min(rating) from customer group by cname having sum(rating)>
600;
Empty set (0.00 sec)

-- 3. Write the query to display the customer names when customer_id count based the city and having customer_id count greater than 5. 

select cname,count(cnum) from customer group by city having count(cnum)>5;
Empty set (0.00 sec)

-- 4. Write the query to display customer details in the order of cites in decrementing order.

select * from customer order by city desc;

+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)

-- 5. Write the query to display customer details with the limit of 4.

select * from customer limit 4;

+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
+------+----------+----------+--------+------+
4 rows in set (0.00 sec)