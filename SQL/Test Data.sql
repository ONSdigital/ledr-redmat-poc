-- ReDMaT CONFIGURATION TABLES

-- TABLE REDMAT_DATABASE
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRREF', 'LEDR Reference Data Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRDEV', 'LEDR Development Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRTST', 'LEDR Test Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRSTG', 'LEDR Staging Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRPPROD', 'LEDR Pre-Production Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRPPROD2', 'LEDR Pre-Production 2 Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRPPROD3', 'LEDR Pre-Production 3 Database');
INSERT INTO REDMAT_DATABASE	( DATABASE_ID, DESCRIPTION ) 
VALUES 						( 'LEDRPROD', 'LEDR Production Database');

-- TABLE REDMAT_ENVIRONMENT
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'RD_MASTER', 'LEDRREF', 'Master Reference Data Environment', 'MASTER', null );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'DEV', 'LEDRDEV', 'Development Environment', 'VIEWER', 'RD_MASTER' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'TEST', 'LEDRTST', 'Test Environment', 'VIEWER', 'RD_MASTER' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES							( 'RD_SLAVE1', 'LEDRSTG', 'Reference Data Slave 1', 'SLAVE', 'RD_MASTER' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'STAGING', 'LEDRSTG', 'Staging Environment', 'VIEWER', 'RD_SLAVE1' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'PREPROD', 'LEDRPPROD', 'Pre-Production Environment', 'VIEWER', 'RD_SLAVE1' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'PREPROD2', 'LEDRPPROD2', 'Pre-Production Environment 2', 'VIEWER', 'RD_SLAVE1' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'PREPROD3', 'LEDRPPROD3', 'Pre-Production Environment 3', 'VIEWER', 'RD_SLAVE1' );
INSERT INTO REDMAT_ENVIRONMENT	( ENVIRONMENT_ID, DATABASE_ID, DESCRIPTION, ENVIRONMENT_TYPE, DEFAULT_SOURCE_ID ) 
VALUES 							( 'PROD', 'LEDRPROD', 'Production Environment', 'SLAVE', 'RD_SLAVE1' );

-- TABLE REDMAT_SCHEMA
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'REF_DATA_MASTER','RD_MASTER', 'Owner of Master Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'COOKEL_APPS','DEV', 'Elle Cooks Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST0_APPS','TEST', 'ST0s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST1_APPS','TEST', 'ST1s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST2_APPS','TEST', 'ST2s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST3_APPS','TEST', 'ST3s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST4_APPS','TEST', 'ST4s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST5_APPS','TEST', 'ST5s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST6_APPS','TEST', 'ST6s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST7_APPS','TEST', 'ST7s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST8_APPS','TEST', 'ST8s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST9_APPS','TEST', 'ST9s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_ST10_APPS','TEST', 'ST10s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'REF_DATA_SLAVE1','RD_SLAVE1', 'Master Ref Data Slave 1' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_BAT5_APPS','STAGING', 'BAT5s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_BAT6_APPS','STAGING', 'BAT6s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_PPROD_APPS','PREPROD', 'PREPRODs Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_PPROD2_APPS','PREPROD2', 'PREPROD2s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_PPROD3_APPS','PREPROD3', 'PREPROD3s Ref Data' );
INSERT INTO REDMAT_SCHEMA	( SCHEMA_ID, ENVIRONMENT_ID, DESCRIPTION ) 
VALUES 						( 'LEDR_PROD_APPS','PROD', 'PRODs Ref Data' );

-- LEDR REFERENCE DATA TABLES

-- TABLE REFERENCE_DATA
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 1, 'Communal Establishment', 'EF_COMM_ESTABS', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 2, 'Country Classification', 'EF_HU_COUNTRY', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 3, 'Postcode Lookup', 'EF_NSPL_DATA', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 4, 'Places Names', 'EF_PLACE_NAMES', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 5, 'Character Replacement', 'EF_CHAR_REP', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 6, 'NS-SEC', 'EF_NS_SEC_LOOKUP', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 7, 'Occupation Lookup', 'EF_SOC_LOOKUP', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 8, 'SOC Tier Lookup', 'EF_SOC_TIERS', '?' );
INSERT INTO REFERENCE_DATA	( FILE_ID, DESCRIPTION, TABLE_NAME, SAY_SA_NAME ) 
VALUES 						( 10, 'Reg Districts', 'EF_REG_DISTRICTS', '?' );

