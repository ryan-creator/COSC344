/* QUESTION 19  */

SELECT *
FROM orders outer
WHERE amt > (
      SELECT AVG(amt)
      FROM orders
      WHERE cnum = outer.cnum);
