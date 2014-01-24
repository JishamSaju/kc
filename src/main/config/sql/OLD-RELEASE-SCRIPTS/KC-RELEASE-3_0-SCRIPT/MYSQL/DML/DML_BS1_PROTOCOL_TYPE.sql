INSERT INTO PROTOCOL_TYPE(PROTOCOL_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
    VALUES('5', 'Single Patient Use', NOW(), 'admin', 0, UUID());

INSERT INTO PROTOCOL_TYPE(PROTOCOL_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
    VALUES('6', 'Expedited', NOW(), 'admin', 0, UUID());

INSERT INTO PROTOCOL_TYPE(PROTOCOL_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID) 
    VALUES('7', 'Full Board', NOW(), 'admin', 0, UUID());

COMMIT;