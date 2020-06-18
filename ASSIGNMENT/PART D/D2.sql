--TODO 1: Find out names of all the voters who have voted in any constituency.

SELECT  Voter_name
  FROM VOTER v JOIN VOTE vt 
    ON v.voter_id = vt.voter_id
ORDER BY v.voter_name

SELECT  v.voter_name
FROM VOTER v  RIGHT JOIN VOTE vt 
    ON v.voter_id = vt.voter_id  -- Any of those can be able to find it.