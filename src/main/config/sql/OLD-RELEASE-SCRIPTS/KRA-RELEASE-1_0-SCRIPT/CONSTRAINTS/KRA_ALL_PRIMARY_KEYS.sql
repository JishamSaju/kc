ALTER TABLE NARRATIVE_ATTACHMENT ADD CONSTRAINT PK_NARRATIVE_ATTACHMENT_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,MODULE_NUMBER);
ALTER TABLE NOTIFICATION_CONTENT_TYPES ADD CONSTRAINT NOTIFICATION_CONTENT_TYPE_PK PRIMARY KEY (
	ID);
ALTER TABLE ABSTRACT_TYPE ADD CONSTRAINT ABSTRACT_TYPE_P1 PRIMARY KEY (
	ABSTRACT_TYPE_CODE);
ALTER TABLE ACTIVITY_TYPE ADD CONSTRAINT ACTIVITY_TYPE_P1 PRIMARY KEY (
	ACTIVITY_TYPE_CODE);
ALTER TABLE CARRIER_TYPE ADD CONSTRAINT CARRIER_TYPE_TP1 PRIMARY KEY (
	CARRIER_TYPE_CODE);
ALTER TABLE DEADLINE_TYPE ADD CONSTRAINT DEADLINE_TYPE_P1 PRIMARY KEY (
	DEADLINE_TYPE_CODE);
ALTER TABLE STATE_CODE ADD CONSTRAINT STATE_CODE_TP1 PRIMARY KEY (
	COUNTRY_CODE,STATE_CODE);
ALTER TABLE MAIL_TYPE ADD CONSTRAINT MAIL_TYPE_P1 PRIMARY KEY (
	MAIL_TYPE);
ALTER TABLE NARRATIVE_TYPE ADD CONSTRAINT NARRATIVE_TYPE_P1 PRIMARY KEY (
	NARRATIVE_TYPE_CODE);
ALTER TABLE NSF_CODES ADD CONSTRAINT NSF_CODES_P1 PRIMARY KEY (
	NSF_SEQUENCE_NUMBER);
ALTER TABLE PROPOSAL_TYPE ADD CONSTRAINT PROPOSAL_TYPE_P1 PRIMARY KEY (
	PROPOSAL_TYPE_CODE);
ALTER TABLE KIM_ROLE_TYPE_T ADD CONSTRAINT KIM_ROLE_TYPE_P1 PRIMARY KEY (
	ROLE_TYPE_CODE);
ALTER TABLE EXEMPTION_TYPE ADD CONSTRAINT EXEMPTION_TYPE_P1 PRIMARY KEY (
	EXEMPTION_TYPE_CODE);
ALTER TABLE VALID_CALC_TYPES ADD CONSTRAINT PK_VALID_CALC_TYPES_KRA PRIMARY KEY (
	CALC_TYPE_ID,RATE_CLASS_TYPE,DEPENDENT_SEQ_NUMBER);
ALTER TABLE VALID_CE_RATE_TYPES ADD CONSTRAINT PK_VALID_CE_RATE_TYPES_KRA PRIMARY KEY (
	COST_ELEMENT,RATE_CLASS_CODE,RATE_TYPE_CODE);
ALTER TABLE VALID_CE_JOB_CODES ADD CONSTRAINT PK_VALID_CE_JOB_CODES_KRA PRIMARY KEY (
	COST_ELEMENT,JOB_CODE);
ALTER TABLE KIM_ATTRIBUTE_TYPES_T ADD CONSTRAINT KIM_ATTRIBUTE_TYPES_PK PRIMARY KEY (
	ID);
ALTER TABLE TRV_ACCT_TYPE ADD CONSTRAINT TRV_ACCT_TYPE_PK PRIMARY KEY (
	ACCT_TYPE);
ALTER TABLE INV_CREDIT_TYPE ADD CONSTRAINT INV_CREDIT_TYPE_P1 PRIMARY KEY (
	INV_CREDIT_TYPE_CODE);
ALTER TABLE YNQ_EXPLANATION_TYPE ADD CONSTRAINT PK_YNQ_EXPLANATION_TYPE_KRA PRIMARY KEY (
	EXPLANATION_TYPE);
ALTER TABLE RATE_TYPE ADD CONSTRAINT PK_RATE_TYPE_KRA PRIMARY KEY (
	RATE_CLASS_CODE,RATE_TYPE_CODE);
ALTER TABLE JOB_CODE ADD CONSTRAINT PK_JOB_CODE_KRA PRIMARY KEY (
	JOB_CODE);
ALTER TABLE S2S_REVISION_TYPE ADD CONSTRAINT PK_S2S_REVISION_TYPE_KRA PRIMARY KEY (
	S2S_REVISION_TYPE_CODE);
ALTER TABLE S2S_SUBMISSION_TYPE ADD CONSTRAINT PK_S2S_SUBMISSION_TYPE_KRA PRIMARY KEY (
	S2S_SUBMISSION_TYPE_CODE);
ALTER TABLE SPONSOR ADD CONSTRAINT PK_SPONSOR_KRA PRIMARY KEY (
	SPONSOR_CODE);
ALTER TABLE SP_REV_APPROVAL_TYPE ADD CONSTRAINT SP_REV_APPROVAL_TYPE_P1 PRIMARY KEY (
	APPROVAL_TYPE_CODE);
ALTER TABLE EPS_PROP_PER_DOC_TYPE ADD CONSTRAINT PK_EPS_PROP_PER_DOC_TYPE_KRA PRIMARY KEY (
	DOCUMENT_TYPE_CODE);
ALTER TABLE SPONSOR_TYPE ADD CONSTRAINT PK_SPONSOR_TYPE_KRA PRIMARY KEY (
	SPONSOR_TYPE_CODE);
ALTER TABLE COUNTRY_CODE ADD CONSTRAINT COUNTRY_CODE_N2 PRIMARY KEY (
	COUNTRY_CODE);
ALTER TABLE NARRATIVE ADD CONSTRAINT PK_NARRATIVE_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,MODULE_NUMBER);
ALTER TABLE NARRATIVE_STATUS ADD CONSTRAINT PK_NARRATIVE_STATUS_KRA PRIMARY KEY (
	NARRATIVE_STATUS_CODE);
ALTER TABLE NARRATIVE_USER_RIGHTS ADD CONSTRAINT PK_NARRATIVE_USER_RIGHTS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,MODULE_NUMBER,USER_ID);
ALTER TABLE DEGREE_TYPE ADD CONSTRAINT DEGREE_TYPE_N2 PRIMARY KEY (
	DEGREE_CODE);
ALTER TABLE FP_DOC_TYPE_T ADD CONSTRAINT FP_DOC_TYPE_TP1 PRIMARY KEY (
	FDOC_TYP_CD);
