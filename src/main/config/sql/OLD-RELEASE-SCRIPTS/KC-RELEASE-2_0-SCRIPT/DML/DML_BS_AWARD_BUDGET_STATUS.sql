INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('1', 'In Progress', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B843AD0E0404F8189D81676') ;

INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('5', 'Submitted', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B853AD0E0404F8189D81676') ;

INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('8', 'Rejected', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B863AD0E0404F8189D81676') ;

INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('9', 'Posted', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B873AD0E0404F8189D81676') ;

INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('10', 'To Be Posted', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B883AD0E0404F8189D81676') ;

INSERT INTO AWARD_BUDGET_STATUS (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES ('11', 'Error in Posting', TO_DATE ('06-OCT-05', 'DD-MON-RR') , 'KCDBA', '852A9B7D4B893AD0E0404F8189D81676') ;

INSERT INTO award_budget_status (AWARD_BUDGET_STATUS_CODE, DESCRIPTION, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID)
VALUES('12', 'Do Not Post', 1, TO_DATE ('2010-01-25 09:11:00', 'YYYY-MM-DD HH24:MI:SS') , 'KCDBA', 'A0369A8818C74721B1BF4F95F1AC4A23') ;

INSERT INTO AWARD_BUDGET_STATUS ( AWARD_BUDGET_STATUS_CODE, DESCRIPTION, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID )
VALUES ( 13, 'Disapproved', 1, to_date('2010-04-14 09:11:00', 'YYYY-MM-DD HH24:MI:SS'), 'KCDBA', '8478F4A2EFAE48AABBD9F407783685F7' );

INSERT INTO AWARD_BUDGET_STATUS ( AWARD_BUDGET_STATUS_CODE, DESCRIPTION, VER_NBR, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID )
VALUES ( 14, 'Cancelled', 1, to_date('2010-04-14 09:11:00', 'YYYY-MM-DD HH24:MI:SS'), 'KCDBA', '22626044C93144D2898C789EC6F9C2E8' );

COMMIT;