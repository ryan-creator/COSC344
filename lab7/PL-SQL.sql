set serveroutput on

DECLARE
CURSOR dep IS SELECT * FROM dependent;
d dep%ROWTYPE;

BEGIN
FOR d IN dep
    LOOP
        DBMS_OUTPUT.PUT_LINE(d.dependent_name || '  ' || d.relationship);
    END LOOP;
END;
/	