ALTER TABLE FS_CODES_DESC_T ADD CONSTRAINT FS_CODES_DESC_TP1 PRIMARY KEY (
	CODE,CLASS_NAME);
ALTER TABLE APPOINTMENT_TYPE ADD CONSTRAINT APPOINTMENT_TYPE_P1 PRIMARY KEY (
	APPOINTMENT_TYPE_CODE);
ALTER TABLE RATE_CLASS_TYPE ADD CONSTRAINT PK_RATE_CLASS_TYPE_KRA PRIMARY KEY (
	RATE_CLASS_TYPE);
ALTER TABLE SPONSOR_HIERARCHY ADD CONSTRAINT PK_SPONSOR_HIERARCHY_KRA PRIMARY KEY (
	HIERARCHY_NAME,SPONSOR_CODE);
ALTER TABLE SCHOOL_CODE ADD CONSTRAINT PK_SCHOOL_CODE_KRA PRIMARY KEY (
	SCHOOL_CODE);
ALTER TABLE CUSTOM_ATTRIBUTE_DATA_TYPE ADD CONSTRAINT CUSTOM_ATTRIBUTE_DATA_TYPE_P1 PRIMARY KEY (
	DATA_TYPE_CODE);
ALTER TABLE UNIT_ADMINISTRATOR_TYPE ADD CONSTRAINT PK_UNIT_ADMINISTRATOR_TYPE_KRA PRIMARY KEY (
	UNIT_ADMINISTRATOR_TYPE_CODE);
ALTER TABLE BUDGET_PERIOD_TYPE ADD CONSTRAINT PK_BUDGET_PERIOD_TYPE_KRA PRIMARY KEY (
	BUDGET_PERIOD_TYPE_CODE);
ALTER TABLE ORGANIZATION_TYPE_LIST ADD CONSTRAINT PK_ORGANIZATION_TYPE_LIST_KRA PRIMARY KEY (
	ORGANIZATION_TYPE_CODE);
ALTER TABLE ORGANIZATION_TYPE ADD CONSTRAINT PK_ORGANIZATION_TYPE_KRA PRIMARY KEY (
	ORGANIZATION_ID,ORGANIZATION_TYPE_CODE);
ALTER TABLE BUDGET_CATEGORY_TYPE ADD CONSTRAINT PK_BUDGET_CATEGORY_TYPE_KRA PRIMARY KEY (
	BUDGET_CATEGORY_TYPE_CODE);
ALTER TABLE EN_BAM_PARAM_T ADD CONSTRAINT EN_BAM_PARAM_T_PK PRIMARY KEY (
	BAM_PARAM_ID);
ALTER TABLE EN_BAM_T ADD CONSTRAINT EN_BAM_T_PK PRIMARY KEY (
	BAM_ID);
ALTER TABLE EN_DOC_HDR_CNTNT_T ADD CONSTRAINT EN_DOC_HDR_T_CNTNT_PK PRIMARY KEY (
	DOC_HDR_ID);
ALTER TABLE EN_DOC_TYP_T ADD CONSTRAINT EN_DOC_TYP_T_PK PRIMARY KEY (
	DOC_TYP_ID);
ALTER TABLE EN_EDOCLT_DEF_T ADD CONSTRAINT EN_EDOCLT_DEF_T PRIMARY KEY (
	EDOCLT_DEF_ID);
ALTER TABLE EN_EDOCLT_STYLE_T ADD CONSTRAINT EN_EDOCLT_STYLE_T PRIMARY KEY (
	EDOCLT_STYLE_ID);
ALTER TABLE EN_MESSAGE_QUE_T ADD CONSTRAINT EN_MESSAGE_QUE_T_PK PRIMARY KEY (
	MESSAGE_QUE_ID);
ALTER TABLE EN_MSG_PAYLOAD_T ADD CONSTRAINT EN_MSG_PAYLOAD_T PRIMARY KEY (
	MESSAGE_QUE_ID);
ALTER TABLE EN_RULE_ATTRIB_T ADD CONSTRAINT EN_RULE_ATTRIB_PK PRIMARY KEY (
	RULE_ATTRIB_ID);
ALTER TABLE EN_SERVICE_DEF_DUEX_T ADD CONSTRAINT EN_SERVICE_DEF_DUEX_T_PK PRIMARY KEY (
	SERVICE_DEF_ID);
ALTER TABLE SPONSOR_FORMS ADD CONSTRAINT PK_SPONSOR_FORMS PRIMARY KEY (
	SPONSOR_CODE,PACKAGE_NUMBER);
ALTER TABLE SPONSOR_FORM_TEMPLATES ADD CONSTRAINT PK_SPONSOR_FORM_TEMPLATES PRIMARY KEY (
	SPONSOR_CODE,PACKAGE_NUMBER,PAGE_NUMBER);
ALTER TABLE EN_TRANSACTION_TST_PRSN_T ADD CONSTRAINT EN_TRANSACTION_TST_PRSN_T_PK PRIMARY KEY (
	PRSN_ID);
ALTER TABLE EN_USR_OPTN_T ADD CONSTRAINT EN_USR_OPTN_T_PK PRIMARY KEY (
	PRSN_EN_ID,PRSN_OPTN_ID);
ALTER TABLE EN_USR_T ADD CONSTRAINT EN_USR_T_PK PRIMARY KEY (
	PRSN_EN_ID);
ALTER TABLE EN_WRKGRP_EXT_DTA_T ADD CONSTRAINT EN_WRKGRP_EXT_DTA_T_PK PRIMARY KEY (
	WRKGRP_EXT_DTA_ID);
ALTER TABLE EN_WRKGRP_EXT_T ADD CONSTRAINT EN_WRKGRP_EXT_T_PK PRIMARY KEY (
	WRKGRP_EXT_ID);
ALTER TABLE EN_WRKGRP_MBR_T ADD CONSTRAINT EN_WRKGRP_MBR_T_PK PRIMARY KEY (
	WRKGRP_MBR_PRSN_EN_ID,WRKGRP_ID,WRKGRP_VER_NBR);
ALTER TABLE EN_WRKGRP_T ADD CONSTRAINT EN_WRKGRP_T_PK PRIMARY KEY (
	WRKGRP_ID,WRKGRP_VER_NBR);
ALTER TABLE EN_WRKGRP_TYP_ATTRIB_T ADD CONSTRAINT EN_WRKGRP_TYP_ATTRIB_PK PRIMARY KEY (
	WRKGRP_TYP_ATTRIB_ID);
ALTER TABLE EN_WRKGRP_TYP_T ADD CONSTRAINT EN_WRKGRP_TYP_T_PK PRIMARY KEY (
	WRKGRP_TYP_ID);
ALTER TABLE EN_OUT_BOX_ITM_T ADD CONSTRAINT EN_OUT_BOX_ITM_T_PK PRIMARY KEY (
	ACTN_ITM_ID);
