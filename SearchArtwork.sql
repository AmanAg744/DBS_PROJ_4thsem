set serveroutput on
CREATE OR REPLACE PROCEDURE GET_ARTWORK_DETAILS(v_artid artwork.artid%TYPE) IS
   v_title artwork.title%TYPE;
   v_price artwork.price%TYPE;
   v_year artwork.year%TYPE;
   v_artistid artwork.artistid%TYPE;
   v_type_of_art artwork.type_of_art%TYPE;
   v_eid artwork.eid%TYPE;
   v_gid artwork.gid%TYPE;
BEGIN
  
   SELECT title, price, year, artistid, type_of_art, eid, gid
   INTO v_title, v_price, v_year, v_artistid, v_type_of_art, v_eid, v_gid
   FROM artwork
   WHERE artid = v_artid;

   DBMS_OUTPUT.PUT_LINE('------------------------------');
   DBMS_OUTPUT.PUT_LINE('Artwork ID: ' || v_artid);
   DBMS_OUTPUT.PUT_LINE('Title: ' || v_title);
   DBMS_OUTPUT.PUT_LINE('Price: ' || v_price);
   DBMS_OUTPUT.PUT_LINE('Year: ' || v_year);
   DBMS_OUTPUT.PUT_LINE('Artist ID: ' || v_artistid);
   DBMS_OUTPUT.PUT_LINE('Type of Art: ' || v_type_of_art);
   DBMS_OUTPUT.PUT_LINE('Exhibition ID: ' || v_eid);
   DBMS_OUTPUT.PUT_LINE('Gallery ID: ' || v_gid);

EXCEPTION
   WHEN NO_DATA_FOUND THEN
       DBMS_OUTPUT.PUT_LINE('INVALID ARTWORK ID! ARTWORK DOES NOT EXIST' || v_artid);
END;
/

DECLARE
   V_ARTID artwork.artid%TYPE;
BEGIN
   V_ARTID := '&ARTWORKID'; 
   DBMS_OUTPUT.PUT_LINE('Enter Artwork ID: ' || V_ARTID);
   GET_ARTWORK_DETAILS(V_ARTID); 
END;
/