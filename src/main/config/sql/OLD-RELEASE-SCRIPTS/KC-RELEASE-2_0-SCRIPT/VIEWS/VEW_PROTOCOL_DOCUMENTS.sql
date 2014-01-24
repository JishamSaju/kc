CREATE OR REPLACE VIEW OSP$PROTOCOL_DOCUMENTS AS 
SELECT PAP.PROTOCOL_NUMBER,
       PAP.SEQUENCE_NUMBER,
       PAP.TYPE_CD,
       PAP.DESCRIPTION,
       PAF.FILE_NAME,
       PAF.FILE_DATA,
       PAP.UPDATE_TIMESTAMP,
       PAP.UPDATE_USER,
       PAF.SEQUENCE_NUMBER AS VERSION_NUMBER,
       PAP.STATUS_CD,
       PAP.DOCUMENT_ID
FROM   PROTOCOL_ATTACHMENT_PROTOCOL PAP,
       PROTOCOL_ATTACHMENT_FILE PAF
WHERE  PAP.FILE_ID = PAF.PA_FILE_ID 
       AND PAP.TYPE_CD = '9';