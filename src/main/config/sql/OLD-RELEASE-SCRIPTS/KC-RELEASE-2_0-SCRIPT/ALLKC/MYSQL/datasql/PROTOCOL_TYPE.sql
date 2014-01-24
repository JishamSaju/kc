delimiter /
TRUNCATE TABLE PROTOCOL_TYPE
/
INSERT INTO PROTOCOL_TYPE (DESCRIPTION,OBJ_ID,PROTOCOL_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Standard','5AE807B9510C93D4E0404F8189D8510D','1',STR_TO_DATE( '20071220000000', '%Y%m%d%H%i%s' ),'COEUS',1)
/
INSERT INTO PROTOCOL_TYPE (DESCRIPTION,OBJ_ID,PROTOCOL_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Emergency Use','5AE807B9510D93D4E0404F8189D8510D','2',STR_TO_DATE( '20071220000000', '%Y%m%d%H%i%s' ),'COEUS',1)
/
INSERT INTO PROTOCOL_TYPE (DESCRIPTION,OBJ_ID,PROTOCOL_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Humanitarian Use Device (HUD)','5AE807B9510E93D4E0404F8189D8510D','3',STR_TO_DATE( '20071220000000', '%Y%m%d%H%i%s' ),'COEUS',1)
/
INSERT INTO PROTOCOL_TYPE (DESCRIPTION,OBJ_ID,PROTOCOL_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Exempt','5AE807B9510F93D4E0404F8189D8510D','4',STR_TO_DATE( '20071220000000', '%Y%m%d%H%i%s' ),'COEUS',1)
/
delimiter ;