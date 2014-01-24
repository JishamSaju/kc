--REM INSERTING into KREW_DOC_HDR_T
INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3091,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'New Questionnaire - IRB Long V1 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3092,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'New Questionnaire - IRB Short V1 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3093,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'Edit Questionnaire - IRB Long V2 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3094,3789,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'Committee Document - IRB Committee',1,'10000000001',24,'10000000001',SYS_GUID())
/

-- Staged Data for Award Hierarchy
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427085005', 'YYYYMMDDHH24MISS' ),4091,'S',10031,1,'10000000001','554BE52C-04B4-A848-895F-FC14FF527FD3',0,TO_DATE( '20110427085005', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427130832', 'YYYYMMDDHH24MISS' ),'KC Award - *****PLACEHOLDER*****',12)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427125132', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427124002', 'YYYYMMDDHH24MISS' ),4092,'F',10031,1,TO_DATE( '20110427125133', 'YYYYMMDDHH24MISS' ),'10000000001','EB3C2D6C-F3C2-125F-8021-9134828CE670',4,'10000000001',TO_DATE( '20110427125133', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427125133', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',63)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427125554', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427125209', 'YYYYMMDDHH24MISS' ),4093,'F',10031,1,TO_DATE( '20110427125554', 'YYYYMMDDHH24MISS' ),'10000000001','A8EA6783-6FF1-8D3C-3A83-CC6EC5287588',4,'10000000001',TO_DATE( '20110427125554', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427125554', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',54)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427130245', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427125650', 'YYYYMMDDHH24MISS' ),4094,'F',10031,1,TO_DATE( '20110427130246', 'YYYYMMDDHH24MISS' ),'10000000001','F8A92E16-4498-5230-DCF5-F3D7F01E767E',4,'10000000001',TO_DATE( '20110427130246', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427130246', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',60)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427130644', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427130355', 'YYYYMMDDHH24MISS' ),4095,'F',10031,1,TO_DATE( '20110427130644', 'YYYYMMDDHH24MISS' ),'10000000001','447774A0-757E-E54F-FCEE-810078141E67',4,'10000000001',TO_DATE( '20110427130644', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427130644', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',57)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427131103', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427130731', 'YYYYMMDDHH24MISS' ),4096,'F',10031,1,TO_DATE( '20110427131103', 'YYYYMMDDHH24MISS' ),'10000000001','C91835D5-2092-2DD4-AC32-635E412EF1F2',4,'10000000001',TO_DATE( '20110427131103', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131103', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',54)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427131430', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131139', 'YYYYMMDDHH24MISS' ),4097,'F',10031,1,TO_DATE( '20110427131430', 'YYYYMMDDHH24MISS' ),'10000000001','D31E6247-5920-ECC0-35B7-5CC7CC92FCB4',4,'10000000001',TO_DATE( '20110427131430', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131430', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',54)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427131821', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131512', 'YYYYMMDDHH24MISS' ),4098,'F',10031,1,TO_DATE( '20110427131822', 'YYYYMMDDHH24MISS' ),'10000000001','A3D7BC2C-1FD3-9701-1326-B093663E070F',4,'10000000001',TO_DATE( '20110427131822', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131822', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',63)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427132150', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427131857', 'YYYYMMDDHH24MISS' ),4099,'F',10031,1,TO_DATE( '20110427132151', 'YYYYMMDDHH24MISS' ),'10000000001','053BE512-8B40-F430-85DA-DBB00FFCA3BC',4,'10000000001',TO_DATE( '20110427132151', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427132151', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',54)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427132712', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427132311', 'YYYYMMDDHH24MISS' ),4100,'F',10031,1,TO_DATE( '20110427132712', 'YYYYMMDDHH24MISS' ),'10000000001','B4FF911A-0025-1B6C-B306-4C151608415D',4,'10000000001',TO_DATE( '20110427132712', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427132712', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',51)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427141917', 'YYYYMMDDHH24MISS' ),4101,'F',10031,1,TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),'10000000001','31384423-E45F-46DE-5E0F-96F953977C26',6,'10000000001',TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',53)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185507', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185501', 'YYYYMMDDHH24MISS' ),4102,'F',10031,1,TO_DATE( '20110427185507', 'YYYYMMDDHH24MISS' ),'10000000001','4A97D9CB-6865-B0C8-2C47-40BFCD676BD7',2,'10000000001',TO_DATE( '20110427185507', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185507', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185513', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185507', 'YYYYMMDDHH24MISS' ),4103,'F',10031,1,TO_DATE( '20110427185513', 'YYYYMMDDHH24MISS' ),'10000000001','B293AD57-8EB8-A3BE-A594-B6999464C551',2,'10000000001',TO_DATE( '20110427185513', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185513', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185518', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185513', 'YYYYMMDDHH24MISS' ),4104,'F',10031,1,TO_DATE( '20110427185519', 'YYYYMMDDHH24MISS' ),'10000000001','57315F4E-7D22-37F4-0F58-802FAED711C6',2,'10000000001',TO_DATE( '20110427185519', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185519', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185524', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185518', 'YYYYMMDDHH24MISS' ),4105,'F',10031,1,TO_DATE( '20110427185525', 'YYYYMMDDHH24MISS' ),'10000000001','E2A8BD87-640B-3E76-D59C-79696F119497',2,'10000000001',TO_DATE( '20110427185525', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185525', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185530', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185524', 'YYYYMMDDHH24MISS' ),4106,'F',10031,1,TO_DATE( '20110427185531', 'YYYYMMDDHH24MISS' ),'10000000001','DD243564-EF99-9D76-F5C8-E16C376D7D21',2,'10000000001',TO_DATE( '20110427185531', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185531', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185536', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185530', 'YYYYMMDDHH24MISS' ),4107,'F',10031,1,TO_DATE( '20110427185537', 'YYYYMMDDHH24MISS' ),'10000000001','4EEDF22D-C1D1-E34D-8C64-C5F426248310',2,'10000000001',TO_DATE( '20110427185537', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185537', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (APRV_DT,CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427185542', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185536', 'YYYYMMDDHH24MISS' ),4108,'F',10031,1,TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),'10000000001','A76C4D80-80F8-94C3-B9DA-BACAF1B8D6EF',2,'10000000001',TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427185543', 'YYYYMMDDHH24MISS' ),'KC Award - Created by Award 010002-00001 Ver 2',25)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20110427191430', 'YYYYMMDDHH24MISS' ),4109,'R',10031,1,'10000000001','D8925E3D-9FD1-6A70-6BB3-E29E7AD58CE7',2,'10000000001',TO_DATE( '20110427191933', 'YYYYMMDDHH24MISS' ),TO_DATE( '20110427191952', 'YYYYMMDDHH24MISS' ),'KC Award - Sync Descendants, 300120',29)
/