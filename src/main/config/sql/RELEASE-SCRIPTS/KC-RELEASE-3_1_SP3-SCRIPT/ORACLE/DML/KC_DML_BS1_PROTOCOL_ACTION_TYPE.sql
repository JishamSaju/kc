INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, FINAL_ACTION_FOR_BATCH_CORRESP, UPDATE_TIMESTAMP,UPDATE_USER, obj_id) 
VALUES ('901', 'Assign Reviewer', 'N', 'N', 'N', TO_DATE('09/21/2010', 'MM/DD/YYYY'), 'admin', sys_guid());

INSERT INTO PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE, DESCRIPTION, TRIGGER_SUBMISSION, TRIGGER_CORRESPONDENCE, FINAL_ACTION_FOR_BATCH_CORRESP, UPDATE_TIMESTAMP,UPDATE_USER, obj_id) 
VALUES ('902', 'Review Complete', 'N', 'N', 'N', TO_DATE('09/21/2010', 'MM/DD/YYYY'), 'admin', sys_guid());

COMMIT;