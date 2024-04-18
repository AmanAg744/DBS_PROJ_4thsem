DROP TABLE HISTORY;

set serveroutput on;
CREATE TABLE HISTORY (
    ARTID VARCHAR2(5) NOT NULL,
    RESOLD_DATE DATE,
    CUSTOMERID VARCHAR2(5) NOT NULL
);
CREATE OR REPLACE TRIGGER RETURN_TO_GALLERY
AFTER DELETE ON BUYS
FOR EACH ROW
BEGIN
    INSERT INTO HISTORY (ARTID, RESOLD_DATE, CUSTOMERID)
    VALUES (:OLD.ARTID, SYSDATE, :OLD.CUSTID);
END;
/

--delete from buys where artid='AT015';