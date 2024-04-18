set serveroutpu ON
CREATE OR REPLACE PROCEDURE PRINT_ARTISTS_IN_EXHIBITION (input_exhibition_id IN EXHIBITION.EID%TYPE)
IS
BEGIN
    FOR artist_rec IN (SELECT * FROM ARTIST WHERE EID = input_exhibition_id)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Artist ID: ' || artist_rec.ARTISTID);
        DBMS_OUTPUT.PUT_LINE('First Name: ' || artist_rec.FNAME);
        DBMS_OUTPUT.PUT_LINE('Last Name: ' || artist_rec.LNAME);
        DBMS_OUTPUT.PUT_LINE('Style: ' || artist_rec.STYLE);
        DBMS_OUTPUT.PUT_LINE('------------------------------');
    END LOOP;
END;
/
DECLARE
    exhibition_id EXHIBITION.EID%TYPE;
BEGIN
    exhibition_id := '&EID';
    DBMS_OUTPUT.PUT_LINE('ENTER EXHIBITION ID: ' || exhibition_id);
    PRINT_ARTISTS_IN_EXHIBITION(exhibition_id);
END;
/
