delimiter /
TRUNCATE TABLE PROPOSAL_STATUS
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Pending','6D2BF08161F82BD3E0404F8189D82831',1,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Funded','6D2BF08161F92BD3E0404F8189D82831',2,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Rejected','6D2BF08161FA2BD3E0404F8189D82831',3,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Deactivated','6D2BF08161FB2BD3E0404F8189D82831',4,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Withdrawn','6D2BF08161FC2BD3E0404F8189D82831',5,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Do Not Use -- Revision Requested','6D2BF08161FD2BD3E0404F8189D82831',6,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Held for Funds Availability','6D2BF08161FE2BD3E0404F8189D82831',7,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO PROPOSAL_STATUS (DESCRIPTION,OBJ_ID,PROPOSAL_STATUS_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Void','6D2BF08161FF2BD3E0404F8189D82831',8,STR_TO_DATE( '20090625000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
delimiter ;