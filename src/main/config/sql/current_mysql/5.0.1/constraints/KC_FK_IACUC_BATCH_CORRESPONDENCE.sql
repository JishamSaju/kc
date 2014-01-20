DELIMITER /
ALTER TABLE IACUC_BATCH_CORRESPONDENCE 
ADD CONSTRAINT FK_IAC_BATCH_CORRESPONDENCE_1 
FOREIGN KEY (FINAL_ACTION_CORRESP_TYPE) 
REFERENCES IACUC_PROTOCOL_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE)
/

ALTER TABLE IACUC_BATCH_CORRESPONDENCE 
ADD CONSTRAINT FK_IAC_BATCH_CORRESPONDENCE_2
FOREIGN KEY (FINAL_ACTION_TYPE_CODE) 
REFERENCES IACUC_PROTOCOL_ACTION_TYPE (PROTOCOL_ACTION_TYPE_CODE)
/


DELIMITER ;
