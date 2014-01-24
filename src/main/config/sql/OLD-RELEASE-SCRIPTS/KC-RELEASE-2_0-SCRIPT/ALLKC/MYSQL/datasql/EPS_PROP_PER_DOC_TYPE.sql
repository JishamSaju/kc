delimiter /
TRUNCATE TABLE EPS_PROP_PER_DOC_TYPE
/
INSERT INTO EPS_PROP_PER_DOC_TYPE (DESCRIPTION,DOCUMENT_TYPE_CODE,OBJ_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Biosketch','1','410674594114F1B2E043814FD881F1B2',STR_TO_DATE( '20071211000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO EPS_PROP_PER_DOC_TYPE (DESCRIPTION,DOCUMENT_TYPE_CODE,OBJ_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Currentpending','2','410674594115F1B2E043814FD881F1B2',STR_TO_DATE( '20071211000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO EPS_PROP_PER_DOC_TYPE (DESCRIPTION,DOCUMENT_TYPE_CODE,OBJ_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Budget Details','3','410674594116F1B2E043814FD881F1B2',STR_TO_DATE( '20071211000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO EPS_PROP_PER_DOC_TYPE (DESCRIPTION,DOCUMENT_TYPE_CODE,OBJ_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Statement of Commitment ','4','410674594117F1B2E043814FD881F1B2',STR_TO_DATE( '20071211000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO EPS_PROP_PER_DOC_TYPE (DESCRIPTION,DOCUMENT_TYPE_CODE,OBJ_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Other','5','410674594118F1B2E043814FD881F1B2',STR_TO_DATE( '20071211000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
delimiter ;