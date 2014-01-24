-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$PROPOSAL_LOG(PROPOSAL_NUMBER,PROPOSAL_TYPE_CODE,TITLE,PI_ID,PI_NAME,LEAD_UNIT,SPONSOR_CODE,SPONSOR_NAME,LOG_STATUS,COMMENTS,UPDATE_TIMESTAMP,UPDATE_USER,CREATE_TIMESTAMP,CREATE_USER,DEADLINE_DATE) AS 
SELECT PROPOSAL_NUMBER,
       PROPOSAL_TYPE_CODE,
       TITLE,
       PI_ID,
       PI_NAME,
       LEAD_UNIT,
       SPONSOR_CODE,
       SPONSOR_NAME,
       LOG_STATUS,
       COMMENTS,
       UPDATE_TIMESTAMP,
       UPDATE_USER,
       CREATE_TIMESTAMP,
       CREATE_USER,
       DEADLINE_DATE
FROM   PROPOSAL_LOG;