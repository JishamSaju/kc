-- Table Script  
CREATE TABLE COMM_SCHEDULE_ACT_ITEMS (
    COMM_SCHEDULE_ACT_ITEMS_ID NUMBER (12, 0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER (12, 0) NOT NULL, 
    ACTION_ITEM_NUMBER NUMBER (4, 0) NOT NULL, 
    SCHEDULE_ACT_ITEM_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    ITEM_DESCTIPTION VARCHAR2 (2000) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

-- Primary Key Constraint  
ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
    ADD CONSTRAINT PK_COMM_SCHEDULE_ACT_ITEMS 
            PRIMARY KEY (COMM_SCHEDULE_ACT_ITEMS_ID) ;

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************  
ALTER TABLE COMM_SCHEDULE_ACT_ITEMS 
    ADD CONSTRAINT UQ_COMM_SCHEDULE_ACT_ITEMS 
            UNIQUE (SCHEDULE_ID_FK, ACTION_ITEM_NUMBER) ;