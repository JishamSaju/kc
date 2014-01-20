delimiter /
TRUNCATE TABLE COST_SHARE_TYPE
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (1,'funded','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (2,'Mandatory - Specified Amount/Percent','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (3,'Required - Non-Specified Amount/Percent','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (4,'Voluntary Commitment from Investigator','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (5,'OH Mandatory','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (6,'OH Required ','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (7,'OH Voluntary','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (8,'Other','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (9,'MF-Direct','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (10,'RF-Direct','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (11,'VF-Direct','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (12,'MNF-Outside Sources','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (13,'RNF-OutsiSourcesde','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (14,'VNF-Outside Sources','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (15,'MF-F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (16,'RF-F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (17,'VF-F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (18,'MF-NonSalary','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (19,'RF-NonSalary','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (20,'VF-NonSalary','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (21,'MF-Tuition Subsidy','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (22,'RF-Tuition Subsidy','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (23,'VF-Tuition Subsidy','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (24,'MF-UROP','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (25,'RF-UROP','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (26,'VF-UROP','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (27,'MF-Unrecovered F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (28,'RF-Unrecovered F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (29,'VF-Unrecovered F&A','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (30,'MNF-Subrecipient','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (31,'RNF-Subrecipient','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (32,'VNF-Subrecipient','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (33,'MNF-NonFederal Sponsored Support','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (34,'RNF-NonFederal Sponsored Support','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (35,'VNF-NonFederal Sponsored Support','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (36,'MNF-Equipment','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (37,'RNF-Equipment','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (38,'VNF-Equipment','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (39,'MNF-Other','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (40,'RNF-Other','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (41,'VNF-Other','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (42,'RF-Salary & EB','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (43,'VF-Salary & EB','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (44,'MNF-Volunteer Services','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (45,'MF-Salary & EB','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (46,'RNF-Volunteer Services','admin',NOW(),UUID())
/
INSERT INTO COST_SHARE_TYPE (COST_SHARE_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID)
    VALUES (47,'VNF-Volunteer Services','admin',NOW(),UUID())
/
delimiter ;
