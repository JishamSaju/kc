CREATE OR REPLACE VIEW OSP$ARG_VALUE_LOOKUP AS 
SELECT ARGUMENT_NAME,
       VALUE,
       DESCRIPTION,
       UPDATE_TIMESTAMP,
       UPDATE_USER
FROM   ARG_VALUE_LOOKUP;