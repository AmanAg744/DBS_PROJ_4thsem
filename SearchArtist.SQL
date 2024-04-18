set serveroutput on
CREATE OR REPLACE PROCEDURE GET_ARTIST_DETAILS(v_artistid artist.artistid%TYPE) IS
   v_style artist.style%TYPE;
   v_birthplace artist.birthplace%TYPE;
   v_fname artist.fname%TYPE;
   v_lname artist.lname%TYPE;
BEGIN
  
   SELECT style, birthplace, fname, lname
   INTO v_style, v_birthplace, v_fname, v_lname
   FROM artist
   WHERE artistid = v_artistid;

  
   DBMS_OUTPUT.PUT_LINE('------------------------------');
   DBMS_OUTPUT.PUT_LINE('Artist ID: ' || v_artistid);
   DBMS_OUTPUT.PUT_LINE('Style: ' || v_style);
   DBMS_OUTPUT.PUT_LINE('Birthplace: ' || v_birthplace);
   DBMS_OUTPUT.PUT_LINE('Name: ' || v_fname || ' ' || v_lname);

EXCEPTION
   WHEN NO_DATA_FOUND THEN
       DBMS_OUTPUT.PUT_LINE('Invalid artist ID! Artist does not exist in Database ' || v_artistid);
END;
/

SET SERVEROUTPUT ON;

DECLARE
   V_ARTISTID artist.artistid%TYPE;
BEGIN
   V_ARTISTID := '&ARTISTID'; 
   DBMS_OUTPUT.PUT_LINE('Enter Artist ID: ' || V_ARTISTID);
   GET_ARTIST_DETAILS(V_ARTISTID); 
END;
/