CREATE OR REPLACE VIEW OSP$COMM_MEMBERSHIP_TYPE AS 
SELECT MEMBERSHIP_TYPE_CODE,
       DESCRIPTION,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   COMM_MEMBERSHIP_TYPE;