/**TODO 1: Find the voter_id of all voters who are candidates as well. 
Note: There should be no repetition of IDs. (HINT: You can use DISTINCT operator to avoid repetition of IDs).**/

SELECT DISTINCT v.voter_id
FROM VOTER v JOIN VOTE vt 
ON v.voter_id = vt.candidate_id