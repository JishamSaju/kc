ALTER TABLE BUDGET_SUB_AWARDS 
    ADD CONSTRAINT FK_BUDGET_SUB_AWARDS FOREIGN KEY (BUDGET_ID) 
                REFERENCES BUDGET;