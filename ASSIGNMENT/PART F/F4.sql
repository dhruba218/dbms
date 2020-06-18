/**TODO 1: Write a trigger ‘check_constituency_trigger’ that is invoked when an insert statement is called on the 
vote table to check that the voter has cast a vote from the correct constituency. If discrepancy is found, 
ensure using raise_application_error that the insert statement doesn’t run.
**/