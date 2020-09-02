DROP TABLE e1 cascade constraints;
DROP TABLE d1 cascade constraints;

CREATE TABLE d1
  (dname        VARCHAR2(15)  NOT NULL UNIQUE,
   dnumber      NUMBER(2)     PRIMARY KEY,
   tot_sal      NUMBER(12) DEFAULT 0);

INSERT INTO d1 VALUES
   ('Headquarters', 1, 0);
INSERT INTO d1 VALUES
   ('Administration', 4, 0);
INSERT INTO d1 VALUES
   ('Research', 5, 0);


CREATE TABLE e1
  (fname    VARCHAR2(15) NOT NULL,
   ssn      CHAR(9)      PRIMARY KEY,
   salary   NUMBER(6),
   dno      INT          NOT NULL 
      REFERENCES d1(dnumber));

CREATE OR REPLACE TRIGGER trig 
AFTER INSERT OR UPDATE OR DELETE OF salary, dno ON e1

FOR EACH ROW

BEGIN
	IF INSERTING THEN
		UPDATE d1 SET tot_sal = tot_sal + :NEW.salary WHERE dnumber = :NEW.dno;
	ELSIF UPDATING THEN
		UPDATE d1 SET tot_sal = tot_sal- :OLD.salary WHERE dnumber = :OLD.dno;
		UPDATE d1 SET tot_sal = tot_sal + :NEW.salary WHERE dnumber = :NEW.dno;
	ELSE
		UPDATE d1 SET tot_sal = tot_sal - :OLD.salary WHERE dnumber = :OLD.dno;
	END IF;
END;
/

INSERT INTO e1 VALUES
  ('John','123456789',30000,5);
INSERT INTO e1 VALUES
  ('Franklin','333445555',40000,5);
INSERT INTO e1 VALUES
  ('Alicia','999887777',25000,4);
INSERT INTO e1 VALUES
  ('Jennifer','987654321',43000,4);
INSERT INTO e1 VALUES
  ('Ramesh','666884444',38000,5);
INSERT INTO e1 VALUES
  ('Joyce','453453453',25000,5);
INSERT INTO e1 VALUES
  ('Ahmad','987987987',25000,4);
INSERT INTO e1 VALUES
  ('James','888665555',55000,1);

SELECT dnumber, tot_sal FROM d1;

/* Employee gets a $10 raise */
UPDATE e1 SET salary=25010 WHERE ssn='987987987';

SELECT dnumber, tot_sal FROM d1;

/* Only employee in department '1' is fired */
DELETE FROM e1 WHERE ssn='888665555';

SELECT dnumber, tot_sal FROM d1;

/* Moves someone from department 5 to department 1 after the person was fired */
UPDATE e1 SET dno=1 WHERE  ssn='666884444';

SELECT dnumber, tot_sal FROM d1;

COMMIT;










