CREATE TABLE AWARD_TEMPLATE_COMMENTS (
    AWARD_TEMPLATE_COMMENTS_ID NUMBER (12, 0) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL, 
    AWARD_TEMPLATE_CODE NUMBER (5, 0) NOT NULL, 
    COMMENT_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    CHECKLIST_PRINT_FLAG CHAR (1) NOT NULL, 
    COMMENTS CLOB, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL) ;

ALTER TABLE AWARD_TEMPLATE_COMMENTS 
    ADD CONSTRAINT PK_AWARD_TEMPLATE_COMMENTS 
            PRIMARY KEY (AWARD_TEMPLATE_COMMENTS_ID) ;

ALTER TABLE AWARD_TEMPLATE_COMMENTS 
    ADD CONSTRAINT UQ_AWARD_TEMPLATE_COMMENTS 
            UNIQUE (AWARD_TEMPLATE_CODE, COMMENT_TYPE_CODE) ;