ALTER TABLE EN_ACTN_ITM_T ADD CONSTRAINT EN_ACTN_ITM_T_PK PRIMARY KEY (
	ACTN_ITM_ID);
ALTER TABLE EN_ACTN_RQST_T ADD CONSTRAINT EN_ACTN_RQST_TEMP_T_PK PRIMARY KEY (
	ACTN_RQST_ID);
ALTER TABLE EN_ACTN_TKN_T ADD CONSTRAINT EN_ACTN_TKN_T_PK PRIMARY KEY (
	ACTN_TKN_ID);
ALTER TABLE EN_APPL_CNST_T ADD CONSTRAINT EN_APPL_CNST_T_PK PRIMARY KEY (
	APPL_CNST_NM);
ALTER TABLE EN_ATTACHMENT_T ADD CONSTRAINT EN_ATTACHMENT_T_PK PRIMARY KEY (
	ATTACHMENT_ID);
ALTER TABLE EN_CACHE_SERVER_T ADD CONSTRAINT EN_CACHE_SERVER_T_PK PRIMARY KEY (
	IP_ADDRESS);
ALTER TABLE EN_DIRTY_CACHE_T ADD CONSTRAINT EN_DIRTY_CACHE_T_PK PRIMARY KEY (
	CACHE_ENTRY_ID);
ALTER TABLE EN_DLGN_RSP_T ADD CONSTRAINT EN_DLGN_RSP_PK PRIMARY KEY (
	DLGN_RULE_ID);
ALTER TABLE EN_DOC_HDR_EXT_DT_T ADD CONSTRAINT EN_DOC_HDR_EXT_DT_T_PK PRIMARY KEY (
	DOC_HDR_EXT_ID);
ALTER TABLE EN_DOC_HDR_EXT_FLT_T ADD CONSTRAINT EN_DOC_HDR_EXT_FLT_T_PK PRIMARY KEY (
	DOC_HDR_EXT_ID);
ALTER TABLE EN_DOC_HDR_EXT_LONG_T ADD CONSTRAINT EN_DOC_HDR_EXT_LONG_T_PK PRIMARY KEY (
	DOC_HDR_EXT_ID);
ALTER TABLE EN_DOC_HDR_EXT_T ADD CONSTRAINT EN_DOC_HDR_EXT_T_PK PRIMARY KEY (
	DOC_HDR_EXT_ID);
ALTER TABLE EN_DOC_HDR_T ADD CONSTRAINT EN_DOC_HDR_T_PK PRIMARY KEY (
	DOC_HDR_ID);
ALTER TABLE EN_DOC_NTE_T ADD CONSTRAINT EN_DOC_NTE_T_PK PRIMARY KEY (
	DOC_NTE_ID);
ALTER TABLE EN_DOC_RTE_TYP_T ADD CONSTRAINT EN_DOC_RTE_TYP_TEMP_T_PK PRIMARY KEY (
	DOC_RTE_TYP_NM);
ALTER TABLE EN_DOC_TYP_ATTRIB_T ADD CONSTRAINT EN_DOC_TYP_ATTRIB_T_PK PRIMARY KEY (
	DOC_TYP_ATTRIB_ID);
ALTER TABLE EN_DOC_TYP_PLCY_RELN_T ADD CONSTRAINT EN_DOC_TYP_PLCY_RELN_T_PK PRIMARY KEY (
	DOC_TYP_ID,DOC_PLCY_NM);
ALTER TABLE EN_DOC_TYP_PROC_T ADD CONSTRAINT EN_DOC_TYP_PROC_T_PK PRIMARY KEY (
	DOC_TYP_PROC_ID);
ALTER TABLE EN_DOC_TYP_RTE_LVL_T ADD CONSTRAINT EN_DOC_TYP_RTE_LVL_T_PK PRIMARY KEY (
	DOC_RTE_LVL_ID);
ALTER TABLE EN_EDL_DMP_T ADD CONSTRAINT EN_EDL_DMP_PK PRIMARY KEY (
	DOC_HDR_ID);
ALTER TABLE EN_EDL_FIELD_DMP_T ADD CONSTRAINT EN_EDL_FIELD_DMP_T_PK PRIMARY KEY (
	EDL_FIELD_DMP_ID);
ALTER TABLE EN_EDOCLT_ASSOC_T ADD CONSTRAINT EN_EDOCLT_ASSOC_T PRIMARY KEY (
	EDOCLT_ASSOC_ID);
ALTER TABLE EN_HLP_T ADD CONSTRAINT EN_HLP_T_PK PRIMARY KEY (
	EN_HLP_ID);
ALTER TABLE EN_INIT_RTE_NODE_INSTN_T ADD CONSTRAINT EN_INIT_RTE_NODE_INSTN_T_PK PRIMARY KEY (
	DOC_HDR_ID,RTE_NODE_INSTN_ID);
ALTER TABLE EN_MSG_QUE_T ADD CONSTRAINT EN_MSG_QUE_T_PK PRIMARY KEY (
	MESSAGE_QUE_ID);
ALTER TABLE EN_ORG_RESP_ID_T ADD CONSTRAINT EN_ORG_RESP_ID_T_PK PRIMARY KEY (
	ORG_CD,FIN_COA_CD,ORG_RESP_ID_APRVR_TYP_CD);
ALTER TABLE EN_RMV_RPLC_DOC_T ADD CONSTRAINT EN_RMV_RPLC_DOC_T_PK PRIMARY KEY (
	DOC_HDR_ID);
ALTER TABLE EN_RMV_RPLC_RULE_T ADD CONSTRAINT EN_RMV_RPLC_RULE_T_PK PRIMARY KEY (
	DOC_HDR_ID,RULE_ID);
ALTER TABLE EN_RMV_RPLC_WRKGRP_T ADD CONSTRAINT EN_RMV_RPLC_WRKGRP_T_PK PRIMARY KEY (
	DOC_HDR_ID,WRKGRP_ID);
ALTER TABLE EN_RTE_BRCH_PROTO_T ADD CONSTRAINT EN_RTE_BRCH_PROTO_T_PK PRIMARY KEY (
	RTE_BRCH_PROTO_ID);
ALTER TABLE EN_RTE_BRCH_ST_T ADD CONSTRAINT EN_RTE_BRCH_ST_T_PK PRIMARY KEY (
	RTE_BRCH_ST_ID);
ALTER TABLE EN_RTE_BRCH_T ADD CONSTRAINT EN_RTE_BRCH_T_PK PRIMARY KEY (
	RTE_BRCH_ID);
ALTER TABLE EN_RTE_NODE_CFG_PARM_T ADD CONSTRAINT EN_RTE_NODE_CFG_PARM_T_PK PRIMARY KEY (
	RTE_NODE_CFG_PARM_ID);
