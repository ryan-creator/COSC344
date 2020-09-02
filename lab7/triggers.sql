CREATE OR REPLACE TRIGGER trig 
AFTER INSERT OR UPDATE OR DELETE OF salary, dno ON e1

FOR EACH ROW

BEGIN
	IF INSERTING THEN
		UPDATE d1 SET tot_sal = tot_sal + :NEW.salary WHERE dnumber = :NEW.dno;
	ELSEIF UPDATING THEN
		UPDATE d1 SET tot_sal = tot_sal- :OLD.salary WHERE dnumber = :OLD.dno;
		UPDATE d1 SET tot_sal = tot_sal + :NEW.salary WHERE dnumber = :NEW.dno;
	ELSE
		UPDATE d1 SET tot_sal = tot_sal - :OLD.salary WHERE dnumber = :OLD.dno;
	END IF;
END;
/

SELECT * FROM d1;
