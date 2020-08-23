/* QUESTION 18  */

SELECT DISTINCT salespeople.snum, sname
FROM salespeople, customers couter
WHERE EXISTS (
      SELECT * FROM customers cinner
      WHERE cinner.snum = couter.snum
      AND cinner.cnum <> couter.cnum)
      AND salespeople.snum = couter.snum;
      
/* QUESTION 19  */

SELECT *
FROM orders outer
WHERE amt > (
      SELECT AVG(amt)
      FROM orders
      WHERE cnum = outer.cnum);
      
/*  QUESTION 20  */

SELECT fname, lname
FROM employee
WHERE NOT EXISTS (
      SELECT *
      FROM dependent
      WHERE ssn = essn)
      ORDER BY lname DESC;
      
/* QUESTION 21  */

INSERT INTO department VALUES
('TempDept', 6, 123456789,
TO_DATE('18-Jul-2002', 'DD-MON-YYYY'));
INSERT INTO project VALUES
('TempProject', 50, 'Houston', 6);

SELECT pno
FROM works_on, employee
WHERE lname = 'Smith' AND works_on.essn = employee.ssn
UNION SELECT pnumber
FROM department, project, employee
WHERE lname = 'Smith' AND project.dnum = dnumber AND mgrssn = employee.ssn;

DELETE FROM project WHERE pnumber = 50;
DELETE FROM department WHERE dnumber = 6;

/* QUESTION 22  */

UPDATE employee SET salary = 30000 WHERE lname = 'Smith';
UPDATE employee SET salary = 40000 WHERE lname = 'Wong';
UPDATE employee SET salary = 25000 WHERE lname = 'Zelaya';
UPDATE employee SET salary = 43000 WHERE lname = 'Wallace';
UPDATE employee SET salary = 38000 WHERE lname = 'Narayan';
UPDATE employee SET salary = 25000 WHERE lname = 'English';
UPDATE employee SET salary = 25000 WHERE lname = 'Jabbar';
UPDATE employee SET salary = 55000 WHERE lname = 'Borg';

SELECT lname, salary
FROM employee;

UPDATE employee
SET salary = salary * 1.1
WHERE NOT lname = 'Borg';

SELECT lname, salary
FROM employee;
/* QUESTION 23  */

DROP TABLE hou_emp;

CREATE TABLE hou_emp
AS (
   SELECT *
   FROM employee
   WHERE  address LIKE '%Houston%');

SELECT * FROM hou_emp;
/* QUESTION 24  */

DROP TABLE emp_dep;

CREATE TABLE emp_dep
AS (
   SELECT employee.fname, employee.lname, dependent.dependent_name, dependent.sex, dependent.bdate
   FROM employee, dependent
   WHERE dependent.essn = employee.ssn)
   ORDER BY fname;

SELECT * FROM emp_dep;
