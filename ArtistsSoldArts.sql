SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE PRINT_ARTWORKS_FOR_ARTIST(input_artist_id IN ARTIST.ARTISTID%TYPE) AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM BUYS B
    JOIN ARTWORK A ON B.ARTID = A.ARTID
    WHERE A.ARTISTID = input_artist_id;

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No art sold by this Artist');
    ELSE
        FOR artwork_rec IN (
            SELECT B.ARTID, A.TITLE, A.PRICE, A.YEAR, A.TYPE_OF_ART, B.CUSTID
            FROM BUYS B
            JOIN ARTWORK A ON B.ARTID = A.ARTID
            WHERE A.ARTISTID = input_artist_id
        )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Artwork ID: ' || artwork_rec.ARTID);
            DBMS_OUTPUT.PUT_LINE('Title: ' || artwork_rec.TITLE);
            DBMS_OUTPUT.PUT_LINE('Price: ' || artwork_rec.PRICE);
            DBMS_OUTPUT.PUT_LINE('Customer ID: ' || artwork_rec.CUSTID);
            DBMS_OUTPUT.PUT_LINE('Year: ' || artwork_rec.YEAR);
            DBMS_OUTPUT.PUT_LINE('Type of Art: ' || artwork_rec.TYPE_OF_ART);
            DBMS_OUTPUT.PUT_LINE('------------------------------');
        END LOOP;
    END IF;
END;
/


DECLARE
    artist_id ARTIST.ARTISTID%TYPE := '&ARTIST_ID';
BEGIN
    DBMS_OUTPUT.PUT_LINE('ENTER ARTIST ID: ' || artist_id);
    DBMS_OUTPUT.PUT_LINE('------------------------------');
    DBMS_OUTPUT.PUT_LINE('DETAILS OF THE ARTS SOLD BY ARTIST --');
    PRINT_ARTWORKS_FOR_ARTIST(artist_id);
END;
/
