-- PART B2

--TODO 1: Create the vote table with the constraints
CREATE TABLE VOTE(
VOTER_ID CHAR(10) PRIMARY KEY,
CANDIDATE_ID CHAR(10) DEFAULT 'CA-0000000' CHECK (CANDIDATE_ID < 'CA-9999999') NOT NULL ,
DATE_OF_VOTING DATE NOT NULL
)

--TODO 2: Create the voter table with the constraints
CREATE TABLE VOTER (
VOTER_ID CHAR(10) PRIMARY KEY,
VOTER_NAME VARCHAR2(40)NOT NULL
)

--TODO 3: Create the constituency  table with the constraints
CREATE TABLE CONSTITUENCY(
CONSTITUENCY_ID CHAR(10) PRIMARY KEY,
CONSTITUENCY_NAME VARCHAR2(40) NOT NULL)