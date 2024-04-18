set serveroutput ON
CREATE OR REPLACE PROCEDURE PRINT_ARTISTS_IN_GALLERY (input_gallery_id IN GALLERY.GID%TYPE)
IS
BEGIN
    FOR artist_rec IN (SELECT * FROM ARTIST WHERE GID = input_gallery_id)
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
    gallery_id GALLERY.GID%TYPE;
BEGIN
    gallery_id := '&GID';
    DBMS_OUTPUT.PUT_LINE('ENTER GALLERY ID: ' || gallery_id);
    PRINT_ARTISTS_IN_GALLERY(gallery_id);
END;
/