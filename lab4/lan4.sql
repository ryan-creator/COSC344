DESCRIBE employee;
SELECT dependent_name FROM dependent WHERE relationship = 'Daughter' OR relationship = 'Spouse';



SELECT pname FROM project WHERE plocation IS NULL;
SELECT fname, lname, dname  FROM employee, department WHERE mgrssn = ssn;

SELECT DISTINCT fname, lname FROM employee, works_on WHERE works_on.essn = employee.ssn AND hours < 18 ORDER BY fname;

SELECT fname, lname FROM employee WHERE lname LIKE 'W%';
SELECT sname FROM salespeople WHERE city IN ('San Jose', 'Barcelona');
SQL> SELECT  cname, amt FROM customers, orders WHERE customers.cnum = orders.cnum AND amt BETWEEN 1500 AND 5000;

SELECT COUNT(*) FROM orders;
SELECT avg(amt) FROM orders;

