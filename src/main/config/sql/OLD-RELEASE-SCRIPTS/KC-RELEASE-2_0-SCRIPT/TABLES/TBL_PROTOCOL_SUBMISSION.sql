CREATE TABLE PROTOCOL_SUBMISSION (
    SUBMISSION_ID NUMBER (12) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR2 (20) NOT NULL, 
    SEQUENCE_NUMBER NUMBER (4) NOT NULL, 
    SUBMISSION_NUMBER NUMBER (4) NOT NULL, 
    SCHEDULE_ID VARCHAR2 (10) , 
    COMMITTEE_ID VARCHAR2 (15) , 
    PROTOCOL_ID NUMBER (12, 0) NOT NULL, 
    SCHEDULE_ID_FK NUMBER (12) , 
    COMMITTEE_ID_FK NUMBER (12) , 
    SUBMISSION_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    SUBMISSION_TYPE_QUAL_CODE VARCHAR2 (3) , 
    SUBMISSION_STATUS_CODE VARCHAR2 (3) NOT NULL, 
    PROTOCOL_REVIEW_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    SUBMISSION_DATE DATE NOT NULL, 
    COMMENTS VARCHAR2 (2000) , 
    YES_VOTE_COUNT NUMBER (3) , 
    NO_VOTE_COUNT NUMBER (3) , 
    ABSTAINER_COUNT NUMBER (3) , 
    VOTING_COMMENTS VARCHAR2 (2000) , 
    UPDATE_TIMESTAMP DATE, 
    UPDATE_USER VARCHAR2 (60) , 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) NOT NULL) ;

ALTER TABLE protocol_submission 
    ADD CONSTRAINT PK_PROTOCOL_SUBMISSION 
            PRIMARY KEY (submission_id) ; 