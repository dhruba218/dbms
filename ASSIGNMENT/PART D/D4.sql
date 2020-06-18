/**TODO 1: Find the number of votes for each candidate in all constituencies. 
Display the results in a descending order**/
SELECT COUNT(VOTER_ID)
FROM VOTE WHERE CANDIDATE_ID = 'SMO-009218' 
UNION ALL
SELECT COUNT(VOTER_ID)
FROM VOTE WHERE CANDIDATE_ID = 'SMO-009217'

