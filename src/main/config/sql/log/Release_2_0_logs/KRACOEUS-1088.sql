SPOOL alterBudgetPeriodsERROR.txt

CREATE SEQUENCE SEQ_BUDGET_PERIOD_NUMBER INCREMENT BY 1 START WITH 1;

ALTER TABLE BUDGET_PERIODS DROP CONSTRAINT "BUDGET_PERIODSP1" CASCADE;
ALTER TABLE BUDGET_PROJECT_INCOME DROP CONSTRAINT FK_BUDGET_PROJ_INC_BP_KRA CASCADE;
ALTER TABLE BUDGET_PERIODS ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_PROJECT_INCOME ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_DETAILS_CAL_AMTS ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_MODULAR_IDC ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_DETAILS ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_PERSONNEL_CAL_AMTS ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_RATE_AND_BASE ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_PERSONNEL_DETAILS ADD BUDGET_PERIOD_NUMBER NUMBER(12);
ALTER TABLE BUDGET_MODULAR ADD BUDGET_PERIOD_NUMBER NUMBER(12);
 
DECLARE
CURSOR C1 IS
      SELECT *
      FROM BUDGET_PERIODS
      ORDER BY PROPOSAL_NUMBER, VERSION_NUMBER, BUDGET_PERIOD;
BP_NUMBER NUMBER;

BEGIN
	FOR BP_REC IN C1
	LOOP
		SELECT SEQ_BUDGET_PERIOD_NUMBER.NEXTVAL INTO BP_NUMBER FROM DUAL;

		UPDATE BUDGET_PERIODS
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_PROJECT_INCOME
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND BUDGET_VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_MODULAR
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_DETAILS_CAL_AMTS
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_MODULAR_IDC 
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_DETAILS 
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_PERSONNEL_CAL_AMTS 
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_RATE_AND_BASE 
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

		UPDATE BUDGET_PERSONNEL_DETAILS
		SET BUDGET_PERIOD_NUMBER = BP_NUMBER
		WHERE PROPOSAL_NUMBER = BP_REC.PROPOSAL_NUMBER
		AND VERSION_NUMBER = BP_REC.VERSION_NUMBER
		AND BUDGET_PERIOD = BP_REC.BUDGET_PERIOD;

	END LOOP;
END;
COMMIT;

ALTER TABLE BUDGET_PERIODS ADD CONSTRAINT PK_BUDGET_PERIODS_KRA PRIMARY KEY (BUDGET_PERIOD_NUMBER) ENABLE;
ALTER TABLE BUDGET_PROJECT_INCOME MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_PRJ_INC_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_PROJECT_INCOME ADD CONSTRAINT FK_BUDGET_PROJ_INC_BP_KRA FOREIGN KEY (BUDGET_PERIOD_NUMBER) REFERENCES BUDGET_PERIODS;
ALTER TABLE BUDGET_MODULAR MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_MODULAR_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_MODULAR ADD CONSTRAINT FK_BUDGET_MODULAR_BP_KRA FOREIGN KEY (BUDGET_PERIOD_NUMBER) REFERENCES BUDGET_PERIODS;
ALTER TABLE BUDGET_DETAILS_CAL_AMTS MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_DETAILS_CAL_AMTS_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_MODULAR_IDC MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_MODULAR_IDC_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_DETAILS MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_DETAILS_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_PERSONNEL_CAL_AMTS MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_PERSONNEL_CAL_AMTS_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_RATE_AND_BASE MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_RATE_AND_BASE_NN NOT NULL ENABLE;
ALTER TABLE BUDGET_PERSONNEL_DETAILS MODIFY BUDGET_PERIOD_NUMBER CONSTRAINT BUDGET_PERSONNEL_DETAILS_NN NOT NULL ENABLE;

SPOOL OFF
