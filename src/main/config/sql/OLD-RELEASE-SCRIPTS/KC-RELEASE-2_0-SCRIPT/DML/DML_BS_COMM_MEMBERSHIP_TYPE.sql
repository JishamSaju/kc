INSERT INTO COMM_MEMBERSHIP_TYPE (MEMBERSHIP_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('1', 'Voting member', SYSDATE, USER) ;

INSERT INTO COMM_MEMBERSHIP_TYPE (MEMBERSHIP_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES ('2', 'Non-voting member', SYSDATE, USER) ;

COMMIT;