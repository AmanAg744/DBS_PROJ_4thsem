set SERVEROUTPUT on
CREATE OR REPLACE PROCEDURE PRINT_ARTWORKS_IN_EXHIBITION (input_exhibition_id IN EXHIBITION.EID%TYPE)
IS
BEGIN
    FOR artworks IN (SELECT *
                     FROM ARTWORK
                     WHERE EID = input_exhibition_id)
    LOOP
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        DBMS_OUTPUT.PUT_LINE('Artwork ID: ' || artworks.ARTID);
        DBMS_OUTPUT.PUT_LINE('Title: ' || artworks.TITLE);
        DBMS_OUTPUT.PUT_LINE('Price: ' || artworks.PRICE);
        DBMS_OUTPUT.PUT_LINE('Year: ' || artworks.YEAR);
        DBMS_OUTPUT.PUT_LINE('Type of Art: ' || artworks.TYPE_OF_ART);
       
    END LOOP;
END;
/

DECLARE
    exhibitionid EXHIBITION.EID%TYPE;
BEGIN
    exhibitionid := '&EID';
    DBMS_OUTPUT.PUT_LINE('ENTER EXHIBITIONID ' || exhibitionid);
    PRINT_ARTWORKS_IN_EXHIBITION(exhibitionid);
END;
/