ALTER TABLE EN_RTE_NODE_INSTN_LNK_T ADD CONSTRAINT EN_RTE_NODE_INSTN_LNK_T_PK PRIMARY KEY (
	FROM_RTE_NODE_INSTN_ID,TO_RTE_NODE_INSTN_ID);
ALTER TABLE EN_RTE_NODE_INSTN_ST_T ADD CONSTRAINT EN_RTE_NODE_INSTN_ST_T_PK PRIMARY KEY (
	RTE_NODE_INSTN_ST_ID);
ALTER TABLE EN_RTE_NODE_INSTN_T ADD CONSTRAINT EN_RTE_NODE_INSTN_T_PK PRIMARY KEY (
	RTE_NODE_INSTN_ID);
ALTER TABLE EN_RTE_NODE_LNK_T ADD CONSTRAINT EN_RTE_NODE_LNK_T_PK PRIMARY KEY (
	FROM_RTE_NODE_ID,TO_RTE_NODE_ID);
ALTER TABLE EN_RTE_NODE_T ADD CONSTRAINT EN_RTE_NODE_T_PK PRIMARY KEY (
	RTE_NODE_ID);
ALTER TABLE EN_RULE_ATTRIB_KEY_VAL_T ADD CONSTRAINT EN_RULE_ATTRIB_KEY_VAL_T PRIMARY KEY (
	RULE_ATTRIB_KEY_VAL_ID);
ALTER TABLE EN_RULE_ATTRIB_VLD_VAL_T ADD CONSTRAINT EN_RULE_ATTRIB_VLD_VAL_PK PRIMARY KEY (
	RULE_ATTRIB_VLD_VAL_ID);
ALTER TABLE EN_RULE_BASE_VAL_T ADD CONSTRAINT EN_RULE_BASE_VAL_PK PRIMARY KEY (
	RULE_BASE_VAL_ID);
ALTER TABLE EN_RULE_EXPR_T ADD CONSTRAINT EN_RULE_EXPR_T_PK PRIMARY KEY (
	RULE_EXPR_ID);
ALTER TABLE EN_RULE_EXT_T ADD CONSTRAINT EN_RULE_EXT_PK PRIMARY KEY (
	RULE_EXT_ID);
ALTER TABLE EN_RULE_EXT_VAL_T ADD CONSTRAINT EN_RULE_EXT_VAL_PK PRIMARY KEY (
	RULE_EXT_VAL_ID);
ALTER TABLE EN_RULE_RSP_T ADD CONSTRAINT EN_RULE_RSP_PK PRIMARY KEY (
	RULE_RSP_ID);
ALTER TABLE EN_RULE_TMPL_ATTRIB_T ADD CONSTRAINT EN_RULE_TMPL_ATTRIB_PK PRIMARY KEY (
	RULE_TMPL_ATTRIB_ID);
ALTER TABLE EN_RULE_TMPL_OPTN_T ADD CONSTRAINT EN_RULE_TMPL_OPTN_T_PK PRIMARY KEY (
	RULE_TMPL_OPTN_ID);
ALTER TABLE EN_RULE_TMPL_T ADD CONSTRAINT EN_RULE_TMPL_T_PK PRIMARY KEY (
	RULE_TMPL_ID);
ALTER TABLE EN_SERVICE_DEF_INTER_T ADD CONSTRAINT EN_SERVICE_DEF_INTER_T_PK PRIMARY KEY (
	SERVICE_DEF_INTER_ID);
ALTER TABLE EN_SERVICE_DEF_T ADD CONSTRAINT EN_SERVICE_DEF_T_PK PRIMARY KEY (
	SERVICE_DEF_ID);
ALTER TABLE EN_TRANSACTION_TST_ADDRS_T ADD CONSTRAINT EN_TRANSACTION_TST_ADDRS_T_PK PRIMARY KEY (
	ADDRS_ID);
ALTER TABLE FP_MAINTENANCE_DOCUMENT_T ADD CONSTRAINT FP_MAINTENANCE_DOCUMENT_TP1 PRIMARY KEY (
	FDOC_NBR);
ALTER TABLE KR_QRTZ_BLOB_TRIGGERS ADD CONSTRAINT SYS_C0089392 PRIMARY KEY (
	TRIGGER_NAME,TRIGGER_GROUP);
ALTER TABLE KR_QRTZ_CALENDARS ADD CONSTRAINT SYS_C0089393 PRIMARY KEY (
	CALENDAR_NAME);
ALTER TABLE KR_QRTZ_JOB_DETAILS ADD CONSTRAINT SYS_C0089396 PRIMARY KEY (
	JOB_NAME,JOB_GROUP);
ALTER TABLE KR_QRTZ_TRIGGERS ADD CONSTRAINT SYS_C0089402 PRIMARY KEY (
	TRIGGER_NAME,TRIGGER_GROUP);
ALTER TABLE FS_LOOKUP_RESULTS_MT ADD CONSTRAINT FS_LOOKUP_RESULTS_MTP1 PRIMARY KEY (
	LOOKUP_RESULT_SEQUENCE_NBR);
ALTER TABLE FS_LOOKUP_SELECTIONS_MT ADD CONSTRAINT FS_LOOKUP_SELECTIONS_MTP1 PRIMARY KEY (
	LOOKUP_RESULT_SEQUENCE_NBR);
ALTER TABLE FP_MAINT_DOC_ATTACHMENT_T ADD CONSTRAINT FP_MAINT_DOC_ATTACHMENT_TP1 PRIMARY KEY (
	FDOC_NBR);
ALTER TABLE KRA_USER ADD CONSTRAINT PK_USER_KRA PRIMARY KEY (
	USER_ID);
ALTER TABLE KR_QRTZ_CRON_TRIGGERS ADD CONSTRAINT SYS_C0089394 PRIMARY KEY (
	TRIGGER_NAME,TRIGGER_GROUP);
ALTER TABLE KR_QRTZ_FIRED_TRIGGERS ADD CONSTRAINT SYS_C0089395 PRIMARY KEY (
	ENTRY_ID);
ALTER TABLE KR_QRTZ_JOB_LISTENERS ADD CONSTRAINT SYS_C0089397 PRIMARY KEY (
	JOB_NAME,JOB_GROUP,JOB_LISTENER);
ALTER TABLE KR_QRTZ_LOCKS ADD CONSTRAINT SYS_C0089398 PRIMARY KEY (
	LOCK_NAME);
ALTER TABLE KR_QRTZ_PAUSED_TRIGGERS_GRPS ADD CONSTRAINT SYS_C0089399 PRIMARY KEY (
	TRIGGER_GROUP);
ALTER TABLE KR_QRTZ_SCHEDULER_STATE ADD CONSTRAINT SYS_C0089400 PRIMARY KEY (
	INSTANCE_NAME);
