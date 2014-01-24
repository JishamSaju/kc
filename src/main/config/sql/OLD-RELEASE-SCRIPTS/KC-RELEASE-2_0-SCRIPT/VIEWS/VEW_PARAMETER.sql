CREATE OR REPLACE FORCE VIEW "KRAREG"."OSP$PARAMETER"("PARAMETER","EFFECTIVE_DATE","VALUE","UPDATE_TIMESTAMP","UPDATE_USER") AS 
SELECT UPPER (PARM_NM) PARAMETER,
       TO_DATE ('01-JAN-2000', 'DD-MON-YYYY') EFFECTIVE_DATE,
       TXT VALUE,
       TO_DATE ('01-JAN-2000', 'DD-MON-YYYY') UPDATE_TIMESTAMP,
       'COEUS' UPDATE_USER
FROM   KRNS_PARM_T
WHERE  PARM_TYP_CD = 'CONFG';