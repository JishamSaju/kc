-- Table Script
CREATE TABLE PROTO_CORRESP_TEMPL ( 
    PROTO_CORRESP_TEMPL_ID NUMBER(12,0) NOT NULL, 
    PROTO_CORRESP_TYPE_CODE VARCHAR(3) NOT NULL, 
    COMMITTEE_ID VARCHAR2(15) NOT NULL,
    FILE_NAME VARCHAR2(150) NOT NULL, 
    CORRESPONDENCE_TEMPLATE BLOB DEFAULT empty_blob() NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROTO_CORRESP_TEMPL 
ADD CONSTRAINT PK_PROTO_CORRESP_TEMPL 
PRIMARY KEY (PROTO_CORRESP_TEMPL_ID);

-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
-- ALTER TABLE PROTO_CORRESP_TEMPL 
-- ADD CONSTRAINT PK_PROTO_CORRESP_TEMPL 
-- PRIMARY KEY (PROTO_CORRESP_TYPE_CODE, COMMITTEE_ID);
-- *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
 

-- *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************ 
ALTER TABLE PROTO_CORRESP_TEMPL 
ADD CONSTRAINT UQ_PROTO_CORRESP_TEMPL 
UNIQUE (PROTO_CORRESP_TYPE_CODE, COMMITTEE_ID);

-- Foreign Key Constraint(s)
ALTER TABLE PROTO_CORRESP_TEMPL 
ADD CONSTRAINT FK_PROTO_CORRESP_TEMPL 
FOREIGN KEY (PROTO_CORRESP_TYPE_CODE) 
REFERENCES PROTO_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE);