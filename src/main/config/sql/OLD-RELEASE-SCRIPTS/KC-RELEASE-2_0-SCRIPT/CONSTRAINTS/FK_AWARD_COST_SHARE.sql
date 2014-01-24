alter table AWARD_COST_SHARE 
ADD CONSTRAINT FK_AWARD_COST_SHARE_TYPE 
FOREIGN KEY(COST_SHARE_TYPE_CODE)
REFERENCES COST_SHARE_TYPE(COST_SHARE_TYPE_CODE) ENABLE;

alter table AWARD_COST_SHARE 
ADD CONSTRAINT FK_AWARD_COST_SHARE_AWARD_ID 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD(AWARD_ID) ENABLE;
