-- Table Script  
CREATE TABLE PROTOCOL_VOTE_ABSTAINEES (
    PROTOCOL_VOTE_ABSTAINEES_ID NUMBER (12, 0) NOT NULL, 
    PROTOCOL_ID_FK NUMBER (12, 0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER (12, 0) NOT NULL, 
    PERSON_ID VARCHAR2 (9) NOT NULL, 
    NON_EMPLOYEE_FLAG VARCHAR2 (1) NOT NULL, 
    COMMENTS VARCHAR2 (2000) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

-- Primary Key Constraint  
ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
    ADD CONSTRAINT PK_PROTOCOL_VOTE_ABSTAINEE 
            PRIMARY KEY (PROTOCOL_VOTE_ABSTAINEES_ID) ;

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************  
ALTER TABLE PROTOCOL_VOTE_ABSTAINEES 
    ADD CONSTRAINT UQ_PROTOCOL_VOTE_ABSTAINEE 
            UNIQUE (PROTOCOL_ID_FK, SCHEDULE_ID_FK, PERSON_ID) ;