-- TABLE REDMAT_SCHEMA_REFERENCE_DATA
-- For REF_DATA_MASTER
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 1, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 2, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 3, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 4, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 5, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 6, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 7, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 8, 'READY', '01-MAY-18', null, null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_MASTER', 10, 'READY', '01-MAY-18', null, null);

-- Dev User
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 1, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 2, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 3, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 4, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 5, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 6, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 7, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 8, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'COOKEL_APPS', 10, 'LINKED', '13-MAY-18', 'REF_DATA_MASTER', null);

-- Test User
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 1, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 2, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 3, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 4, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 5, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 6, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 7, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 8, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_ST0_APPS', 10, 'LINKED', '20-MAY-18', 'REF_DATA_MASTER', null);

-- Slave1
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 1, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 2, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 3, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 4, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 5, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 6, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 7, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 8, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'REF_DATA_SLAVE1', 10, 'COPIED', '20-MAY-18', null, 'REF_DATA_MASTER');

-- Staging User
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 1, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 2, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 3, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 4, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 5, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 6, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 7, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 8, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_BAT5_APPS', 10, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );

-- PreProd User
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 1, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 2, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 3, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 4, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 5, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 6, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 7, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 8, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PPROD_APPS', 10, 'LINKED', '20-MAY-18', 'REF_DATA_SLAVE1', null );

-- Prod User
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 1, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 2, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 3, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 4, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 5, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 6, 'COPIED', '20-MAY-18',null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 7, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 8, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );
INSERT INTO REDMAT_SCHEMA_REFERENCE_DATA( SCHEMA_ID, FILE_ID, STATUS, LAST_ACTIVITY_DATE, VIEW_OF_SCHEMA_ID, COPY_FROM_SCHEMA_ID ) 
VALUES 									( 'LEDR_PROD_APPS', 10, 'COPIED', '20-MAY-18', null, 'REF_DATA_SLAVE1' );

-- TABLE SCHEMA_REFERENCE_DATA_INSTANCE
-- Master
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 1, 2, '01-JAN-17', '31-DEC-17', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 1, 3, '01-JAN-18', '31-DEC-18', 'Comm Estabs 2018' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 3, 2, '01-JAN-18', '31-MAR-18', 'NSPL 2017 Q4' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_MASTER', 3, 3, '01-APR-18', '31-DEC-99', 'NSPL 2018 Q1' );

-- Dev
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 1, 2, '01-JAN-17', '31-DEC-17', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 1, 3, '01-JAN-18', '31-DEC-18', 'Comm Estabs 2018' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 3, 2, '01-JAN-18', '31-MAR-18', 'NSPL 2017 Q4' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'COOKEL_APPS', 3, 3, '01-APR-18', '31-DEC-99', 'NSPL 2018 Q1' );

-- Test
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 1, 2, '01-JAN-17', '31-DEC-17', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 1, 3, '01-JAN-18', '31-DEC-18', 'Comm Estabs 2018' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 3, 2, '01-JAN-18', '31-MAR-18', 'NSPL 2017 Q4' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_ST0_APPS', 3, 3, '01-APR-18', '31-DEC-99', 'NSPL 2018 Q1' );

-- Slave 1
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 1, 2, '01-JAN-17', '31-DEC-17', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 1, 3, '01-JAN-18', '31-DEC-18', 'Comm Estabs 2018' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 3, 2, '01-JAN-18', '31-MAR-18', 'NSPL 2017 Q4' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'REF_DATA_SLAVE1', 3, 3, '01-APR-18', '31-DEC-99', 'NSPL 2018 Q1' );