ALTER TABLE KR_QRTZ_SIMPLE_TRIGGERS ADD CONSTRAINT SYS_C0089401 PRIMARY KEY (
	TRIGGER_NAME,TRIGGER_GROUP);
ALTER TABLE KR_QRTZ_TRIGGER_LISTENERS ADD CONSTRAINT SYS_C0089403 PRIMARY KEY (
	TRIGGER_NAME,TRIGGER_GROUP,TRIGGER_LISTENER);
ALTER TABLE KIM_GROUPS_GROUPS_T ADD CONSTRAINT KIM_GROUPS_GROUPS_PK PRIMARY KEY (
	PARENT_GROUP_ID,MEMBER_GROUP_ID);
ALTER TABLE KIM_GROUPS_PERSONS_T ADD CONSTRAINT KIM_GROUPS_PERSONS_PK PRIMARY KEY (
	GROUP_ID,PERSON_ID);
ALTER TABLE KIM_GROUPS_T ADD CONSTRAINT KIM_GROUPS_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_GROUP_ATTRIBUTES_T ADD CONSTRAINT KIM_GROUP_ATTRIBUTES_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_NAMESPACES_T ADD CONSTRAINT KIM_NAMESPACE_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_NAMESPACE_DFLT_ATTRIBS_T ADD CONSTRAINT KIM_NMSPCE_DFLT_ATTR_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_PERMISSIONS_T ADD CONSTRAINT KIM_PERMISSIONS_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_PERSONS_T ADD CONSTRAINT KIM_PERSONS_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_PERSON_ATTRIBUTES_T ADD CONSTRAINT KIM_PERSON_ATTRIBUTES_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLES_PERMISSIONS_T ADD CONSTRAINT KIM_ROLES_PERMISSIONS_PK PRIMARY KEY (
	ROLE_ID,PERMISSION_ID);
ALTER TABLE KIM_ROLES_T ADD CONSTRAINT KIM_ROLES_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLE_ATTRIBUTES_T ADD CONSTRAINT KIM_ROLE_ATTRIBUTES_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLES_PERSONS_T ADD CONSTRAINT KIM_ROLES_PERSONS_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLES_PERSONS_QUAL_T ADD CONSTRAINT KIM_ROLES_PERSONS_QUAL_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_PERSON_QUAL_ATTR_T ADD CONSTRAINT KIM_PERSON_QUAL_ATTR_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLES_GROUPS_T ADD CONSTRAINT KIM_ROLES_GROUPS_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_ROLES_GROUPS_QUAL_T ADD CONSTRAINT KIM_ROLES_GROUPS_QUAL_PK PRIMARY KEY (
	ID);
ALTER TABLE KIM_GROUP_QUAL_ATTR_T ADD CONSTRAINT KIM_GROUP_ROLE_QUAL_PK PRIMARY KEY (
	ID);
ALTER TABLE FS_UNIVERSAL_USR_T ADD CONSTRAINT FS_UNIVERSAL_USR_TP1 PRIMARY KEY (
	PERSON_UNVL_ID);
ALTER TABLE FP_DOC_GROUP_T ADD CONSTRAINT FP_DOC_GROUP_TP1 PRIMARY KEY (
	FDOC_GRP_CD);
ALTER TABLE FP_DOC_HEADER_T ADD CONSTRAINT FP_DOC_HEADER_TP1 PRIMARY KEY (
	FDOC_NBR);
ALTER TABLE FP_DOC_STATUS_T ADD CONSTRAINT FP_DOC_STATUS_TP1 PRIMARY KEY (
	FDOC_STATUS_CD);
ALTER TABLE FP_MAINT_LOCK_T ADD CONSTRAINT FP_MAINT_LOCK_TP1 PRIMARY KEY (
	LOCK_REPRESENTATION_TXT);
ALTER TABLE FS_ADHOC_RTE_ACTN_RECP_T ADD CONSTRAINT FS_ADHOC_RTE_ACTN_RECP_TP1 PRIMARY KEY (
	ACTN_RQST_RECP_TYP_CD,ACTN_RQST_CD,ACTN_RQST_RECP_ID);
ALTER TABLE EPS_PROP_COLUMNS_TO_ALTER ADD CONSTRAINT PK_EPS_PROP_COLUMNS_TO_ALTER PRIMARY KEY (
	COLUMN_NAME);
ALTER TABLE EPS_PROP_CHANGED_DATA ADD CONSTRAINT PK_EPS_PROP_CHANGED_DATA PRIMARY KEY (
	PROPOSAL_NUMBER,COLUMN_NAME,CHANGE_NUMBER);
ALTER TABLE EPS_PROP_ABSTRACT ADD CONSTRAINT PK_EPS_PROP_ABSTRACT_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,ABSTRACT_TYPE_CODE);
ALTER TABLE EPS_PROP_PERSON_BIO_ATTACHMENT ADD CONSTRAINT PK_EPS_PROP_PSN_BIO_ATMT_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,BIO_NUMBER);
ALTER TABLE EPS_PROP_SPECIAL_REVIEW ADD CONSTRAINT PK_EPS_PROP_SPECIAL_REVIEW_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,SPECIAL_REVIEW_NUMBER);
ALTER TABLE BUDGET_SUB_AWARDS ADD CONSTRAINT PK_BUDGET_SUB_AWARDS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,SUB_AWARD_NUMBER);
ALTER TABLE BUDGET_SUB_AWARD_ATT ADD CONSTRAINT PK_BUDGET_SUB_AWARD_ATT_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,SUB_AWARD_NUMBER,CONTENT_ID);
ALTER TABLE BUDGET_PER_DET_RATE_AND_BASE ADD CONSTRAINT PK_BGT_PER_DET_RATE_BASE_KRA PRIMARY KEY (
	BUDGET_PERIOD_NUMBER,LINE_ITEM_NUMBER,PERSON_NUMBER,RATE_NUMBER);
ALTER TABLE S2S_OPPORTUNITY ADD CONSTRAINT PK_S2S_OPPORTUNITY_KRA PRIMARY KEY (
	PROPOSAL_NUMBER);
ALTER TABLE S2S_APPLICATION ADD CONSTRAINT PK_S2S_APPLICATION_KRA PRIMARY KEY (
	PROPOSAL_NUMBER);
ALTER TABLE EPS_PROP_POST_SUB_STATUS ADD CONSTRAINT SYS_C001439265 PRIMARY KEY (
	STATUS_CODE);
