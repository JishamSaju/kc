CREATE OR REPLACE VIEW OSP$VALID_RATES AS 
SELECT ON_CAMPUS_RATE,
       OFF_CAMPUS_RATE,
       RATE_CLASS_TYPE,
       ADJUSTMENT_KEY,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   VALID_RATES;