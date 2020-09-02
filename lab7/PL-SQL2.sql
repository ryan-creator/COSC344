set serveroutput on;

CREATE OR REPLACE PROCEDURE effort (x IN NUMBER)
AS
CURSOR ec IS SELECT * FROM works_on WHERE pno=x;
works ec%ROWTYPE;
not_enough_hours EXCEPTION;

BEGIN
	FOR works IN ec LOOP
		DBMS_OUTPUT.PUT_LINE(works.essn || '  ' || works.hours);
		IF works.hours<8 THEN
			RAISE not_enough_hours;
		END IF;
	END LOOP;
	EXCEPTION
	WHEN not_enough_hours THEN
		DBMS_OUTPUT.PUT_LINE('Someone does not work enough hours');
END;
/
