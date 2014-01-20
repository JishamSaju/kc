-- incorrect records
-- SELECT * FROM KIM_PERSON_QUAL_ATTR_T T, KIM_ROLES_PERSONS_QUAL_T T1, KIM_ROLES_T T2 
-- WHERE T.ROLE_PERSON_ID = T1.ID AND T1.ROLE_ID = T2.ID AND T2.NAME = 'Proposal Creator' 
-- AND T.ATTRIBUTE_NAME = 'subunits' AND T.ATTRIBUTE_VALUE = 'Y';

-- Proposal Creator role cannot descend as per the current role configuration
UPDATE KIM_PERSON_QUAL_ATTR_T T
   SET ATTRIBUTE_VALUE = 'N' 
 WHERE T.ATTRIBUTE_NAME = 'subunits'
   AND T.ATTRIBUTE_VALUE = 'Y' 
   AND T.ROLE_PERSON_ID IN (SELECT ID FROM KIM_ROLES_PERSONS_QUAL_T T1 WHERE T1.ROLE_ID = (SELECT ID FROM KIM_ROLES_T T2 WHERE T2.NAME = 'Proposal Creator'));

COMMIT;