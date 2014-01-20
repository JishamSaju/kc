DELIMITER /
CREATE TABLE PMC_PROPOSAL_LOG (
  PMC_PROPOSAL_LOG_ID     DECIMAL(12,0) NOT NULL,
  PERSON_MASS_CHANGE_ID   DECIMAL(12,0) NOT NULL,
  PRINCIPAL_INVESTIGATOR  CHAR(1) DEFAULT 'N' NOT NULL,
  UPDATE_USER             VARCHAR(60) NOT NULL, 
  UPDATE_TIMESTAMP        DATE NOT NULL, 
  OBJ_ID                  VARCHAR(36) NOT NULL,
  VER_NBR                 DECIMAL(8,0) DEFAULT 1 NOT NULL
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin
/
ALTER TABLE PMC_PROPOSAL_LOG ADD CONSTRAINT PK_PMC_PROPOSAL_LOG
  PRIMARY KEY (PMC_PROPOSAL_LOG_ID)
/
DELIMITER ;
