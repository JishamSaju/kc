CREATE OR REPLACE VIEW OSP$SPONSOR_FORM_TEMPLATES AS
SELECT SPONSOR_CODE,  PACKAGE_NUMBER,  PAGE_NUMBER, PAGE_DESCRIPTION,
  FORM_TEMPLATE, UPDATE_TIMESTAMP, UPDATE_USER
FROM SPONSOR_FORM_TEMPLATES;