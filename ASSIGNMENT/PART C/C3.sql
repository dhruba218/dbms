--TODO 1: All the unique ids of candidates and voters in the databases.
SELECT candidate_id FROM VOTE 
UNION 
SELECT VOTER_ID FROM VOTER;      


