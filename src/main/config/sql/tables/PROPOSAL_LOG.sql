-- Table Script 
CREATE TABLE PROPOSAL_LOG ( 
    PROPOSAL_NUMBER VARCHAR2(8) NOT NULL, 
    PROPOSAL_TYPE_CODE VARCHAR2(3) NOT NULL, 
    TITLE VARCHAR2(200) NOT NULL, 
    PI_ID VARCHAR2(9), 
    ROLODEX_ID VARCHAR2(6,0), 
    PI_NAME VARCHAR2(90), 
    LEAD_UNIT VARCHAR2(8) NOT NULL, 
    SPONSOR_CODE CHAR(6), 
    SPONSOR_NAME VARCHAR2(200), 
    LOG_STATUS VARCHAR2(3) NOT NULL, 
    COMMENTS VARCHAR2(300), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    DEADLINE_DATE DATE, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROPOSAL_LOG 
ADD CONSTRAINT PK_PROPOSAL_LOG 
PRIMARY KEY (PROPOSAL_NUMBER);

-- Foreign Key Constraints
ALTER TABLE PROPOSAL_LOG 
ADD CONSTRAINT FK_LOG_STATUS 
FOREIGN KEY (LOG_STATUS) 
REFERENCES PROPOSAL_LOG_STATUS (PROPOSAL_LOG_STATUS_CODE);

ALTER TABLE PROPOSAL_LOG 
ADD CONSTRAINT FK2_PROPOSAL_TYPE_CODE 
FOREIGN KEY (PROPOSAL_TYPE_CODE) 
REFERENCES PROPOSAL_TYPE (PROPOSAL_TYPE_CODE);

ALTER TABLE PROPOSAL_LOG 
ADD CONSTRAINT FK_LEAD_UNIT 
FOREIGN KEY (LEAD_UNIT) 
REFERENCES UNIT (UNIT_NUMBER);