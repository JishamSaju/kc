/* Foreign Key Constraint(s) */ 
ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
    ADD CONSTRAINT FK2_VALID_AWARD_BASIS_PAYMENT FOREIGN KEY (AWARD_TYPE_CODE) 
                REFERENCES AWARD_TYPE (AWARD_TYPE_CODE) ;

ALTER TABLE VALID_AWARD_BASIS_PAYMENT 
    ADD CONSTRAINT FK_VALID_AWARD_BASIS_PAYMENT FOREIGN KEY (BASIS_OF_PAYMENT_CODE) 
                REFERENCES AWARD_BASIS_OF_PAYMENT (BASIS_OF_PAYMENT_CODE) ;