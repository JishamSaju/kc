CREATE OR REPLACE VIEW OSP$PROTOCOL_ORG_TYPE AS 
SELECT PROTOCOL_ORG_TYPE_CODE,
       DESCRIPTION,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   PROTOCOL_ORG_TYPE;