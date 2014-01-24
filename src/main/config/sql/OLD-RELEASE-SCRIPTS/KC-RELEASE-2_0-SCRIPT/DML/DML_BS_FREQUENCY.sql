/*Load Script For FREQUENCY Table*/ 
INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('44', '90 days after effective date', 90, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('7', 'Annual', 0, 12, 'Y', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('45', '60 days after effective date', 60, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('4', 'Scheduled', NULL, NULL, 'N', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('24', 'After each foreign trip', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('25', 'Unusual', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('26', 'Upon publication', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('27', '30 days after effective date', 30, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('5', 'One in advance', NULL, NULL, 'N', 'N', 'Y', SYSDATE, USER, NULL, 1) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('6', 'Semi-annual', 0, 6, 'Y', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('9', 'Bi-monthly', 0, 2, 'Y', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('10', '30 days after expiration', 30, 0, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('11', '60 days after expiration', 60, 0, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('12', '90 days after expiration', 90, 0, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('13', 'At expiration', 0, 0, 'N', 'Y', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('14', 'As required', NULL, NULL, 'N', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('2', 'Monthly', 0, 1, 'Y', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('1', 'None', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('18', '4 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 4) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('34', '10 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 10) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('8', 'With renewal proposal', 0, 0, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('15', '30 days prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, 30, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('16', '60 days prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, 60, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('17', '90 days prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, 90, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('19', '5 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 5) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('20', '6 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 6) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('21', '7 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 7) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('22', '8 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 8) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('23', '9 months prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, NULL, 9) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('28', '4 months after expiration date', NULL, 4, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('29', '5 months after expiration date', NULL, 5, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('37', '75 days prior to expiration date', NULL, NULL, 'N', 'Y', 'N', SYSDATE, USER, 75, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('33', '45 days after expiration', 45, NULL, 'N', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('31', '60 days after annual anniversary', 60, 12, 'Y', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('32', '30 days after annual anniversary', 30, 12, 'Y', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('3', 'Quarterly', 0, 3, 'Y', 'N', 'Y', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('35', '120 days prior to expiration', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, 120, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('36', '45 days prior to expiration', NULL, NULL, 'N', 'Y', 'Y', SYSDATE, USER, 45, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('30', '6 months after expiration date', NULL, 6, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('38', '30 days after award effective date', 30, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('39', '6 months after award effective date', NULL, 6, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('40', '9 months after award effective date', NULL, 9, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('41', 'Singular', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('42', '1 Year after expiration', NULL, 12, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('43', '75 days after expiration', 75, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('46', 'Quarterly - one month in advance', NULL, 3, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 1) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('47', 'Quarterly - two months in advance', NULL, 3, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 2) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('48', 'Quarterly - three months in advance', NULL, 3, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 3) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('49', 'Annual - one month in advance', NULL, 12, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 1) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('50', 'Annual - two months in advance', NULL, 12, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 2) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('51', 'Annual - three months in advance', NULL, 12, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 3) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('52', 'Semi-annual - one month in advance', NULL, 6, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 1) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('53', 'Semi-annual - two months in advance', NULL, 6, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 2) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('54', 'Semi-annual - three months in advance', NULL, 6, 'Y', 'N', 'Y', SYSDATE, USER, NULL, 3) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('55', '90 days prior to anniversaries', NULL, 12, 'Y', 'N', 'N', SYSDATE, USER, 90, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('56', '15 Days After Each Quarter', 15, 3, 'Y', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('58', '15 days after expiration', NULL, 0, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('57', '10 months after effective date', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

INSERT INTO FREQUENCY (FREQUENCY_CODE, DESCRIPTION, NUMBER_OF_DAYS, NUMBER_OF_MONTHS, REPEAT_FLAG, PROPOSAL_DUE_FLAG, INVOICE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, ADVANCE_NUMBER_OF_DAYS, ADVANCE_NUMBER_OF_MONTHS)
VALUES('59', '60 days prior to anniversary date', NULL, NULL, 'N', 'N', 'N', SYSDATE, USER, NULL, NULL) ;

COMMIT;