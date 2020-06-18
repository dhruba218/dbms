/**------------------------------------------------------------------------------------
                   
                    PART B - Solution 
 
------------------------------------------------------------------------------------ **/

-- PART B1

--TODO 1: Table creation
CREATE TABLE voter(
    voter_id CHAR(10) UNIQUE,
    voter_name VARCHAR2(40)
);
CREATE TABLE Constituency(
    constituency_id CHAR(10) UNIQUE,
    constituency_name VARCHAR2(40)
);


--TODO 2: Record insertion
INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009211', 'Sachin Sharma');
INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009212', 'Rahul Verma');


INSERT INTO constituency (constituency_id, constituency_name ) 
VALUES ('CO-0000651', 'South Delhi');
INSERT INTO constituency (constituency_id, constituency_name ) 
VALUES ('CO-0000652', 'North Delhi');


--TODO 3: Delete the constituency of South Delhi 
DELETE constituency WHERE constituency_name = 'South Delhi'

--TODO 4: Delete all records from voter table
DELETE voter 

--TODO 5: Removal of vote table
DROP TABLE VOTE