-- Staging
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_BAT5_APPS', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_BAT5_APPS', 1, 2, '01-JAN-17', '31-DEC-99', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_BAT5_APPS', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_BAT5_APPS', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_BAT5_APPS', 3, 2, '01-JAN-18', '31-DEC-99', 'NSPL 2017 Q4' );

-- Pre-Prod
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PPROD_APPS', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PPROD_APPS', 1, 2, '01-JAN-17', '31-DEC-99', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PPROD_APPS', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PPROD_APPS', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PPROD_APPS', 3, 2, '01-JAN-18', '31-DEC-99', 'NSPL 2017 Q4' );

-- Prod
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PROD_APPS', 1, 1, '01-JAN-01', '31-DEC-16', 'Comm Estabs 2016' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PROD_APPS', 1, 2, '01-JAN-17', '31-DEC-99', 'Comm Estabs 2017' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PROD_APPS', 2, 1, '01-JAN-01', '31-DEC-99', 'Country Codes' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PROD_APPS', 3, 1, '01-JAN-01', '31-DEC-17', 'NSPL 2017 Q3' );
INSERT INTO SCHEMA_REFERENCE_DATA_INSTANCE	( SCHEMA_ID, FILE_ID, INSTANCE_ID, EFFECTIVE_FROM, EFFECTIVE_TO, VERSION_TEXT ) 
VALUES 										( 'LEDR_PROD_APPS', 3, 2, '01-JAN-18', '31-DEC-99', 'NSPL 2017 Q4' );



-- SECURITY AND AUTHORISATION TABLES

-- TABLE REDMAT_ROLE
INSERT INTO REDMAT_ROLE	( ROLE_ID, DESCRIPTION ) 
VALUES 					( 'GLOBAL', 'Global Master Admin' );
INSERT INTO REDMAT_ROLE	( ROLE_ID, DESCRIPTION ) 
VALUES 					( 'LOCAL', 'Local Environment Admin' );
INSERT INTO REDMAT_ROLE	( ROLE_ID, DESCRIPTION ) 
VALUES 					( 'BUSINESS', 'Business Data Admin' );
INSERT INTO REDMAT_ROLE	( ROLE_ID, DESCRIPTION ) 
VALUES 					( 'REDMAT', 'ReDMaT Admin' );

-- TABLE REDMAT_PERMISSION
INSERT INTO REDMAT_PERMISSION	( PERMISSION_ID ,  DESCRIPTION   ) 
VALUES 							( 'Lgn','Login');
INSERT INTO REDMAT_PERMISSION	( PERMISSION_ID ,  DESCRIPTION   ) 
VALUES 							( 'VwLdLgs','View Load Logs');
INSERT INTO REDMAT_PERMISSION	( PERMISSION_ID ,  DESCRIPTION   ) 
VALUES 							( 'CrtSchm','Create Schema');
INSERT INTO REDMAT_PERMISSION	( PERMISSION_ID ,  DESCRIPTION   ) 
VALUES 							( 'PrpgtRfDt','Propogate Reference Data');
INSERT INTO REDMAT_PERMISSION	( PERMISSION_ID ,  DESCRIPTION   ) 
VALUES 							( 'EdRfrncDt','Propogate Reference Data');

-- TABLE REDMAT_ROLE_PERMISSION
-- Global
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'GLOBAL', 'Lgn');
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'GLOBAL', 'VwLdLgs');
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'GLOBAL', 'PrpgtRfDt');
-- Local
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'LOCAL', 'Lgn');
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'LOCAL', 'PrpgtRfDt');
-- Business
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'BUSINESS', 'Lgn');
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'BUSINESS', 'EdRfrncDt');
-- ReDMaT
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'REDMAT', 'Lgn');
INSERT INTO REDMAT_ROLE_PERMISSION	( ROLE_ID , PERMISSION_ID ) 
VALUES 								( 'REDMAT', 'CrtSchm');

