ALTER TABLE AWARD_BUDGET_DETAILS_EXT 
    ADD CONSTRAINT FK_AWARD_BUDGET_DETAILS_EXT FOREIGN KEY (BUDGET_DETAILS_ID) 
                REFERENCES BUDGET_DETAILS (BUDGET_DETAILS_ID) ;