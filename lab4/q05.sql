SELECT DISTINCT fname, lname FROM employee, works_on WHERE works_on.essn = employee.ssn AND hours < 18 ORDER BY fname;

