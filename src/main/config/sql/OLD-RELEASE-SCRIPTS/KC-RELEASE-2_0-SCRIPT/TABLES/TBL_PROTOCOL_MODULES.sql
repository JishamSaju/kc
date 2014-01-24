CREATE TABLE PROTOCOL_MODULES (
    PROTOCOL_MODULE_CODE VARCHAR2 (5) NOT NULL, 
    DESCRIPTION VARCHAR2 (200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

ALTER TABLE PROTOCOL_MODULES 
    ADD CONSTRAINT PK_PROTOCOL_MODULES 
            PRIMARY KEY (PROTOCOL_MODULE_CODE) ;