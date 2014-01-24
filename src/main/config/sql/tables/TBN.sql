CREATE TABLE TBN 
   ("TBN_ID" VARCHAR2(9) constraint TBNN1 NOT NULL ENABLE,
	"PERSON_NAME" VARCHAR2(90) constraint TBNN2 NOT NULL ENABLE,
	"JOB_CODE" VARCHAR2(6),
	"UPDATE_TIMESTAMP" DATE constraint TBNN3 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint TBNN4 NOT NULL ENABLE, 
	"VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  TBNN5  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  TBNN6  NOT NULL ENABLE,
	CONSTRAINT "PK_TBN_KRA" PRIMARY KEY ("TBN_ID") ENABLE
);