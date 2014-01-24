CREATE TABLE SUBMISSION_STATUS (
    SUBMISSION_STATUS_CODE varchar2 (3) NOT NULL, 
    DESCRIPTION varchar2 (200) NOT NULL, 
    UPDATE_TIMESTAMP date NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR number (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID varchar2 (36) NOT NULL) ;

ALTER TABLE SUBMISSION_STATUS 
    ADD CONSTRAINT PK_SS_SUBMISSION_STATUS_CODE 
            PRIMARY KEY (SUBMISSION_STATUS_CODE) ;