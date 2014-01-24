CREATE TABLE PROTOCOL (
    PROTOCOL_ID NUMBER (12, 0) NOT NULL, 
    DOCUMENT_NUMBER NUMBER (10) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2 (20) NOT NULL, 
    SEQUENCE_NUMBER NUMBER (4, 0) NOT NULL, 
    PROTOCOL_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    PROTOCOL_STATUS_CODE VARCHAR2 (3) NOT NULL, 
    TITLE VARCHAR2 (2000) NOT NULL, 
    DESCRIPTION VARCHAR2 (2000) , 
    APPLICATION_DATE DATE, 
    APPROVAL_DATE DATE, 
    EXPIRATION_DATE DATE, 
    LAST_APPROVAL_DATE DATE, 
    FDA_APPLICATION_NUMBER VARCHAR2 (15) , 
    REFERENCE_NUMBER_1 VARCHAR2 (50) , 
    REFERENCE_NUMBER_2 VARCHAR2 (50) , 
    IS_BILLABLE VARCHAR2 (1) DEFAULT 'n' NOT NULL, 
    SPECIAL_REVIEW_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    VULNERABLE_SUBJECT_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    KEY_STUDY_PERSON_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    FUNDING_SOURCE_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    CORRESPONDENT_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    REFERENCE_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL, 
    RELATED_PROJECTS_INDICATOR VARCHAR2 (2) DEFAULT 'n0' NOT NULL,
    ACTIVE CHAR(1) DEFAULT 'T' NOT NULL, 
    CREATE_TIMESTAMP DATE, 
    CREATE_USER VARCHAR2 (8) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

ALTER TABLE PROTOCOL 
    ADD CONSTRAINT PK_PROTOCOL 
            PRIMARY KEY (PROTOCOL_NUMBER, SEQUENCE_NUMBER) ;

ALTER TABLE PROTOCOL 
    ADD CONSTRAINT UQ_PROTOCOL 
            UNIQUE (PROTOCOL_NUMBER, SEQUENCE_NUMBER) ;