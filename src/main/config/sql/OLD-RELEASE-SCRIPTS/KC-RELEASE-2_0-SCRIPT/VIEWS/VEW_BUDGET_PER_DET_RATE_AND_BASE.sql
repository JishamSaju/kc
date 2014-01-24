CREATE OR REPLACE VIEW VIEW_BPDFE_1 AS 
SELECT RATE_CLASS_CODE,
       RATE_TYPE_CODE
FROM   VALID_CALC_TYPES
WHERE  RATE_CLASS_TYPE IN('E', 'V') ;

CREATE OR REPLACE VIEW VIEW_BPDFE_2 AS 
SELECT PROPOSAL_NUMBER,
       VERSION_NUMBER,
       BUDGET_PERIOD,
       LINE_ITEM_NUMBER,
       START_DATE,
       END_DATE,
       PERSON_NUMBER,
       PERSON_ID,
       RATE_CLASS_CODE,
       RATE_TYPE_CODE
FROM   BUDGET_PER_DET_RATE_AND_BASE Z
WHERE  NOT EXISTS (SELECT PROPOSAL_NUMBER,
                          VERSION_NUMBER,
                          BUDGET_PERIOD,
                          LINE_ITEM_NUMBER,
                          START_DATE,
                          END_DATE,
                          PERSON_NUMBER,
                          PERSON_ID,
                          X.RATE_CLASS_CODE,
                          X.RATE_TYPE_CODE
                   FROM   BUDGET_PER_DET_RATE_AND_BASE X,
                          VIEW_BPDFE_1 Y
                   WHERE  X.RATE_CLASS_CODE = Y.RATE_CLASS_CODE 
                          AND X.RATE_TYPE_CODE = Y.RATE_TYPE_CODE 
                          AND X.BUDGET_PERIOD_NUMBER = Z.BUDGET_PERIOD_NUMBER 
                          AND X.LINE_ITEM_NUMBER = Z.LINE_ITEM_NUMBER 
                          AND X.PERSON_NUMBER = Z.PERSON_NUMBER 
                          AND X.RATE_NUMBER = Z.RATE_NUMBER) ;

CREATE OR REPLACE VIEW VIEW_BPDFE_5 AS 
SELECT X.PROPOSAL_NUMBER,
       X.VERSION_NUMBER,
       X.BUDGET_PERIOD,
       X.LINE_ITEM_NUMBER,
       X.START_DATE,
       X.END_DATE,
       X.PERSON_NUMBER,
       X.PERSON_ID,
       Z.PERCENT_EFFORT,
       Z.PERCENT_CHARGED,
       MAX (X.BASE_COST_SHARING) COST_SHARING_AMOUNT,
       MAX (X.SALARY_REQUESTED) SALARY_REQUESTED,
       MAX (X.UNDERRECOVERY_AMOUNT) UNDERRECOVERY_AMOUNT
FROM   BUDGET_PER_DET_RATE_AND_BASE X,
       VIEW_BPDFE_1 Y,
       BUDGET_PERSONNEL_DETAILS Z
WHERE  X.RATE_CLASS_CODE = Y.RATE_CLASS_CODE 
       AND X.RATE_TYPE_CODE = Y.RATE_TYPE_CODE 
           AND X.PROPOSAL_NUMBER = Z.PROPOSAL_NUMBER 
           AND X.VERSION_NUMBER = Z.VERSION_NUMBER 
           AND X.BUDGET_PERIOD = Z.BUDGET_PERIOD 
           AND X.LINE_ITEM_NUMBER = Z.LINE_ITEM_NUMBER 
           AND X.PERSON_NUMBER = Z.PERSON_NUMBER 
           AND X.PERSON_ID = Z.PERSON_ID GROUP BY X.PROPOSAL_NUMBER, X.VERSION_NUMBER, X.BUDGET_PERIOD, X.LINE_ITEM_NUMBER, X.PERSON_NUMBER, X.PERSON_ID, Z.PERCENT_EFFORT, Z.PERCENT_CHARGED, X.START_DATE, X.END_DATE UNION SELECT N.PROPOSAL_NUMBER,
                                                                                                                                                                                                                                     N.VERSION_NUMBER,
                                                                                                                                                                                                                                     N.BUDGET_PERIOD,
                                                                                                                                                                                                                                     N.LINE_ITEM_NUMBER,
                                                                                                                                                                                                                                     N.START_DATE,
                                                                                                                                                                                                                                     N.END_DATE,
                                                                                                                                                                                                                                     N.PERSON_NUMBER,
                                                                                                                                                                                                                                     N.PERSON_ID,
                                                                                                                                                                                                                                     O.PERCENT_EFFORT,
                                                                                                                                                                                                                                     O.PERCENT_CHARGED,
                                                                                                                                                                                                                                     MAX (N.BASE_COST_SHARING) COST_SHARING_AMOUNT,
                                                                                                                                                                                                                                     MAX (N.SALARY_REQUESTED) SALARY_REQUESTED,
                                                                                                                                                                                                                                     MAX (N.UNDERRECOVERY_AMOUNT) UNDERRECOVERY_AMOUNT
