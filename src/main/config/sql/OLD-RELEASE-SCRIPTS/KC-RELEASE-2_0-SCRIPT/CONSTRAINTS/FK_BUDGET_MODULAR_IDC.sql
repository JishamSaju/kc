ALTER TABLE BUDGET_MODULAR_IDC 
    ADD CONSTRAINT FK_BUDGET_MODULAR_IDC FOREIGN KEY (BUDGET_ID) 
                REFERENCES BUDGET;