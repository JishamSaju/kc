INSERT INTO PROTOCOL_ATTACHMENT_STATUS (STATUS_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES (1, 'Incomplete', SYSDATE, USER) ;

INSERT INTO PROTOCOL_ATTACHMENT_STATUS (STATUS_CD, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER)
VALUES (2, 'Complete', SYSDATE, USER) ;

COMMIT;