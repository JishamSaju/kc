INSERT INTO PROPOSAL_STATE ( STATE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 12, 'Revisions Requested', to_date('2010-03-10 09:11:00', 'YYYY-MM-DD HH24:MI:SS'), 'ADMIN'  );

INSERT INTO PROPOSAL_STATE (STATE_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('13', 'Approved', TO_DATE ('2010-01-28 12:00:00', 'YYYY-MM-DD HH24:MI:SS') , 'ADMIN', 'A5702895053648D4AD568DFC6AAD3FC1') ;

COMMIT;