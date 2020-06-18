-- TODO 1: Insert the below records into the ‘voter’ table. 
INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009219','Aditya Singh' );

INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009220','Vidhya Nair' );

INSERT INTO voter (voter_id, voter_name) 
VALUES ('SMO-009221',' Ifrah Malik' );

INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009222','Aishwariya Rai' );

INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009223','Srishti Gupta' );

INSERT INTO voter (voter_id, voter_name ) 
VALUES ('SMO-009224','Viswa Mohan' );

--TODO 2: Find out names of all the voters who haven’t voted. Order all names in ascending order

SELECT voter_name
FROM VOTER v LEFT JOIN VOTE vt 
ON v.voter_id = vt.voter_id
WHERE voter_name
NOT IN(SELECT  v.voter_name
FROM VOTER v JOIN VOTE vt 
ON v.voter_id = vt.voter_id)
ORDER BY v.voter_name ASC  --' Ifrah Malik' will come first because there has a space before name


