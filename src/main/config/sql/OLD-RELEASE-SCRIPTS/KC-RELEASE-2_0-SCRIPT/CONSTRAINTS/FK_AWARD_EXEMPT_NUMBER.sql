ALTER TABLE AWARD_EXEMPT_NUMBER 
    ADD CONSTRAINT FK_AWARD_SPECIAL_REVIEW_ID 
            FOREIGN KEY (AWARD_SPECIAL_REVIEW_ID) 
                REFERENCES AWARD_SPECIAL_REVIEW (AWARD_SPECIAL_REVIEW_ID) ;

ALTER TABLE AWARD_EXEMPT_NUMBER 
    ADD CONSTRAINT FK_EXEMPTION_TYPE_CODE 
            FOREIGN KEY (EXEMPTION_TYPE_CODE) 
                REFERENCES EXEMPTION_TYPE (EXEMPTION_TYPE_CODE) ; 