
/**TODO 1: Write a procedure named ‘check_vote’ to check whether a certain vote is valid. 
Populate the audit_table with the message ‘Valid vote’ or ‘Invalid vote’ depending on whether the 
vote is valid or not along with the voter_id
**/

  DECLARE i NUMBER;
     
     PROCEDURE CHECK_VOTE(
     
         V_VOTER_ID IN AUDIT.VOTER_ID % TYPE;
     )
     
     IS
     
     BEGIN 
     
      SELECT * FROM CONSTITUENCY WHERE VOTER_ID = V_VOTER_ID AND
     
      CONSTITUENCY_ID IN 
                
                (
                    SELECT CONSTITUENCY_ID FROM CONSTITUENCY WHERE VOTER_ID = V_VOTER_ID;
                   
                    );
        
        i = SQL % ROWCOUNT;
        
        IF(i > 0) THEN
        
          dbms_output.put_line('VALID VOTE');
          
        ELSE
        
          dbms_output.put_line('INVALID VOTE');
          
        END IF;  
       
    END;   

--TODO 2: Check whether SMO-009218 is from constituency CO-0000652.

  BEGIN
  
   CHECK_VOTE(SMO-009218);
   
  END;