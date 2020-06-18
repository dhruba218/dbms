/**------------------------------------------------------------------------------------
                   
                    PART A1 
 
------------------------------------------------------------------------------------ **/

-- TODO 1: Create the ‘vote’ table.
CREATE TABLE vote(
    voter_id CHAR(10),
    constituency_id CHAR(10),
    candidate_id CHAR(10),
    date_of_voting DATE
);



--TODO 2: Insert records into the ‘vote’ table.
INSERT INTO vote (voter_id, constituency_id, candidate_id, date_of_voting ) 
VALUES ('SMO-009211', 'CO-0000651', 'CA-0012892', TO_DATE('01/03/1998', 'DD/MM/YYYY'));

INSERT INTO vote (voter_id, constituency_id, candidate_id, date_of_voting ) 
VALUES ('SMO-009212', 'CO-0000652', 'CA-0012802', TO_DATE('01/03/1998', 'DD/MM/YYYY'));



-- TODO 3: Fetch the records from the ‘vote’ table as Id for the record CA-0012802

SELECT * FROM VOTE WHERE CANDIDATE_ID = 'CA-0012802';


