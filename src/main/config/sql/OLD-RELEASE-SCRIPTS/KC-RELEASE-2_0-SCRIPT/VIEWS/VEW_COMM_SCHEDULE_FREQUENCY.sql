CREATE OR REPLACE VIEW osp$comm_schedule_frequency AS 
SELECT FREQUENCY_CODE,
       DESCRIPTION,
       NO_OF_DAYS,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   COMM_SCHEDULE_FREQUENCY;