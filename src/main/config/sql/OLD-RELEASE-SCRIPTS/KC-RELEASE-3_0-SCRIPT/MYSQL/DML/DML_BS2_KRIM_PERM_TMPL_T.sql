UPDATE KRIM_PERM_TMPL_T
  SET KIM_TYP_ID = (select kim_typ_id from krim_typ_t where nm = 'Document Action' and nmspc_cd = 'KC-SYS')
  WHERE NM       = 'Perform Document Action';
  
-- Deleting dependent records for KRIM_PERM_TMPL_T record.
DELETE FROM KRIM_PERM_ATTR_DATA_T 
WHERE PERM_ID=(SELECT PERM_ID FROM KRIM_PERM_T WHERE PERM_TMPL_ID=(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM='Answer Questionnaire Permission'));

DELETE FROM KRIM_ROLE_PERM_T 
WHERE PERM_ID=(SELECT PERM_ID FROM KRIM_PERM_T WHERE PERM_TMPL_ID=(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM='Answer Questionnaire Permission'));

DELETE FROM KRIM_PERM_T 
WHERE PERM_TMPL_ID=(SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM='Answer Questionnaire Permission');

DELETE FROM KRIM_PERM_TMPL_T 
WHERE NM='Answer Questionnaire Permission';

COMMIT;