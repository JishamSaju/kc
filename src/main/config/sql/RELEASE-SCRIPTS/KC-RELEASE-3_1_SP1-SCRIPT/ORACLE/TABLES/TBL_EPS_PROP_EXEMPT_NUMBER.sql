-- Development Proposal updates --

-- EPS_PROP_EXEMPT_NUMBER --

ALTER TABLE EPS_PROP_EXEMPT_NUMBER 
DROP CONSTRAINT FK_EPS_PROP_EXEMPT_NUMBER_KRA;

ALTER TABLE EPS_PROP_EXEMPT_NUMBER 
DROP CONSTRAINT EPS_PROP_EXEMPT_NUMBERP1;

ALTER TABLE EPS_PROP_EXEMPT_NUMBER 
ADD (PROPOSAL_EXEMPT_NUMBER_ID NUMBER(12, 0) NOT NULL,
	PROPOSAL_SPECIAL_REVIEW_ID NUMBER(12, 0) NOT NULL);


CREATE SEQUENCE SEQ_EPS_PROP_EXEMPT_NUMBER_ID INCREMENT BY 1 START WITH 1;

-- EPS_PROP_SPECIAL_REVIEW --

ALTER TABLE EPS_PROP_SPECIAL_REVIEW 
DROP CONSTRAINT EPS_PROP_SPECIAL_REVIEWP1;

ALTER TABLE EPS_PROP_SPECIAL_REVIEW 
ADD (PROPOSAL_SPECIAL_REVIEW_ID NUMBER(12, 0));

CREATE SEQUENCE SEQ_EPS_PROP_SPECIAL_REVIEW_ID INCREMENT BY 1 START WITH 1;

UPDATE EPS_PROP_SPECIAL_REVIEW 
SET PROPOSAL_SPECIAL_REVIEW_ID = SEQ_EPS_PROP_SPECIAL_REVIEW_ID.NEXTVAL;

UPDATE EPS_PROP_EXEMPT_NUMBER
SET PROPOSAL_EXEMPT_NUMBER_ID = SEQ_EPS_PROP_EXEMPT_NUMBER_ID.NEXTVAL;

UPDATE EPS_PROP_EXEMPT_NUMBER EN
SET (PROPOSAL_SPECIAL_REVIEW_ID) =
(SELECT PROPOSAL_SPECIAL_REVIEW_ID
FROM EPS_PROP_SPECIAL_REVIEW SR 
WHERE SR.PROPOSAL_NUMBER = EN.PROPOSAL_NUMBER
AND SR.SPECIAL_REVIEW_NUMBER = EN.SPECIAL_REVIEW_NUMBER);

ALTER TABLE EPS_PROP_SPECIAL_REVIEW 
ADD (PROPOSAL_SPECIAL_REVIEW_ID NUMBER(12, 0) NOT NULL);
	
ALTER TABLE EPS_PROP_SPECIAL_REVIEW
ADD CONSTRAINT EPS_PROP_SPECIAL_REVIEWP1 PRIMARY KEY (PROPOSAL_SPECIAL_REVIEW_ID);

ALTER TABLE EPS_PROP_EXEMPT_NUMBER
ADD CONSTRAINT EPS_PROP_EXEMPT_NUMBERP1 PRIMARY KEY (PROPOSAL_EXEMPT_NUMBER_ID);

ALTER TABLE EPS_PROP_EXEMPT_NUMBER
ADD CONSTRAINT FK_EPS_PROP_SPECIAL_REVIEW FOREIGN KEY (PROPOSAL_SPECIAL_REVIEW_ID)
REFERENCES EPS_PROP_SPECIAL_REVIEW (PROPOSAL_SPECIAL_REVIEW_ID);

ALTER TABLE EPS_PROP_EXEMPT_NUMBER 
DROP COLUMN PROPOSAL_NUMBER;

ALTER TABLE EPS_PROP_EXEMPT_NUMBER 
DROP COLUMN SPECIAL_REVIEW_NUMBER;

