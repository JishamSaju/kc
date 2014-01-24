-- Table Script 
CREATE TABLE PROPOSAL_SPECIAL_REVIEW ( 
    PROPOSAL_SPECIAL_REVIEW_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_ID NUMBER(12,0) NOT NULL, 
    PROPOSAL_NUMBER VARCHAR2(8) NOT NULL, 
    SEQUENCE_NUMBER NUMBER(4,0) NOT NULL, 
    SPECIAL_REVIEW_NUMBER NUMBER(3,0) NOT NULL, 
    SPECIAL_REVIEW_CODE VARCHAR2(3) NOT NULL, 
    APPROVAL_TYPE_CODE VARCHAR2(3) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2(20), 
    APPLICATION_DATE DATE, 
    APPROVAL_DATE DATE,
    EXPIRATION_DATE DATE, 
    COMMENTS CLOB, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROPOSAL_SPECIAL_REVIEW 
ADD CONSTRAINT PK_PROPOSAL_SPECIAL_REVIEW 
PRIMARY KEY (PROPOSAL_SPECIAL_REVIEW_ID);

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE PROPOSAL_SPECIAL_REVIEW 
ADD CONSTRAINT UQ_PROPOSAL_SPECIAL_REVIEW 
UNIQUE (PROPOSAL_NUMBER, SEQUENCE_NUMBER, SPECIAL_REVIEW_NUMBER);
