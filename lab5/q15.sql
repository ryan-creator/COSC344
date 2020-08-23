SELECT orders.onum, customers.cname, customers.cnum, salespeople.snum
FROM orders, customers, salespeople
WHERE NOT customers.city = salespeople.city AND customers.snum = orders.snum AND orders.snum = salespeople.snum
ORDER BY onum;