-- TABLE REDMAT_USER
INSERT INTO REDMAT_USER	( USER_ID, DESCRIPTION, PASSWORD ) 
VALUES 					( 'ReDMaT_Admin', 'Reference Data Management Tool Admin', 's3cr3t' );
INSERT INTO REDMAT_USER	( USER_ID, DESCRIPTION, PASSWORD ) 
VALUES 					( 'Global_Master', 'Reference Data Master Admin', 's3cr3t' );
INSERT INTO REDMAT_USER	( USER_ID, DESCRIPTION, PASSWORD ) 
VALUES 					( 'COOKEL_APPS', 'Local Admin for Dev', null );
INSERT INTO REDMAT_USER	( USER_ID, DESCRIPTION, PASSWORD ) 
VALUES 					( 'MIKE', 'MIKE Business User', null );

-- TABLE REDMAT_ENVIRONMENT_USER_ROLE
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID ) 
VALUES 									( 'ReDMaT_Admin', 'REDMAT', 'RD_MASTER' );
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID ) 
VALUES 									( 'ReDMaT_Admin', 'REDMAT', 'DEV' );
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID )
VALUES 									( 'Global_Master', 'GLOBAL', 'RD_MASTER' );
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID )
VALUES 									( 'Global_Master', 'GLOBAL', 'DEV' );
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID ) 
VALUES 									( 'COOKEL_APPS', 'LOCAL', 'DEV' );
INSERT INTO REDMAT_ENVIRONMENT_USER_ROLE( USER_ID, ROLE_ID, ENVIRONMENT_ID ) 
VALUES 									( 'MIKE', 'BUSINESS', 'RD_MASTER' );

-- LOG TABLES
-- TABLE REFERENCE_DATA_LOAD_LOG
INSERT INTO REFERENCE_DATA_LOAD_LOG	( SCHEMA_ID, FILE_ID, INSTANCE_ID, FILE_NAME, VERSION_TEXT, EFFECTIVE_FROM, RECORDS_LOADED, USER_ID, USER_EMAIL, PSU_STATUS_ID, STARTED, ENDED )
VALUES 								( 'REF_DATA_MASTER', 3, 3, 'NSPL_FEB_2018_UK.csv', 'NSPL 2018 Q1', '01-JAN-18',  2512567, '?', 'pete.matthews@ons.gov.uk', 0, '13-FEB-18', '13-FEB-18' );
INSERT INTO REFERENCE_DATA_LOAD_LOG     ( SCHEMA_ID, FILE_ID, INSTANCE_ID, FILE_NAME, VERSION_TEXT, EFFECTIVE_FROM, RECORDS_LOADED, USER_ID, USER_EMAIL, PSU_STATUS_ID, STARTED, ENDED )
VALUES                                                          ( 'REF_DATA_MASTER', 2, 2, 'NSPL_FEB_2018_UK.csv', 'NSPL 2018 Q1', '03-JAN-18',  2345678, '?', 'ella.cook@ons.gov.uk', 2, '15-FEB-18', '15-FEB-18' );
INSERT INTO REFERENCE_DATA_LOAD_LOG     ( SCHEMA_ID, FILE_ID, INSTANCE_ID, FILE_NAME, VERSION_TEXT, EFFECTIVE_FROM, RECORDS_LOADED, USER_ID, USER_EMAIL, PSU_STATUS_ID, STARTED, ENDED )
VALUES                                                          ( 'REF_DATA_MASTER', 1, 1, 'NSPL_FEB_2018_UK.csv', 'NSPL 2018 Q1', '02-JAN-18',  1234567, '?', 'kieran.wardle@ons.gov.uk', 1, '14-FEB-18', '14-FEB-18' );
-- TABLE REDMAT_ACTIVITY_LOG
INSERT INTO REDMAT_ACTIVITY_LOG	( USER_ID, PERMISSION_ID, TIMESTAMP, INFORMATION ) 
VALUES 							( 'ReDMaT_Admin', 'Lgn', '20-MAY-18', 'ReDMaT Admin Logged In' );
