TRUNCATE TABLE PROTOCOL_REVIEWER_TYPE DROP STORAGE
/
INSERT INTO PROTOCOL_REVIEWER_TYPE (DESCRIPTION,OBJ_ID,REVIEWER_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('primary','67B524871DD4F8E7E0404F8189D821A6','1',TO_DATE( '20090416000000', 'YYYYMMDDHH24MISS' ),'KRADEV',1)
/
INSERT INTO PROTOCOL_REVIEWER_TYPE (DESCRIPTION,OBJ_ID,REVIEWER_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('secondary','67B524871DD5F8E7E0404F8189D821A6','2',TO_DATE( '20090416000000', 'YYYYMMDDHH24MISS' ),'KRADEV',1)
/