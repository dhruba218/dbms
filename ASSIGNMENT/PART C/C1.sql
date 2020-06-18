/**TODO 1:Adding reference of voter to the candidate. **/
-- DROP all previous constraints like DEFAULT, CHECK in vote table
-- We can do it through DROP the table and again CREATE the table without all these constraints
ALTER TABLE VOTE
ADD FOREIGN KEY (CANDIDATE_ID) REFERENCES VOTER(VOTER_ID);
ALTER TABLE VOTE MODIFY (CANDIDATE_ID CHAR(10) NOT NULL);



/**TODO 2: In the ‘constituency’ table every record should be 
uniquely identified by ‘constituency_id’ and ‘voter_id'. **/
ALTER TABLE constituency ADD ( voter_id CHAR(10) );
ALTER TABLE constituency MODIFY ( voter_id CHAR(10) UNIQUE NOT NULL);

-- TODO B3 - Already declared constituency_id as PRIMARY KEY