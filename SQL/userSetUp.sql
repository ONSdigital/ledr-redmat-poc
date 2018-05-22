--create user c##ledrrdm identified by ledrrdm;
grant connect, resource, dba to c##ledrrdm;
alter session set current_schema = c##ledrrdm;
@/dbScript.sql
@/testData.sql