ALTER TABLE EPS_PROP_EXEMPT_NUMBER ADD CONSTRAINT PK_EPS_PROP_EXEMPT_NUMBER_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,SPECIAL_REVIEW_NUMBER,EXEMPTION_TYPE_CODE);
ALTER TABLE BUDGET_PERSONS ADD CONSTRAINT PK_BUDGET_PERSONS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,PERSON_SEQUENCE_NUMBER);
ALTER TABLE BUDGET_RATE_AND_BASE ADD CONSTRAINT PK_BUDGET_RATE_AND_BASE_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER,RATE_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE);
ALTER TABLE EPS_PROP_RATES ADD CONSTRAINT PK_EPS_PROP_RATES_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE,FISCAL_YEAR,START_DATE,ON_OFF_CAMPUS_FLAG);
ALTER TABLE BUDGET_PERSONNEL_CAL_AMTS ADD CONSTRAINT PK_BUDGET_PERS_CAL_AMTS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER,PERSON_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE);
ALTER TABLE BUDGET_CATEGORY ADD CONSTRAINT PK_BUDGET_CATEGORY_KRA PRIMARY KEY (
	BUDGET_CATEGORY_CODE);
ALTER TABLE S2S_OPP_FORMS ADD CONSTRAINT PK_S2S_OPP_FORMS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,OPP_NAME_SPACE);
ALTER TABLE S2S_APP_SUBMISSION ADD CONSTRAINT PK_S2S_APP_SUBMISSION_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,SUBMISSION_NUMBER);
ALTER TABLE S2S_APP_ATTACHMENTS ADD CONSTRAINT PK_S2S_ATTACHMENTS_KRA PRIMARY KEY (
	CONTENT_ID,PROPOSAL_NUMBER);
ALTER TABLE EPS_PROP_PERSON_UNITS ADD CONSTRAINT EPS_PROP_PERSON_UNITS_N5 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,UNIT_NUMBER);
ALTER TABLE EPS_PROP_USER_ROLES ADD CONSTRAINT PK_EPS_PROP_USER_ROLES_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,ROLE_ID,USER_ID);
ALTER TABLE EPS_PROP_PER_CREDIT_SPLIT ADD CONSTRAINT EPS_PROP_PER_CREDIT_SPLIT_P1 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,INV_CREDIT_TYPE_CODE);
ALTER TABLE EPS_PROP_UNIT_CREDIT_SPLIT ADD CONSTRAINT EPS_PROP_UNIT_CREDIT_SPLIT_P1 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,INV_CREDIT_TYPE_CODE,UNIT_NUMBER);
ALTER TABLE EPS_PROP_PERS_YNQ ADD CONSTRAINT PK_EPS_PROP_PERS_YNQ_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,QUESTION_ID);
ALTER TABLE EPS_PROP_PERSON_BIO ADD CONSTRAINT PK_EPS_PROP_PERSON_BIO_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,BIO_NUMBER);
ALTER TABLE EPS_PROP_PERSON_DEGREE ADD CONSTRAINT EPS_PROP_PERSON_DEGREE_N6 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,DEGREE_SEQUENCE_NUMBER);
ALTER TABLE BUDGET_STATUS ADD CONSTRAINT PK_BUDGET_STATUS_KRA PRIMARY KEY (
	BUDGET_STATUS_CODE);
ALTER TABLE BUDGET_CATEGORY_MAPS ADD CONSTRAINT PK_BUDGET_CATEGORY_MAPS_KRA PRIMARY KEY (
	MAPPING_NAME,TARGET_CATEGORY_CODE);
ALTER TABLE BUDGET_CATEGORY_MAPPING ADD CONSTRAINT PK_BUDGET_CATEGORY_MAPPING_KRA PRIMARY KEY (
	MAPPING_NAME,TARGET_CATEGORY_CODE,COEUS_CATEGORY_CODE);
ALTER TABLE EPS_PROP_LA_RATES ADD CONSTRAINT PK_EPS_PROP_LA_RATES_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE,FISCAL_YEAR,START_DATE,ON_OFF_CAMPUS_FLAG);
ALTER TABLE BUDGET_DETAILS_CAL_AMTS ADD CONSTRAINT PK_BUDGET_DETAILS_CAL_AMTS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE);
ALTER TABLE EPS_PROPOSAL ADD CONSTRAINT EPS_PROPOSAL_P1 PRIMARY KEY (
	PROPOSAL_NUMBER);
ALTER TABLE EPS_PROP_LOCATION ADD CONSTRAINT PK_EPS_PROP_LOCATION_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,LOCATION_SEQUENCE_NUMBER);
ALTER TABLE EPS_PROP_SCIENCE_KEYWORD ADD CONSTRAINT PK_EPS_PROP_SCIE_KEYWORD_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,SCIENCE_KEYWORD_CODE);
ALTER TABLE EPS_PROP_PERSON ADD CONSTRAINT EPS_PROP_PERSON_P1 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER,PROP_PERSON_ROLE_ID);
ALTER TABLE EPS_PROP_PERSON_ROLE ADD CONSTRAINT EPS_PROP_PERSON_ROLE_N2 PRIMARY KEY (
	PROP_PERSON_ROLE_ID);
ALTER TABLE EPS_PROPOSAL_STATUS ADD CONSTRAINT PK_EPS_PROPOSAL_STATUS_KRA PRIMARY KEY (
	STATUS_CODE);
ALTER TABLE BUDGET_MODULAR ADD CONSTRAINT PK_BUDGET_MODULAR_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD);
ALTER TABLE BUDGET_MODULAR_IDC ADD CONSTRAINT PK_BUDGET_MODULAR_IDC_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,RATE_NUMBER);
ALTER TABLE EPS_PROP_COST_SHARING ADD CONSTRAINT PK_EPS_PROP_COST_SHARING_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER,COST_SHARE_ID);
ALTER TABLE BUDGET_PROJECT_INCOME ADD CONSTRAINT PK_BUDGET_PROJECT_INCOME_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER,PROJECT_INCOME_ID);
ALTER TABLE EPS_PROP_IDC_RATE ADD CONSTRAINT PK_EPS_PROP_IDC_RATE_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,BUDGET_VERSION_NUMBER,UNRECOVERED_FNA_ID);
ALTER TABLE EPS_PROPOSAL_BUDGET_STATUS ADD CONSTRAINT EPS_PROPOSAL_BUDGET_STATUS_P1 PRIMARY KEY (
	PROPOSAL_NUMBER);
ALTER TABLE BUDGET_PERIODS ADD CONSTRAINT PK_BUDGET_PERIOD_KRA PRIMARY KEY (
	BUDGET_PERIOD_NUMBER);
ALTER TABLE BUDGET_PERSONNEL_DETAILS ADD CONSTRAINT PK_BUDGET_PERSONNEL_DET_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER,PERSON_NUMBER);
ALTER TABLE BUDGET_DETAILS ADD CONSTRAINT PK_BUDGET_DETAILS_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,BUDGET_PERIOD,LINE_ITEM_NUMBER);
ALTER TABLE EPS_PROP_YNQ ADD CONSTRAINT PK_EPS_PROP_YNQ_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,QUESTION_ID);
ALTER TABLE BUDGET ADD CONSTRAINT PK_BUDGET_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER);
ALTER TABLE NOTIFICATIONS ADD CONSTRAINT NOTIFICATIONS_PK PRIMARY KEY (
	ID);
