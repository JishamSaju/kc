CREATE VIEW OSP$COMMITTEE AS 
SELECT COMMITTEE_ID,
       COMMITTEE_NAME,
       HOME_UNIT_NUMBER,
       DESCRIPTION,
       SCHEDULE_DESCRIPTION,
       COMMITTEE_TYPE_CODE,
       MINIMUM_MEMBERS_REQUIRED,
       MAX_PROTOCOLS,
       ADV_SUBMISSION_DAYS_REQ,
       DEFAULT_REVIEW_TYPE_CODE,
       APPLICABLE_REVIEW_TYPE_CODE,
       CREATE_TIMESTAMP,
       CREATE_USER,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   COMMITTEE;