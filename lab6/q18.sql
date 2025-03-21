/* QUESTION 18  */

SELECT DISTINCT salespeople.snum, sname
FROM salespeople, customers couter
WHERE EXISTS (
      SELECT * FROM customers cinner
      WHERE cinner.snum = couter.snum
      AND cinner.cnum <> couter.cnum)
      AND salespeople.snum = couter.snum;
