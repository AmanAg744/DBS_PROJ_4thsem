set serveroutput on;
CREATE OR REPLACE PROCEDURE GET_CUSTOMER_DETAILS (v_custid customer.custid%TYPE) IS
   v_gid customer.gid%TYPE;
   v_fname customer.fname%TYPE;
   v_lname customer.lname%TYPE;
   v_dob customer.dob%TYPE;
   v_address customer.address%TYPE;
   v_phone customer.phone%TYPE;
BEGIN
   
   SELECT gid, fname, lname, dob, address, phone
   INTO v_gid, v_fname, v_lname, v_dob, v_address, v_phone
   FROM customer
   WHERE custid = v_custid;

   
   DBMS_OUTPUT.PUT_LINE('------------------------------');
   DBMS_OUTPUT.PUT_LINE('Customer ID: ' || v_custid);
   DBMS_OUTPUT.PUT_LINE('Gallery ID: ' || v_gid);
   DBMS_OUTPUT.PUT_LINE('Name: ' || v_fname || ' ' || v_lname);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: ' || v_dob);
   DBMS_OUTPUT.PUT_LINE('Address: ' || v_address);
   DBMS_OUTPUT.PUT_LINE('Phone: ' || v_phone);

EXCEPTION
   WHEN NO_DATA_FOUND THEN
       DBMS_OUTPUT.PUT_LINE('INVALID CUSTOMER ID! CUSTOMER DOES NOT EXIST IN THE DATABASE' || v_custid);
END;
/

DECLARE
   V_CUSTID CUSTOMER.CUSTID%TYPE;
BEGIN
   V_CUSTID := '&CUSTOMERID'; 
   DBMS_OUTPUT.PUT_LINE('Enter Customer Id: ' || V_CUSTID);
   GET_CUSTOMER_DETAILS(V_CUSTID); 
END;
/
