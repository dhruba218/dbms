--TODO 1: Add a column age to the ‘voter’ table
ALTER TABLE VOTER ADD AGE NUMBER(3);

/**TODO 2: Create a block to add the age to the voter with exceptions being handled for voter_id not 
present or same voter_id for two voters.**/
DECLARE
        
BEGIN
    
    UPDATE Voter
    SET age = 25
    WHERE voter_id = 'SMO-009288'; -- voter_id is not present in table
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN  
            dbms_output.put_line('Not Exist ');
    
END;



BEGIN
    
    UPDATE Voter
    SET age = 25
    WHERE voter_id = 'SMO-009215'; -- for SMO-009215 voter_id value(age) inserted to table with age 25
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN  
            dbms_output.put_line('Not Exist ');
    
END;