/** Find all voter information irrespective of whether they have voted or not. 
The vote information should be displayed as null for the voters who haven’t voted.**/

SELECT *
FROM VOTER v LEFT JOIN VOTE vt 
ON v.voter_id = vt.voter_id
WHERE voter_name     
IN( SELECT  v.voter_name
FROM VOTER v LEFT JOIN VOTE vt 
ON v.voter_id = vt.voter_id )

