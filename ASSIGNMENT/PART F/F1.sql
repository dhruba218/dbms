/** TODO 1: Write a procedure named ‘cast_vote’ to check with parameter v_voter_id, v_candidate_id and 
v_date_of_voting to insert the vote details into the vote table.**/

DECLARE i NUMBER;

    PROCEDURE CAST_VOTE(
    
        V_VOTER_ID IN VOTE.VOTER_ID % TYPE;
        V_CANDIDATE_ID IN VOTE.CANDIDATE_ID % TYPE;
        V_DATE_OF_VOTING IN VOTE.DATE_OF_VOTING % TYPE;
    )
    
    IS
     
     BEGIN 
     
     INSERT INTO VOTE ("VOTER_ID","CANDIDATE_ID","DATE_OF_VOTING")VALUES(V_VOTER_ID,V_CANDIDATE_ID,V_DATE_OF_VOTING);
     
     COMMIT;
     
     END;
     
     


--TODO 2: Add the vote of SMO-009223 to the SMO-009218 on 04-03-98
       
       BEGIN 
       
          CAST_VOTE('SMO-009223','SMO-009218','04-03-98');
          
       END;      


--TODO 3: Check whether the vote has been added.

       BEGIN     

             i = sql % rowcount;
             
             if(i > 0)
                
                dbms_output.put_line('VOTE CASTED');
                
            end if;
            
        END;