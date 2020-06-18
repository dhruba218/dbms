/**TODO: Create a single index named ‘ID_vote_voter_id_constituency_id’ on voter_id and candidate_id columns in 
the same order as mentioned below:
voter_id 
candidate_id.
**/

CREATE INDEX ID_Index
ON VOTE(voter_id,candidate_id); -- ID_INDEX is the name of index as ID_vote_voter_id_constituency_id 
								-- is giving too long identifier on console

