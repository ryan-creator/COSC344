/* QUESTION 23  */

DROP TABLE hou_emp;

CREATE TABLE hou_emp
AS (
   SELECT *
   FROM employee
   WHERE  address LIKE '%Houston%');

SELECT * FROM hou_emp;
