DECLARE
PROCEDURE hoursWorked (x IN NUMBER)
CURSOR ec IS
SELECT * FROM works_on WHERE pno=x;
works ec%ROWTYPE;
notenough_hours EXCEPTION;
BEGIN
FOR works IN ec LOOP
DBMS_OUTPUT.PUT_LINE(works.essn || '  ' || works.hours);
IF works.hours<8 THEN
RAISE notenough_hours;
END IF;
END LOOP;
EXCEPTION
WHEN notenough_hours THEN
DBMS_OUTPUT.PUT_LINE('Someone doesnt work enough hours');
END;
/
