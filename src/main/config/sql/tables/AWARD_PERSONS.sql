CREATE TABLE AWARD_PERSONS (
   AWARD_PERSON_ID number(22,0) NOT NULL,
   AWARD_ID NUMBER(22,0) NOT NULL,
   AWARD_NUMBER varchar2(10) NOT NULL,
   SEQUENCE_NUMBER number(4,0) NOT NULL,

   PERSON_ID varchar2(10),
   ROLODEX_ID decimal(6),
   FULL_NAME varchar2(90),
   CONTACT_ROLE_CODE varchar2(12) NOT NULL,
   KEY_PERSON_PROJECT_ROLE varchar2(60),
   
   ACADEMIC_YEAR_EFFORT number(5,2),
   CALENDAR_YEAR_EFFORT number(5,2),
   SUMMER_EFFORT number(5,2),
   TOTAL_EFFORT number(5,2),
   
   FACULTY_FLAG char(1) NOT NULL,
   
   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE AWARD_PERSONS ADD CONSTRAINT PK_AWARD_PERSONS PRIMARY KEY (AWARD_PERSON_ID);