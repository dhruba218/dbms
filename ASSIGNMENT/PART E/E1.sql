--TODO 1: Create an audit table to store the audit results 
CREATE TABLE AUDITTABLE (
VOTER_ID CHAR(5) PRIMARY KEY,
MESSEGE VARCHAR2(200)
)
ALTER TABLE audittable
ADD FOREIGN KEY (VOTER_ID) REFERENCES VOTER(voter_ID);

/**TODO 2: 
Write an anonymous block to check whether a voter_id as ‘SMO-009215' is a valid voter in the constituency 
‘CO-0000652’. If the vote is from a registered voter, populate the Audit Table with the message ‘Valid vote’. 
If it is not, populate the Audit Table with the message ‘Invalid vote.’ **/
SET SERVEROUTPUT ON
DECLARE
b constituency.voter_id%TYPE;
--x CHAR(10) := 'SMO-009215';
BEGIN

FOR x IN (SELECT constituency_id INTO b
                 FROM constituency
                 WHERE constituency.voter_id ='SMO-009215')
   LOOP
    IF b IS NULL THEN DBMS_OUTPUT.PUT_LINE('Valid vote'); 
    ELSE DBMS_OUTPUT.PUT_LINE('Invalid vote'); END IF;
   END LOOP;
   
END;
/