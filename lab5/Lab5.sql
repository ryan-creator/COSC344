SELECT snum, MAX(amt) FROM orders GROUP BY snum ORDER BY snum;

SELECT snum, MAX(amt) FROM orders WHERE amt > 3000 GROUP BY snum ORDER BY snum;
SELECT fname, lname, salary FROM employee ORDER BY salary, lname;
SELECT orders.onum, customers.cname, customers.cnum, salespeople.snum
FROM orders, customers, salespeople
WHERE NOT customers.city = salespeople.city AND customers.cnum = orders.cnum AND orders.snum = salespeople.snum
ORDER BY onum;
SELECT cname, amt
FROM customers, orders
WHERE amt =
(SELECT MAX(amt) FROM orders) AND customers.cnum = orders.cnum;
SELECT * FROM orders
WHERE amt > 
(SELECT AVG(amt)
FROM orders
WHERE odate = TO_DATE('03-10-1990' , 'dd-mm-yyyy'));
SELECT * FROM orders
WHERE snum = 
(SELECT snum
FROM salespeople
WHERE city = 'London' AND orders.snum = salespeople.snum);
