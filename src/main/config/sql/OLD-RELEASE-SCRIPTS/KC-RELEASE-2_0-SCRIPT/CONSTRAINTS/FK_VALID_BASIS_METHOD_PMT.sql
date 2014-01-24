ALTER TABLE VALID_BASIS_METHOD_PMT 
    ADD CONSTRAINT FK2_VALID_BASIS_METHOD_PMT FOREIGN KEY (METHOD_OF_PAYMENT_CODE) 
                REFERENCES AWARD_METHOD_OF_PAYMENT (METHOD_OF_PAYMENT_CODE) ;

ALTER TABLE VALID_BASIS_METHOD_PMT 
    ADD CONSTRAINT FK_VALID_BASIS_METHOD_PMT FOREIGN KEY (BASIS_OF_PAYMENT_CODE) 
                REFERENCES AWARD_BASIS_OF_PAYMENT (BASIS_OF_PAYMENT_CODE) ;