ALTER TABLE PROPOSAL_STATE ADD CONSTRAINT PROPOSAL_STATE_P1 PRIMARY KEY (
	STATE_TYPE_CODE);
ALTER TABLE SCIENCE_KEYWORD ADD CONSTRAINT SCIENCE_KEYWORD_TP1 PRIMARY KEY (
	SCIENCE_KEYWORD_CODE);
ALTER TABLE MAIL_BY ADD CONSTRAINT MAIL_BY_P1 PRIMARY KEY (
	MAIL_BY_CODE);
ALTER TABLE ORGANIZATION ADD CONSTRAINT PK_ORGANIZATION_KRA PRIMARY KEY (
	ORGANIZATION_ID);
ALTER TABLE PERSON ADD CONSTRAINT PK_PERSON_KRA PRIMARY KEY (
	PERSON_ID);
ALTER TABLE USER_ROLES ADD CONSTRAINT PK_USER_ROLES PRIMARY KEY (
	USER_ID,ROLE_ID,UNIT_NUMBER);
ALTER TABLE ROLE ADD CONSTRAINT PK_ROLE_KRA PRIMARY KEY (
	ROLE_ID);
ALTER TABLE UNIT_ACL ADD CONSTRAINT PK_UNIT_ACL_KRA PRIMARY KEY (
	ID);
ALTER TABLE PROP_ROLE_TEMPLATE ADD CONSTRAINT PK_PROP_ROLE_TEMPLATE_KRA PRIMARY KEY (
	ID);
ALTER TABLE PERSON_EDITABLE_FIELDS ADD CONSTRAINT PERSON_EDITABLE_FIELDS_P1 PRIMARY KEY (
	FIELD_NAME);
ALTER TABLE INSTITUTE_LA_RATES ADD CONSTRAINT PK_INSTITUTE_LA_RATES_KRA PRIMARY KEY (
	UNIT_NUMBER,RATE_CLASS_CODE,RATE_TYPE_CODE,FISCAL_YEAR,START_DATE,ON_OFF_CAMPUS_FLAG);
ALTER TABLE INSTITUTE_RATES ADD CONSTRAINT PK_INST_RATES_KRA PRIMARY KEY (
	RATE_CLASS_CODE,RATE_TYPE_CODE,ACTIVITY_TYPE_CODE,FISCAL_YEAR,START_DATE,ON_OFF_CAMPUS_FLAG,UNIT_NUMBER);
ALTER TABLE COST_ELEMENT ADD CONSTRAINT PK_COST_ELEMENT_KRA PRIMARY KEY (
	COST_ELEMENT);
ALTER TABLE NOTIFICATION_CHANNELS ADD CONSTRAINT NOTIFICATION_CHANNELS_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_CHANNEL_PRODUCERS ADD CONSTRAINT NOTIFICATION_CHANNEL_PROD_PK PRIMARY KEY (
	CHANNEL_ID,PRODUCER_ID);
ALTER TABLE NOTIFICATION_MSG_DELIVS ADD CONSTRAINT NOTIFICATION_MSG_DELIVS_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_PRIORITIES ADD CONSTRAINT NOTIFICATION_PRIORITY_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_PRODUCERS ADD CONSTRAINT NOTIFICATION_PRODUCER_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_RECIPIENTS ADD CONSTRAINT NOTIFICATION_RECIPIENTS_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_RECIPIENTS_LISTS ADD CONSTRAINT NOTIFICATION_RECIPIENTS_L_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_REVIEWERS ADD CONSTRAINT NOTIFICATION_REVIEWERS_PK PRIMARY KEY (
	ID);
ALTER TABLE NOTIFICATION_SENDERS ADD CONSTRAINT NOTIFICATION_SENDER_PK PRIMARY KEY (
	ID);
ALTER TABLE RECIPIENT_PREFERENCES ADD CONSTRAINT RECIPIENT_PREFERENCES_PK PRIMARY KEY (
	ID);
ALTER TABLE USER_CHANNEL_SUBSCRIPTIONS ADD CONSTRAINT USER_CHANNEL_SUBSCRIPTION_PK PRIMARY KEY (
	ID);
ALTER TABLE USER_DELIVERER_CONFIG ADD CONSTRAINT USER_DELIVERER_CONFIG_PK PRIMARY KEY (
	ID);
ALTER TABLE TRV_DOC_2 ADD CONSTRAINT TRV_DOC_2P1 PRIMARY KEY (
	FDOC_NBR);
ALTER TABLE TRV_ACCT ADD CONSTRAINT TRV_ACCT_PK PRIMARY KEY (
	ACCT_NUM);
ALTER TABLE TRV_DOC_ACCT ADD CONSTRAINT TRV_DOC_ACCT_PK PRIMARY KEY (
	DOC_HDR_ID,ACCT_NUM);
ALTER TABLE TRV_ACCT_FO ADD CONSTRAINT TRV_ACCT_FO_ID_PK PRIMARY KEY (
	ACCT_FO_ID);
ALTER TABLE TRAV_DOC_2_ACCOUNTS ADD CONSTRAINT TRAV_DOC_2_ACCOUNTS_P1 PRIMARY KEY (
	FDOC_NBR,ACCT_NUM);
ALTER TABLE TRV_ACCT_EXT ADD CONSTRAINT TRV_ACCT_TYPE_P1 PRIMARY KEY (
	ACCT_NUM,ACCT_TYPE);
ALTER TABLE PROPOSAL_INV_CERTIFICATION ADD CONSTRAINT PROPOSAL_INV_CERTIFICATION_N3 PRIMARY KEY (
	PROPOSAL_NUMBER,PROP_PERSON_NUMBER);
ALTER TABLE VALID_SP_REV_APPROVAL ADD CONSTRAINT PK_VALID_SP_REV_APPROVAL_KRA PRIMARY KEY (
	SPECIAL_REVIEW_CODE,APPROVAL_TYPE_CODE);
ALTER TABLE YNQ ADD CONSTRAINT PK_YNQ_KRA PRIMARY KEY (
	QUESTION_ID);
ALTER TABLE PROPOSAL_RESPONSE ADD CONSTRAINT PROPOSAL_RESPONSE_P1 PRIMARY KEY (
	PROPOSAL_RESPONSE_CODE);
ALTER TABLE NOTICE_OF_OPPORTUNITY ADD CONSTRAINT NOTICE_OF_OPPORTUNITY_TP1 PRIMARY KEY (
	NOTICE_OF_OPPORTUNITY_CODE);
ALTER TABLE RATE_CLASS ADD CONSTRAINT PK_RATE_CLASS_KRA PRIMARY KEY (
	RATE_CLASS_CODE);
