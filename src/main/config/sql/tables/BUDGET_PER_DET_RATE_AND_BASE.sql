CREATE TABLE BUDGET_PER_DET_RATE_AND_BASE 
   (	
	PROPOSAL_NUMBER VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	VERSION_NUMBER NUMBER(3,0) NOT NULL ENABLE, 
	BUDGET_PERIOD NUMBER(3,0) NOT NULL ENABLE, 
	LINE_ITEM_NUMBER NUMBER(3,0) NOT NULL ENABLE, 
	PERSON_NUMBER NUMBER(3,0) NOT NULL ENABLE, 
	RATE_NUMBER NUMBER(3,0) NOT NULL ENABLE, 
	PERSON_ID VARCHAR2(9 BYTE) NOT NULL ENABLE, 
	START_DATE DATE NOT NULL ENABLE, 
	END_DATE DATE NOT NULL ENABLE, 
	RATE_CLASS_CODE NUMBER(3,0) NOT NULL ENABLE, 
	RATE_TYPE_CODE NUMBER(3,0) NOT NULL ENABLE, 
	ON_OFF_CAMPUS_FLAG VARCHAR2(1 BYTE) NOT NULL ENABLE, 
	APPLIED_RATE NUMBER(5,2) NOT NULL ENABLE, 
	SALARY_REQUESTED NUMBER(12,2), 
	BASE_COST_SHARING NUMBER(14,2), 
	CALCULATED_COST NUMBER(12,2), 
	CALCULATED_COST_SHARING NUMBER(12,2), 
	UPDATE_TIMESTAMP DATE NOT NULL ENABLE, 
	UPDATE_USER VARCHAR2(60 BYTE) NOT NULL ENABLE, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL ENABLE, 
	OBJ_ID VARCHAR2(36 BYTE) DEFAULT SYS_GUID() NOT NULL ENABLE, 
	UNDERRECOVERY_AMOUNT NUMBER(12,2), 
	BUDGET_PERIOD_NUMBER NUMBER(12,0),
	 CONSTRAINT PK_BGT_PER_DET_RATE_BASE_KRA PRIMARY KEY (BUDGET_PERIOD_NUMBER, LINE_ITEM_NUMBER, PERSON_NUMBER,RATE_NUMBER) ENABLE
   )