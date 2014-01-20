INSERT INTO PROTOCOL_STATUS ( PROTOCOL_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) 
VALUES ( '107', 'Return To PI', sysdate, 'admin', SYS_GUID() ) 
/

INSERT INTO PROTOCOL_ACTION_TYPE ( PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, FINAL_ACTION_FOR_BATCH_CORRESP, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) 
VALUES ( '213', 'Returned To PI', 'N', 'N', 'N', sysdate, 'admin', SYS_GUID() ) 
/

INSERT INTO SUBMISSION_STATUS ( SUBMISSION_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID, VER_NBR )
VALUES ( 213, 'Returned To PI', sysdate, 'admin', SYS_GUID(), 1 )
/