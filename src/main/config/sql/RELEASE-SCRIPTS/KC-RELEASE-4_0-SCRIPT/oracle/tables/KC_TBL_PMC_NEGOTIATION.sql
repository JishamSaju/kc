CREATE TABLE PMC_NEGOTIATION (
  PMC_NEGOTIATION_ID    NUMBER(12,0) NOT NULL,
  PERSON_MASS_CHANGE_ID NUMBER(12,0) NOT NULL,
  NEGOTIATOR            CHAR(1) DEFAULT 'N' NOT NULL,
  UPDATE_USER           VARCHAR2(60) NOT NULL, 
  UPDATE_TIMESTAMP      DATE NOT NULL, 
  OBJ_ID                VARCHAR2(36) NOT NULL,
  VER_NBR               NUMBER(8,0) DEFAULT 1 NOT NULL
)
/
ALTER TABLE PMC_NEGOTIATION ADD CONSTRAINT PK_PMC_NEGOTIATION
  PRIMARY KEY (PMC_NEGOTIATION_ID)
/
