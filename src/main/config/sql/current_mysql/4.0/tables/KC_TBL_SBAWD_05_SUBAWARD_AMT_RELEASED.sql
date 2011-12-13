DELIMITER /
CREATE TABLE SUBAWARD_AMT_RELEASED 
   (	SUBAWARD_AMT_RELEASED_ID DECIMAL(12,0) NOT NULL, 
	SUBAWARD_ID DECIMAL(12,0) NOT NULL,
	AMOUNT_RELEASED DECIMAL(12,2) NOT NULL, 
	EFFECTIVE_DATE DATE NOT NULL, 
	COMMENTS VARCHAR(300), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR(60) NOT NULL, 
	INVOICE_NUMBER VARCHAR(50), 
	START_DATE DATE, 
	END_DATE DATE, 
	STATUS_CODE VARCHAR(1), 
	APPROVAL_COMMENTS VARCHAR(2000), 
	APPROVED_BY_USER VARCHAR(8), 
	APPROVAL_DATE DATE, 
	DOCUMENT BLOB, 
	FILE_NAME VARCHAR(150), 
	CREATED_BY VARCHAR(8), 
	CREATED_DATE DATE, 
	MIME_TYPE VARCHAR(100), 
	VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR(36) NOT NULL,
	SEQUENCE_NUMBER DECIMAL(4,0) NOT NULL,
	SUBAWARD_CODE VARCHAR(20) NOT NULL
  )
/
ALTER TABLE SUBAWARD_AMT_RELEASED
  ADD CONSTRAINT PK_SUBAWARD_AMT_RELEASED PRIMARY KEY (SUBAWARD_AMT_RELEASED_ID)
/
COMMIT
/
DELIMITER ;