ALTER TABLE SPECIAL_REVIEW ADD CONSTRAINT SPECIAL_REVIEW_P1 PRIMARY KEY (
	SPECIAL_REVIEW_CODE);
ALTER TABLE UNIT ADD CONSTRAINT PK_UNIT_KRA PRIMARY KEY (
	UNIT_NUMBER);
ALTER TABLE ROLODEX ADD CONSTRAINT PK_ROLODEX_KRA PRIMARY KEY (
	ROLODEX_ID);
ALTER TABLE SH_ATT_T ADD CONSTRAINT SH_ATT_TP1 PRIMARY KEY (
	NTE_ID);
ALTER TABLE SH_LOCK_T ADD CONSTRAINT SH_LOCK_TP1 PRIMARY KEY (
	TRN_SMPHR_TYP_CD,TRN_SMPHR_ID);
ALTER TABLE SH_LOCK_TYP_DESC_T ADD CONSTRAINT SH_LOCK_TYP_DESC_TP1 PRIMARY KEY (
	TRN_SMPHR_TYP_CD);
ALTER TABLE SH_NTE_T ADD CONSTRAINT SH_NTE_TP1 PRIMARY KEY (
	NTE_ID);
ALTER TABLE SH_NTE_TYP_T ADD CONSTRAINT SH_NTE_TYP_TP1 PRIMARY KEY (
	NTE_TYP_CD);
ALTER TABLE SH_PARM_DTL_TYP_T ADD CONSTRAINT SH_PARM_DTL_TYP_TP1 PRIMARY KEY (
	SH_PARM_NMSPC_CD,SH_PARM_DTL_TYP_CD);
ALTER TABLE SH_PARM_NMSPC_T ADD CONSTRAINT SH_PARM_NMSPC_TP1 PRIMARY KEY (
	SH_PARM_NMSPC_CD);
ALTER TABLE SH_PARM_T ADD CONSTRAINT SH_PARM_TP1 PRIMARY KEY (
	SH_PARM_NMSPC_CD,SH_PARM_NM);
ALTER TABLE SH_PARM_TYP_T ADD CONSTRAINT SH_PARM_TYP_TP1 PRIMARY KEY (
	SH_PARM_TYP_CD);
ALTER TABLE SH_USR_PROP_T ADD CONSTRAINT SH_USR_PROP_TP1 PRIMARY KEY (
	PERSON_UNVL_ID,APPL_MOD_ID,USR_PROP_NM);
ALTER TABLE RIGHTS ADD CONSTRAINT PK_RIGHTS PRIMARY KEY (
	RIGHT_ID);
ALTER TABLE ROLE_RIGHTS ADD CONSTRAINT PK_ROLE_RIGHTS PRIMARY KEY (
	RIGHT_ID,ROLE_ID);
ALTER TABLE KNS_PESSIMISTIC_LOCK_T ADD CONSTRAINT KNS_PESSIMISTIC_LOCK_TP1 PRIMARY KEY (
	LOCK_ID);
ALTER TABLE OSP$EPS_PROP_PERSON_BIO_SOURCE ADD CONSTRAINT PK_EPS_PROP_PER_BIO_SOURCE_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,PERSON_ID,BIO_NUMBER);
ALTER TABLE OSP$PROPOSAL ADD CONSTRAINT PK_PROPOSAL_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,SEQUENCE_NUMBER);
ALTER TABLE OSP$PROPOSAL_ADMIN_DETAILS ADD CONSTRAINT PK_PROPOSAL_ADMIN_DETAILS_KRA PRIMARY KEY (
	DEV_PROPOSAL_NUMBER);
ALTER TABLE OSP$SPONSOR_HIERARCHY ADD CONSTRAINT PK_SPONSOR_HIERARCHY_OSP PRIMARY KEY (
	HIERARCHY_NAME,SPONSOR_CODE);
ALTER TABLE DOCUMENT_NEXTVALUE ADD CONSTRAINT PK_DOCUMENT_NEXTVALUE PRIMARY KEY (
	DOCUMENT_NUMBER,PROPERTY_NAME);
ALTER TABLE CUSTOM_ATTRIBUTE ADD CONSTRAINT CUSTOM_ATTRIBUTE_P1 PRIMARY KEY (
	ID);
ALTER TABLE CUSTOM_ATTRIBUTE_DOC_VALUE ADD CONSTRAINT CUSTOM_ATTRIBUTE_DOC_VALUE_P1 PRIMARY KEY (
	DOCUMENT_NUMBER,CUSTOM_ATTRIBUTE_ID);
ALTER TABLE CUSTOM_ATTRIBUTE_DOCUMENT ADD CONSTRAINT CUSTOM_ATTRIBUTE_DOCUMENT_P1 PRIMARY KEY (
	DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID);
ALTER TABLE UNIT_ADMINISTRATOR ADD CONSTRAINT PK_UNIT_ADMINISTRATOR_KRA PRIMARY KEY (
	UNIT_NUMBER,PERSON_ID,UNIT_ADMINISTRATOR_TYPE_CODE);
ALTER TABLE SUBMISSION_HISTORY ADD CONSTRAINT SYS_C001371310 PRIMARY KEY (
	ID);
ALTER TABLE PERSON_DEGREE ADD CONSTRAINT PERSON_DEGREE_PK1 PRIMARY KEY (
	PERSON_ID,DEGREE_SEQUENCE_NUMBER);
ALTER TABLE ORGANIZATION_AUDIT ADD CONSTRAINT PK_ORGANIZATION_AUDIT_KRA PRIMARY KEY (
	ORGANIZATION_ID,FISCAL_YEAR);
ALTER TABLE ORGANIZATION_IDC ADD CONSTRAINT PK_ORGANIZATION_IDC_KRA PRIMARY KEY (
	ORGANIZATION_ID,IDC_NUMBER);
ALTER TABLE ORGANIZATION_YNQ ADD CONSTRAINT PK_ORGANIZATION_YNQ_KRA PRIMARY KEY (
	ORGANIZATION_ID,QUESTION_ID);
ALTER TABLE TBN ADD CONSTRAINT PK_TBN_KRA PRIMARY KEY (
	TBN_ID);
ALTER TABLE YNQ_EXPLANATION ADD CONSTRAINT PK_YNQ_EXPLANATION_KRA PRIMARY KEY (
	QUESTION_ID,EXPLANATION_TYPE);
ALTER TABLE BUDGET_SUB_AWARD_FILES ADD CONSTRAINT PK_BUDGET_SUB_AWARD_FILES_KRA PRIMARY KEY (
	PROPOSAL_NUMBER,VERSION_NUMBER,SUB_AWARD_NUMBER);
ALTER TABLE AWARD ADD CONSTRAINT PK_AWARD PRIMARY KEY (
	MIT_AWARD_NUMBER,SEQUENCE_NUMBER);