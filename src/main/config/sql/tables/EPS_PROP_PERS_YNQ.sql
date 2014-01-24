CREATE TABLE EPS_PROP_PERS_YNQ 
   (	"PROPOSAL_NUMBER" NUMBER(12,0) constraint EPS_PROP_PERS_YNQN1 NOT NULL ENABLE, 
    "PROP_PERSON_NUMBER"      NUMBER(12,0)  constraint EPS_PROP_PERS_YNQN2 NOT NULL ENABLE,
	"QUESTION_ID" VARCHAR2(4) constraint EPS_PROP_PERS_YNQN3 NOT NULL ENABLE, 
	"ANSWER" CHAR(1), 
	"UPDATE_TIMESTAMP" DATE constraint EPS_PROP_PERS_YNQN5 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint EPS_PROP_PERS_YNQN6 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  EPS_PROP_PERS_YNQN7  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  EPS_PROP_PERS_YNQN8  NOT NULL ENABLE,
	CONSTRAINT "PK_EPS_PROP_PERS_YNQ_KRA" PRIMARY KEY ("PROPOSAL_NUMBER", "PROP_PERSON_NUMBER", "QUESTION_ID") ENABLE
);
 ALTER TABLE EPS_PROP_PERS_YNQ ADD (CONSTRAINT "FK_EPS_PROP_PERS_YNQ_ID_KRA" FOREIGN KEY ("QUESTION_ID")
	  REFERENCES "YNQ" ("QUESTION_ID") );