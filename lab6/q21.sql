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
