set serveroutput on
CREATE OR REPLACE PROCEDURE list_gallery_artworks(p_gallery_id VARCHAR2) AS
    CURSOR gallery_artworks_cursor IS
        SELECT a.artid, a.title, a.price, a.year, a.type_of_art
        FROM artwork a
        WHERE a.gid = p_gallery_id;

    v_art_id artwork.artid%TYPE;
    v_art_title artwork.title%TYPE;
    v_art_price artwork.price%TYPE;
    v_art_year artwork.year%TYPE;
    v_art_type artwork.type_of_art%TYPE;
BEGIN

    OPEN gallery_artworks_cursor;
    LOOP
     
        FETCH gallery_artworks_cursor
        INTO v_art_id, v_art_title, v_art_price, v_art_year, v_art_type;
        
        EXIT WHEN gallery_artworks_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(v_art_id || ' | ' || v_art_title || ' | ' || v_art_price || ' | ' || v_art_year || ' | ' || v_art_type);
    END LOOP;
    
    CLOSE gallery_artworks_cursor;
END;
/

DECLARE

    v_gallery_id gallery.gid%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('------------------------------');
    DBMS_OUTPUT.PUT_LINE('THE ARTWORKS IN THIS GALLERY ARE --');
    
    v_gallery_id := '&gaid';
    
    list_gallery_artworks(v_gallery_id);
END;
/
