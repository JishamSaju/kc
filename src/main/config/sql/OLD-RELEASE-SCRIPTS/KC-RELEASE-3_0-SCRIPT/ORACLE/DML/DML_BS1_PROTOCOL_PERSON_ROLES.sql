UPDATE PROTOCOL_PERSON_ROLES SET UNIT_DETAILS_REQUIRED = 'N' WHERE PROTOCOL_PERSON_ROLE_ID = 'SP';

UPDATE PROTOCOL_PERSON_ROLES SET COMMENTS_DETAILS_REQUIRED = 'Y' WHERE PROTOCOL_PERSON_ROLE_ID = 'CA';
UPDATE PROTOCOL_PERSON_ROLES SET COMMENTS_DETAILS_REQUIRED = 'Y' WHERE PROTOCOL_PERSON_ROLE_ID = 'CRC';

COMMIT;