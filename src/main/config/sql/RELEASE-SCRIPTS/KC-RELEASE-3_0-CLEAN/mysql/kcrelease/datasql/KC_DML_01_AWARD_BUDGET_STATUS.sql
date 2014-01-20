delimiter /
TRUNCATE TABLE AWARD_BUDGET_STATUS
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','In Progress','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','Submitted','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','Rejected','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','Posted','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('10','To Be Posted','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('11','Error in Posting','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('12','Do Not Post','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('13','Disapproved','admin',NOW(),UUID(),1)
/
INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('14','Cancelled','admin',NOW(),UUID(),1)
/
delimiter ;
