INSERT INTO BATCH_CORRESPONDENCE ( BATCH_CORRESPONDENCE_TYPE_CODE, DESCRIPTION, DAYS_TO_EVENT_UI_TEXT, SEND_CORRESPONDENCE, FINAL_ACTION_DAY, FINAL_ACTION_TYPE_CODE, FINAL_ACTION_CORRESP_TYPE, UPDATE_TIMESTAMP, UPDATE_USER ,OBJ_ID) 
VALUES ( '1', 'Protocol Renewal Reminders', 'Days prior Protocol Expiration', 'BEFORE', 0, '300', NULL, to_date('2010-01-28 12:00:00','YYYY-MM-DD HH24:MI:SS'),'admin','5c3487f4-3b9e-48ba-bd0d-0124ff956d7b'); 
INSERT INTO BATCH_CORRESPONDENCE ( BATCH_CORRESPONDENCE_TYPE_CODE, DESCRIPTION, DAYS_TO_EVENT_UI_TEXT, SEND_CORRESPONDENCE, FINAL_ACTION_DAY, FINAL_ACTION_TYPE_CODE, FINAL_ACTION_CORRESP_TYPE, UPDATE_TIMESTAMP, UPDATE_USER ,OBJ_ID) 
VALUES ( '2', 'Reminder to IRB Notifications', 'Days since Committee Action', 'AFTER', 30, NULL, '24', to_date('2010-01-28 12:00:00','YYYY-MM-DD HH24:MI:SS'),'admin','5c3487f3-3b9e-48ba-bd0d-0124ff956d7b'); 
