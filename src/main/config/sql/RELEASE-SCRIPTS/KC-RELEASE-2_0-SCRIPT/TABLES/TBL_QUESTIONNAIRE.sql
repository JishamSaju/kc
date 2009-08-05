CREATE TABLE QUESTIONNAIRE (
    QUESTIONNAIRE_ID NUMBER (6, 0) NOT NULL, 
    NAME VARCHAR2 (50) NOT NULL, 
    DESCRIPTION VARCHAR2 (2000) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    IS_FINAL VARCHAR2 (1) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

ALTER TABLE QUESTIONNAIRE 
    ADD CONSTRAINT PK_QUESTIONNAIRE 
            PRIMARY KEY (QUESTIONNAIRE_ID) ;

