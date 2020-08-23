/* QUESTION 24  */

DROP TABLE emp_dep;

CREATE TABLE emp_dep
AS (
   SELECT employee.fname, employee.lname, dependent.dependent_name, dependent.sex, dependent.bdate
   FROM employee, dependent
   WHERE dependent.essn = employee.ssn)
   ORDER BY fname;

SELECT * FROM emp_dep;
