/* Table Script */ 
CREATE TABLE VALID_CLASS_REPORT_FREQ ( 
	VALID_CLASS_REPORT_FREQ_ID NUMBER(12,0) NOT NULL, 
	REPORT_CLASS_CODE VARCHAR2(3) NOT NULL, 
	REPORT_CODE VARCHAR2(3) NOT NULL, 
	FREQUENCY_CODE VARCHAR2(3) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);
/* Primary Key Constraint */ 
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT PK_VALID_CLASS_REPORT_FREQ 
PRIMARY KEY (VALID_CLASS_REPORT_FREQ_ID);
/* *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT PK_VALID_CLASS_REPORT_FREQ 
PRIMARY KEY (REPORT_CLASS_CODE, REPORT_CODE, FREQUENCY_CODE);
*************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ */ 
 

/* *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ */ 
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT UQ_VALID_CLASS_REPORT_FREQ 
UNIQUE (REPORT_CLASS_CODE, REPORT_CODE, FREQUENCY_CODE);
/* Foreign Key Constraint(s) */ 
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (FREQUENCY_CODE) 
REFERENCES FREQUENCY (FREQUENCY_CODE);
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK2_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (REPORT_CODE) 
REFERENCES REPORT (REPORT_CODE);
ALTER TABLE VALID_CLASS_REPORT_FREQ 
ADD CONSTRAINT FK3_VALID_CLASS_REPORT_FREQ 
FOREIGN KEY (REPORT_CLASS_CODE) 
REFERENCES REPORT_CLASS (REPORT_CLASS_CODE);