FROM   BUDGET_PER_DET_RATE_AND_BASE N,
       VIEW_BPDFE_2 M,
       BUDGET_PERSONNEL_DETAILS O
WHERE  M.PROPOSAL_NUMBER = N.PROPOSAL_NUMBER 
       AND M.VERSION_NUMBER = N.VERSION_NUMBER 
           AND M.BUDGET_PERIOD = N.BUDGET_PERIOD 
           AND M.LINE_ITEM_NUMBER = N.LINE_ITEM_NUMBER 
           AND M.PERSON_NUMBER = N.PERSON_NUMBER 
           AND M.PERSON_ID = N.PERSON_ID 
           AND M.RATE_CLASS_CODE = N.RATE_CLASS_CODE 
           AND M.RATE_TYPE_CODE = N.RATE_TYPE_CODE 
           AND M.PROPOSAL_NUMBER = O.PROPOSAL_NUMBER 
           AND M.VERSION_NUMBER = O.VERSION_NUMBER 
           AND M.BUDGET_PERIOD = O.BUDGET_PERIOD 
           AND M.LINE_ITEM_NUMBER = O.LINE_ITEM_NUMBER 
           AND M.PERSON_NUMBER = O.PERSON_NUMBER 
           AND M.PERSON_ID = O.PERSON_ID GROUP BY N.PROPOSAL_NUMBER, N.VERSION_NUMBER, N.BUDGET_PERIOD, N.LINE_ITEM_NUMBER, N.PERSON_NUMBER, N.PERSON_ID, O.PERCENT_EFFORT, O.PERCENT_CHARGED, N.START_DATE, N.END_DATE;

CREATE OR REPLACE VIEW OSP$BUDGET_PER_DETAILS_FOR_EDI AS 
SELECT A.PROPOSAL_NUMBER,
       A.BUDGET_PERIOD,
       A.LINE_ITEM_NUMBER,
       A.PERSON_NUMBER,
       ROWNUM RATE_NUMBER,
       A.PERSON_ID,
       '000000' JOB_CODE,
       A.START_DATE,
       A.END_DATE,
       'CC' PERIOD_TYPE,
       B.LINE_ITEM_DESCRIPTION,
       '0' SEQUENCE_NUMBER,
       A.SALARY_REQUESTED,
       A.PERCENT_EFFORT,
       A.PERCENT_CHARGED,
       '0.00' COST_SHARING_PERCENT,
       A.COST_SHARING_AMOUNT,
       A.UNDERRECOVERY_AMOUNT,
       B.ON_OFF_CAMPUS_FLAG,
       B.APPLY_IN_RATE_FLAG,
       B.BUDGET_JUSTIFICATION,
       B.UPDATE_TIMESTAMP,
       B.UPDATE_USER
FROM   VIEW_BPDFE_5 A,
       BUDGET_DETAILS B
WHERE  B.PROPOSAL_NUMBER = A.PROPOSAL_NUMBER 
       AND B.VERSION_NUMBER = A.VERSION_NUMBER 
       AND B.BUDGET_PERIOD = A.BUDGET_PERIOD 
       AND B.LINE_ITEM_NUMBER = A.LINE_ITEM_NUMBER;