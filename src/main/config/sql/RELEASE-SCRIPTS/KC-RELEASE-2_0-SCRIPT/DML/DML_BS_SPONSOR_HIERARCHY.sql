INSERT INTO SPONSOR_HIERARCHY (HIERARCHY_NAME,SPONSOR_CODE,LEVEL1,UPDATE_TIMESTAMP,UPDATE_USER,LEVEL1_SORTID,VER_NBR) 
VALUES ('NIH Multiple PI','000340','NIH Multiple PI','25-FEB-2010','KRADBA',1,1);

INSERT INTO SPONSOR_HIERARCHY (HIERARCHY_NAME,SPONSOR_CODE,LEVEL1,UPDATE_TIMESTAMP,UPDATE_USER,LEVEL1_SORTID,VER_NBR) 
VALUES ('NIH Multiple PI','000440','NIH Multiple PI','25-FEB-2010','KRADBA',1,1);

Delete FROM SPONSOR_HIERARCHY WHERE HIERARCHY_NAME IN('MIT Brown Book','Industry Type','Government Agency');

COMMIT;