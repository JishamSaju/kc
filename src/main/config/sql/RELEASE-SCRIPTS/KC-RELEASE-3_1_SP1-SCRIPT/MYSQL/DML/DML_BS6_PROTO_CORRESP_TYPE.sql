INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER, obj_id ) 
VALUES ( '28', 'Abandon Notice', 'Y', STR_TO_DATE('09-16-10', '%c-%d-%y'), 'admin', uuid() );

COMMIT;