create or replace view OSP$S2S_APP_ATTACHMENTS as 
	select CONTENT_ID,PROPOSAL_NUMBER,HASH_CODE,UPDATE_TIMESTAMP,UPDATE_USER,CONTENT_TYPE	
	from S2S_APP_ATTACHMENTS;