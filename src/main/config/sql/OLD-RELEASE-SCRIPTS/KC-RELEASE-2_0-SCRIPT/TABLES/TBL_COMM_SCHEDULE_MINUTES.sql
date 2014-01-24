CREATE TABLE COMM_SCHEDULE_MINUTES (
    COMM_SCHEDULE_MINUTES_ID NUMBER (12, 0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER (12, 0) NOT NULL, 
    PROTOCOL_ID_FK NUMBER (12, 0) ,
    REVIEWER_ID_FK NUMBER (12, 0) , 
    ENTRY_NUMBER NUMBER (12, 0) NOT NULL, 
    MINUTE_ENTRY_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    SUBMISSION_ID_FK NUMBER (12, 0) , 
    PRIVATE_COMMENT_FLAG VARCHAR2 (1) , 
    PROTOCOL_CONTINGENCY_CODE VARCHAR2 (4) , 
    MINUTE_ENTRY CLOB, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

-- Primary Key Constraint  
ALTER TABLE COMM_SCHEDULE_MINUTES 
    ADD CONSTRAINT PK_COMM_SCHEDULE_MINUTES 
            PRIMARY KEY (COMM_SCHEDULE_MINUTES_ID) ;