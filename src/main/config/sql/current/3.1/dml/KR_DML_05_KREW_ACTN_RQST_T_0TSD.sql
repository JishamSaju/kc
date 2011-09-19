-- Committee Test, Staging, and Demo Data

INSERT INTO KREW_ACTN_RQST_T (ACTN_RQST_ID,DOC_HDR_ID,RTE_NODE_INSTN_ID,ACTN_RQST_CD,STAT_CD,RSP_ID,RECIP_TYP_CD,PRIO_NBR,RTE_LVL_NBR,ACTN_TKN_ID,RSP_DESC_TXT,PRNCPL_ID,FRC_ACTN,APPR_PLCY,DOC_VER_NBR,CUR_IND,CRTE_DT,VER_NBR)
    VALUES (KREW_ACTN_RQST_S.NEXTVAL,(SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'Committee Document - IRB Committee'),null,'C','D',-3,'U',0,0,(SELECT ACTN_TKN_ID FROM KREW_ACTN_TKN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'Committee Document - IRB Committee') AND ACTN_CD = 'C'),'Initiator needs to complete document.',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),1,'F',1,1,SYSDATE,0)
/

-- Questionnaire Test, Staging, and Demo Data

INSERT INTO KREW_ACTN_RQST_T (ACTN_RQST_ID,DOC_HDR_ID,RTE_NODE_INSTN_ID,ACTN_RQST_CD,STAT_CD,RSP_ID,RECIP_TYP_CD,PRIO_NBR,RTE_LVL_NBR,ACTN_TKN_ID,RSP_DESC_TXT,PRNCPL_ID,FRC_ACTN,APPR_PLCY,DOC_VER_NBR,CUR_IND,CRTE_DT,VER_NBR) 
    VALUES (KREW_ACTN_RQST_S.NEXTVAL,(SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Long V1 '),(SELECT RTE_NODE_INSTN_ID FROM KREW_RTE_NODE_INSTN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Long V1 ')),'C','D',-3,'U',0,0,(SELECT ACTN_TKN_ID FROM KREW_ACTN_TKN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Long V1 ') AND ACTN_CD = 'C'),'Initiator needs to complete document.',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),1,'F',1,1,SYSDATE,0)
/
INSERT INTO KREW_ACTN_RQST_T (ACTN_RQST_ID,DOC_HDR_ID,RTE_NODE_INSTN_ID,ACTN_RQST_CD,STAT_CD,RSP_ID,RECIP_TYP_CD,PRIO_NBR,RTE_LVL_NBR,ACTN_TKN_ID,RSP_DESC_TXT,PRNCPL_ID,FRC_ACTN,APPR_PLCY,DOC_VER_NBR,CUR_IND,CRTE_DT,VER_NBR) 
    VALUES (KREW_ACTN_RQST_S.NEXTVAL,(SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Short V1 '),(SELECT RTE_NODE_INSTN_ID FROM KREW_RTE_NODE_INSTN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Short V1 ')),'C','D',-3,'U',0,0,(SELECT ACTN_TKN_ID FROM KREW_ACTN_TKN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'New Questionnaire - IRB Short V1 ') AND ACTN_CD = 'C'),'Initiator needs to complete document.',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),1,'F',1,1,SYSDATE,0)
/
INSERT INTO KREW_ACTN_RQST_T (ACTN_RQST_ID,DOC_HDR_ID,RTE_NODE_INSTN_ID,ACTN_RQST_CD,STAT_CD,RSP_ID,RECIP_TYP_CD,PRIO_NBR,RTE_LVL_NBR,ACTN_TKN_ID,RSP_DESC_TXT,PRNCPL_ID,FRC_ACTN,APPR_PLCY,DOC_VER_NBR,CUR_IND,CRTE_DT,VER_NBR) 
    VALUES (KREW_ACTN_RQST_S.NEXTVAL,(SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'Edit Questionnaire - IRB Long V2 '),(SELECT RTE_NODE_INSTN_ID FROM KREW_RTE_NODE_INSTN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'Edit Questionnaire - IRB Long V2 ')),'C','D',-3,'U',0,0,(SELECT ACTN_TKN_ID FROM KREW_ACTN_TKN_T WHERE DOC_HDR_ID = (SELECT DOC_HDR_ID FROM KREW_DOC_HDR_T WHERE TTL = 'Edit Questionnaire - IRB Long V2 ') AND ACTN_CD = 'C'),'Initiator needs to complete document.',(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),1,'F',1,1,SYSDATE,0)
/
