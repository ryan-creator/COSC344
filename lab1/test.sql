;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

DROP TABLE x;

CREATE TABLE x
(i INT, r NUMBER(6,2));

INSERT INTO x VALUES (1, 1.1);
INSERT INTO X VALUES (2, 2.2);
INSERT INTO X VALUES (3, 3.3);

COMMIT;

SELECT * FROM X;
