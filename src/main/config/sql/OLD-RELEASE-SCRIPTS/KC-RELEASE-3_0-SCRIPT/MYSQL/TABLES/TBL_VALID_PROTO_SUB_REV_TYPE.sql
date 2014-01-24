CREATE TABLE VALID_PROTO_SUB_REV_TYPE (
    VALID_PROTO_SUB_REV_TYPE_ID DECIMAL (12, 0) NOT NULL, 
    SUBMISSION_TYPE_CODE VARCHAR (3) NOT NULL, 
    PROTOCOL_REVIEW_TYPE_CODE VARCHAR (3) NOT NULL, 
    UPDATE_TIMESTAMP DATETIME NOT NULL, 
    UPDATE_USER VARCHAR (60) NOT NULL, 
    VER_NBR DECIMAL (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR (36) NULL) ;

-- Primary Key Constraint  
ALTER TABLE VALID_PROTO_SUB_REV_TYPE 
    ADD CONSTRAINT PK_VALID_PROTO_SUB_REV_TYPE 
            PRIMARY KEY (VALID_PROTO_SUB_REV_TYPE_ID) ;

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************  
ALTER TABLE VALID_PROTO_SUB_REV_TYPE 
    ADD CONSTRAINT UQ_VALID_PROTO_SUB_REV_TYPE 
            UNIQUE (SUBMISSION_TYPE_CODE, PROTOCOL_REVIEW_TYPE_CODE) ;
