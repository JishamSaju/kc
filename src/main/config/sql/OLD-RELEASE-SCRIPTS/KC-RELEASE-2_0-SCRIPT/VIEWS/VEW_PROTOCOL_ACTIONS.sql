CREATE OR REPLACE VIEW OSP$PROTOCOL_ACTIONS AS 
SELECT PROTOCOL_NUMBER,
       SEQUENCE_NUMBER,
       ACTION_ID,
       PROTOCOL_ACTION_TYPE_CODE,
       SUBMISSION_NUMBER,
       COMMENTS,
       UPDATE_TIMESTAMP,
       UPDATE_USER,
       ACTION_DATE
FROM   PROTOCOL_ACTIONS;