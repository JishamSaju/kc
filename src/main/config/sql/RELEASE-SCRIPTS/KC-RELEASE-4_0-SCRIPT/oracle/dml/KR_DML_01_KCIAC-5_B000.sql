INSERT INTO KRCR_NMSPC_T (ACTV_IND,NM,NMSPC_CD,APPL_ID,OBJ_ID,VER_NBR)
  VALUES ('Y','KC IACUC Protocol','KC-IACUC','KC',sys_guid(),1)
/
INSERT INTO KRCR_CMPNT_T (ACTV_IND,NM,NMSPC_CD,OBJ_ID,CMPNT_CD,VER_NBR)
  VALUES ('Y','Document','KC-IACUC',sys_guid(),'Document',1)
/

