ALTER TABLE BUDGET_MODULAR_IDC ADD BUDGET_ID NUMBER (12, 0) ;

ALTER TABLE BUDGET_MODULAR_IDC DROP PRIMARY KEY;

ALTER TABLE BUDGET_MODULAR_IDC MODIFY PROPOSAL_NUMBER NULL;

ALTER TABLE BUDGET_MODULAR_IDC MODIFY VERSION_NUMBER NULL;

UPDATE BUDGET_MODULAR_IDC 
SET BUDGET_ID=(SELECT BUDGET_ID FROM BUDGET 
               WHERE BUDGET.PROPOSAL_NUMBER = BUDGET_MODULAR_IDC.PROPOSAL_NUMBER
                     AND BUDGET.VERSION_NUMBER = BUDGET_MODULAR_IDC.VERSION_NUMBER) ;

COMMIT;

ALTER TABLE BUDGET_MODULAR_IDC 
    ADD CONSTRAINT PK_BUDGET_MODULAR_IDC 
            PRIMARY KEY (BUDGET_PERIOD_NUMBER, RATE_NUMBER) ;

ALTER TABLE BUDGET_MODULAR_IDC 
    ADD CONSTRAINT FK1_BUDGET_MODULAR_IDC FOREIGN KEY (BUDGET_PERIOD_NUMBER) 
                REFERENCES BUDGET_MODULAR;