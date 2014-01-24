-- Table Script 
CREATE TABLE PROPOSAL_UNIT_CREDIT_SPLIT ( 
    PROPOSAL_UNIT_CREDIT_SPLIT_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_NUMBER VARCHAR2(8) NOT NULL, 
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    PERSON_ID VARCHAR2(9) NOT NULL, 
    UNIT_NUMBER VARCHAR2(8) NOT NULL, 
    INV_CREDIT_TYPE_CODE VARCHAR2(3) NOT NULL, 
    CREDIT NUMBER(5,2), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
ADD CONSTRAINT PK_PROPOSAL_UNIT_CREDIT_SPLIT 
PRIMARY KEY (PROPOSAL_UNIT_CREDIT_SPLIT_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
-- ADD CONSTRAINT PK_PROPOSAL_UNIT_CREDIT_SPLIT 
-- PRIMARY KEY (PROPOSAL_NUMBER, SEQUENCE_NUMBER, PERSON_ID, UNIT_NUMBER, INV_CREDIT_TYPE_CODE);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
ADD CONSTRAINT UQ_PROPOSAL_UNIT_CREDIT_SPLIT 
UNIQUE (PROPOSAL_NUMBER, SEQUENCE_NUMBER, PERSON_ID, UNIT_NUMBER, INV_CREDIT_TYPE_CODE);

-- Foreign Key Constraint(s)
ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
ADD CONSTRAINT FK1_PROPOSAL_UNIT_CREDIT_SPLIT 
FOREIGN KEY (PROPOSAL_ID) 
REFERENCES PROPOSAL (PROPOSAL_ID);

ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
ADD CONSTRAINT FK2_PROPOSAL_UNIT_CREDIT_SPLIT 
FOREIGN KEY (INV_CREDIT_TYPE_CODE) 
REFERENCES INV_CREDIT_TYPE (INV_CREDIT_TYPE_CODE);

-- *************** MODIFIED FOREIGN KEY COLUMN - Composite keys are removed from KCRA ************ 
-- ALTER TABLE PROPOSAL_UNIT_CREDIT_SPLIT 
-- ADD CONSTRAINT FK1_PROPOSAL_UNIT_CREDIT_SPLIT 
-- FOREIGN KEY (PROPOSAL_NUMBER, SEQUENCE_NUMBER) 
-- REFERENCES PROPOSAL (PROPOSAL_NUMBER, SEQUENCE_NUMBER);
-- *************** MODIFIED FOREIGN KEY COLUMN - Composite keys are removed from KCRA ************ 
