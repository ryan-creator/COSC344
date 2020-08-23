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
