/**TODO 1: Create a view named ‘vote_view’ which displays the name of the voter, 
the constituency name which they belong to and the candidate id for which they have voted.**/
CREATE VIEW VOTE_VIEW AS
SELECT v.voter_name, co.constituency_name, vt.candidate_id
FROM VOTER v JOIN CONSTITUENCY co 
ON v.voter_id = co.voter_id
JOIN VOTE vt
ON v.voter_id = vt.voter_id