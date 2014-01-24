ALTER TABLE VALID_FREQUENCY_BASE 
    ADD CONSTRAINT FK2_VALID_FREQUENCY_BASE FOREIGN KEY (FREQUENCY_CODE) 
                REFERENCES FREQUENCY (FREQUENCY_CODE) ;

ALTER TABLE VALID_FREQUENCY_BASE 
    ADD CONSTRAINT FK_VALID_FREQUENCY_BASE FOREIGN KEY (FREQUENCY_BASE_CODE) 
                REFERENCES FREQUENCY_BASE (FREQUENCY_BASE_CODE) ;