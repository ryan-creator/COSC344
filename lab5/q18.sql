SELECT * FROM orders
WHERE snum = 
(SELECT snum
FROM salespeople
WHERE city = 'London' AND orders.snum = salespeople.snum);
