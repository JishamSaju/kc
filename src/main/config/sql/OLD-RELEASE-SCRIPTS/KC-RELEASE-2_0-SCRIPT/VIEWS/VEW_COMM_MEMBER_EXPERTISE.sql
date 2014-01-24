-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$COMM_MEMBER_EXPERTISE AS 
SELECT COMM_MEMBERSHIPS.MEMBERSHIP_ID,
       COMMITTEE.SEQUENCE_NUMBER,
       COMM_MEMBER_EXPERTISE.RESEARCH_AREA_CODE,
       COMM_MEMBER_EXPERTISE.UPDATE_TIMESTAMP,
       COMM_MEMBER_EXPERTISE.UPDATE_USER
FROM   COMM_MEMBER_EXPERTISE,
       COMM_MEMBERSHIPS,
       COMMITTEE
WHERE  COMM_MEMBER_EXPERTISE.COMM_MEMBERSHIP_ID_FK = COMM_MEMBERSHIPS.COMM_MEMBERSHIP_ID 
       AND COMM_MEMBERSHIPS.COMMITTEE_ID_FK = COMMITTEE.ID; 
