/*
Created: 01/05/2018
Modified: 14/05/2018
Project: Reference Data Management Tool
Model: Oracle 12c
Author: Peter Miller
Version: 0.1
Database: Oracle 12c
*/


-- Create tables section -------------------------------------------------

-- Table ENVIRONMENT

CREATE TABLE "ENVIRONMENT"(
  "ENVIRONMENT_ID" Varchar2(32 ) NOT NULL,
  "DATABASE_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL,
  "Environment_Type" Varchar2(32 ) NOT NULL,
  "DEFAULT_SOURCE_ID" Varchar2(32 )
)
/

-- Add keys for table ENVIRONMENT

ALTER TABLE "ENVIRONMENT" ADD CONSTRAINT "Key1" PRIMARY KEY ("ENVIRONMENT_ID")
/

ALTER TABLE "ENVIRONMENT" ADD CONSTRAINT "ID" UNIQUE ("ENVIRONMENT_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ENVIRONMENT" IS 'An Environment that is used by a specific group of people for a specific purpose, in the context of Reference Data.

They reside within a specific Database. A Database may support zero, one or many Environments.

ENVIRONMENT_TYPE
There are 3 Types of Environments (Values for Environment_Type) and there are rules associated with them

1) MASTER - This Envrionment is THE MASTER LEDR Reference Data Environment. The LEDR Reference Data files are only loaded into this Environment. The Talend J200 job must only load into this Environment. The Reference Data itself is only maintained (Created/Edited/Deleted) here. There must be only 1 MASTER Environment. It contains ALL versions of ALL LEDR Reference Data. The MASTER Environment can only have 1 SCHEMA and it must be called REF_DATA_MASTER - which is reserved and also unique. The BUSINESS_DATA_ADMIN role works solely against the MASTER Environment.

2) SLAVE - This Environment contains full or partial duplicate copy of the Reference data. The copies can be sourced from the MASTER (see above) or another SLAVE (so they can be daisy chained if needs be). A SLAVE copies the Reference data from a Source (MASTER or SLAVE) when instructed to by a User of ReDMaT with the right Role and Permissions. A SLAVE can contain copies of one or more of the Reference Data tables of the Source. It does NOT necessarily have to have a copy of ALL of the Reference Tables - it is not mandatory. Some of the Reference Data tables can be Linked (i.e. use remote data). If it doesn''t have any local copies of any Reference Data then it is not a SLAVE. A SLAVE Environment can only have 1 SCHEMA. It''s name should have _SLAVE  at the end, and it must be unique.

3) VIEWER - This Environment remotely accesses Reference Data in another Environment. This is the normal ENVIRONMENT_TYPE for a LEDR instance

Ideally MASTER exists in it''s own Database Instance, so that it can be backed up independently and other database restores do not affect it. SLAVEs can have their own Database or co-exist alongside VIEWERs. Co-existance  in the same Database, as a VIEWER environment, means indexes can be used.

DEFAULT_SOURCE_ID
SLAVE and VIEWER Environments must have a DEFAULT_SOURCE_ID - this is the ENVIRONMENT from which they will copy/access the Reference Data for all new Schemas identified within them, as a default. This default can be changed to suit the needs of the Schema and the Reference Data (see SCHEMA_REFERENCE_DATA - view_of and copy_from fields. MASTER has no DEFAULT_SOURCE_ID - it is blank.

Creating a new ENVIRONMENT should add a row to ENVIRONMENT_USER_ROLE, identifying the new Envrionment as under the Role of GLOBAL_MASTER_ADMIN to User ''ReDMaP_Admin'' - so that the SuperUser has full control of it ( it should be added by ''ReDMaP_Admin'' anyway).

'
/
COMMENT ON COLUMN "ENVIRONMENT"."ENVIRONMENT_ID" IS 'Identifier - the database name'
/
COMMENT ON COLUMN "ENVIRONMENT"."Description" IS 'Logical description of the Environment i.e. Dev, Test, Staging, PreProd, Prod'
/
COMMENT ON COLUMN "ENVIRONMENT"."DEFAULT_SOURCE_ID" IS 'Environment ID of Master/Reference'
/

-- Table SCHEMA

CREATE TABLE "SCHEMA"(
  "SCHEMA_ID" Varchar2(32 ) NOT NULL,
  "ENVIRONMENT_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL
)
/

-- Add keys for table SCHEMA

ALTER TABLE "SCHEMA" ADD CONSTRAINT "Key2" PRIMARY KEY ("SCHEMA_ID")
/

ALTER TABLE "SCHEMA" ADD CONSTRAINT "ID" UNIQUE ("SCHEMA_ID")
/

-- Table and Columns comments section

COMMENT ON COLUMN "SCHEMA"."SCHEMA_ID" IS 'Name of Schema i.e. LEDR_ST0_APP'
/
COMMENT ON COLUMN "SCHEMA"."ENVIRONMENT_ID" IS 'Foreign Key pointing to  Database where Schema resides'
/
COMMENT ON COLUMN "SCHEMA"."Description" IS 'Name of User or Schema purpose'
/

-- Table ReDMaT_USER

CREATE TABLE "ReDMaT_USER"(
  "USER_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL,
  "Password" Varchar2(16 )
)
/

-- Add keys for table ReDMaT_USER

ALTER TABLE "ReDMaT_USER" ADD CONSTRAINT "USER_ID_PK" PRIMARY KEY ("USER_ID")
/

ALTER TABLE "ReDMaT_USER" ADD CONSTRAINT "USER_ID" UNIQUE ("USER_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ReDMaT_USER" IS 'A User of the Reference Data Management Tool - aka The System

Could be identified by the Active Directory User ID, or could be a Generic User

The SuperUser who sets up the other Users is called ''ReDMaT_Admin'' - this will exist by default'
/
COMMENT ON COLUMN "ReDMaT_USER"."USER_ID" IS 'Could be User Domain ID'
/
COMMENT ON COLUMN "ReDMaT_USER"."Password" IS 'Password for ReDMaT User  - should be enctypted

Minimum 8 alphanumeic characters in length, maximum of 16

Must have 1 numeric, and 1 capital letter

Does not expire'
/

-- Table ReDMaT_ROLE

CREATE TABLE "ReDMaT_ROLE"(
  "ROLE_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL
)
/

-- Add keys for table ReDMaT_ROLE

ALTER TABLE "ReDMaT_ROLE" ADD CONSTRAINT "Key4" PRIMARY KEY ("ROLE_ID")
/

ALTER TABLE "ReDMaT_ROLE" ADD CONSTRAINT "ID" UNIQUE ("ROLE_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ReDMaT_ROLE" IS 'Table that holds the ReDMaT Roles
- GLOBAL_MASTER_ADMIN
- BUSINESS_DATA_ADMIN
- LOCAL_ENVIRONMENT_ADMIN'
/

-- Table DATABASE

CREATE TABLE "DATABASE"(
)
/

-- Table ENVIRONMENT_USER_ROLE

CREATE TABLE "ENVIRONMENT_USER_ROLE"(
  "USER_ID" Varchar2(32 ) NOT NULL,
  "ROLE_ID" Varchar2(32 ) NOT NULL,
  "ENVIRONMENT_ID" Varchar2(32 ) NOT NULL
)
/

-- Add keys for table ENVIRONMENT_USER_ROLE

ALTER TABLE "ENVIRONMENT_USER_ROLE" ADD CONSTRAINT "Key6" PRIMARY KEY ("USER_ID","ROLE_ID","ENVIRONMENT_ID")
/

-- Table SCHEMA_REFERENCE_DATA

CREATE TABLE "SCHEMA_REFERENCE_DATA"(
  "SCHEMA_ID" Varchar2(32 ) NOT NULL,
  "FILE_ID" Number NOT NULL,
  "Status" Varchar2(32 ) NOT NULL,
  "Last_Activity_Date" Date NOT NULL,
  "View_Of_Schema_ID" Varchar2(32 ),
  "Copy_From_Schema_ID" Varchar2(32 )
)
/

-- Add keys for table SCHEMA_REFERENCE_DATA

ALTER TABLE "SCHEMA_REFERENCE_DATA" ADD CONSTRAINT "Key8" PRIMARY KEY ("SCHEMA_ID","FILE_ID")
/

-- Table REFERENCE_DATA

CREATE TABLE "REFERENCE_DATA"(
  "FILE_ID" Number NOT NULL,
  "Description" Varchar2(100 ) NOT NULL,
  "Table_Name" Varchar2(32 ) NOT NULL,
  "SAY_SA_NAME" Char(20 )
)
/

-- Add keys for table REFERENCE_DATA

ALTER TABLE "REFERENCE_DATA" ADD CONSTRAINT "Key9" PRIMARY KEY ("FILE_ID")
/

ALTER TABLE "REFERENCE_DATA" ADD CONSTRAINT "File_ID" UNIQUE ("FILE_ID")
/

ALTER TABLE "REFERENCE_DATA" ADD CONSTRAINT "TABLE_NAME" UNIQUE ("Table_Name")
/

-- Table and Columns comments section

COMMENT ON TABLE "REFERENCE_DATA" IS 'Known as EXTERNAL_FILE_LIST in LEDR
'
/
COMMENT ON COLUMN "REFERENCE_DATA"."FILE_ID" IS 'LEDR specific number that Identifies the File Type'
/
COMMENT ON COLUMN "REFERENCE_DATA"."SAY_SA_NAME" IS 'LEDR specific'
/

-- Table SCHEMA_REFERENCE_DATA_INSTANCE

CREATE TABLE "SCHEMA_REFERENCE_DATA_INSTANCE"(
  "SCHEMA_ID" Varchar2(32 ) NOT NULL,
  "FILE_ID" Number NOT NULL,
  "INSTANCE_ID" Number NOT NULL,
  "Effective_From" Date NOT NULL,
  "Effective_To" Date NOT NULL,
  "Version_Text" Varchar2(100 ) NOT NULL
)
/

-- Add keys for table SCHEMA_REFERENCE_DATA_INSTANCE

ALTER TABLE "SCHEMA_REFERENCE_DATA_INSTANCE" ADD CONSTRAINT "Key10" PRIMARY KEY ("INSTANCE_ID","SCHEMA_ID","FILE_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "SCHEMA_REFERENCE_DATA_INSTANCE" IS 'Known as EXTERNAL_FILE in LEDR, but with the addition of a SCHEMA_REFERENCE_DATA attribute'
/

-- Table ReDMaT_PERMISSION

CREATE TABLE "ReDMaT_PERMISSION"(
  "PERMISSION_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL
)
/

-- Add keys for table ReDMaT_PERMISSION

ALTER TABLE "ReDMaT_PERMISSION" ADD CONSTRAINT "Key11" PRIMARY KEY ("PERMISSION_ID")
/

ALTER TABLE "ReDMaT_PERMISSION" ADD CONSTRAINT "ID" UNIQUE ("PERMISSION_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ReDMaT_PERMISSION" IS 'Table that holds the ReDMaT Permissions. Micro commands within the Tool that are granted to the different ROLES

Examples
- View Reference Data Load Logs
- View Schema Reference Data Instances
- Change Schema Reference Data Instance Effective Date
- Promote Master Data Instance to Schema
- Create New Environment
- Create New Schema
- Create Default Data for New Schema
- Couple Schema to Source (build synonyms/views)

These permissions need to be granted to the Role for specific functions to be enabled and work within the Tool. Users will need to have the Role assocaited to them.

'
/

-- Table ROLE_PERMISSION

CREATE TABLE "ROLE_PERMISSION"(
  "ROLE_ID" Varchar2(32 ) NOT NULL,
  "PERMISSION_ID" Varchar2(32 ) NOT NULL
)
/

-- Add keys for table ROLE_PERMISSION

ALTER TABLE "ROLE_PERMISSION" ADD CONSTRAINT "Key12" PRIMARY KEY ("PERMISSION_ID","ROLE_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ROLE_PERMISSION" IS 'Table to associate one or more Permissions to one or more Roles'
/

-- Table DATABASE

CREATE TABLE "DATABASE"(
  "DATABASE_ID" Varchar2(32 ) NOT NULL,
  "Description" Varchar2(256 ) NOT NULL
)
/

-- Add keys for table DATABASE

ALTER TABLE "DATABASE" ADD CONSTRAINT "Key13" PRIMARY KEY ("DATABASE_ID")
/

ALTER TABLE "DATABASE" ADD CONSTRAINT "DATABASE_ID" UNIQUE ("DATABASE_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "DATABASE" IS 'Actual Databases suporting LEDR that host the reference data'
/
COMMENT ON COLUMN "DATABASE"."DATABASE_ID" IS 'Oracle SID'
/

-- Table REFERENCE_DATA_LOAD_LOG

CREATE TABLE "REFERENCE_DATA_LOAD_LOG"(
  "SCHEMA_ID" Varchar2(32 ) NOT NULL,
  "FILE_ID" Number NOT NULL,
  "INSTANCE_ID" Number NOT NULL,
  "File_Name" Varchar2(256 ) NOT NULL,
  "Version_Text" Varchar2(256 ) NOT NULL,
  "Effective_From" Date NOT NULL,
  "Records_Loaded" Number NOT NULL,
  "User_ID" Varchar2(64 ) NOT NULL,
  "User_EMail" Varchar2(128 ) NOT NULL,
  "PSU_Status_ID" Number NOT NULL,
  "Started" Date NOT NULL,
  "Ended" Date
)
/

-- Add keys for table REFERENCE_DATA_LOAD_LOG

ALTER TABLE "REFERENCE_DATA_LOAD_LOG" ADD CONSTRAINT "Key14" PRIMARY KEY ("INSTANCE_ID","SCHEMA_ID","FILE_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "REFERENCE_DATA_LOAD_LOG" IS 'Same as PL_REF_DATA_LOAD'
/

-- Table ReDMaT_ACTIVITY_LOG

CREATE TABLE "ReDMaT_ACTIVITY_LOG"(
  "USER_ID" Varchar2(32 ) NOT NULL,
  "PERMISSION_ID" Varchar2(32 ) NOT NULL,
  "Timestamp" Date NOT NULL,
  "Information" Varchar2(2000 )
)
/

-- Add keys for table ReDMaT_ACTIVITY_LOG

ALTER TABLE "ReDMaT_ACTIVITY_LOG" ADD CONSTRAINT "Key15" PRIMARY KEY ("PERMISSION_ID","USER_ID")
/

-- Table and Columns comments section

COMMENT ON TABLE "ReDMaT_ACTIVITY_LOG" IS 'A table to store ReDMaT activity performed by Users
i.e.
log in
create schema
build schema links
copy data to Slave
promote ref data instance 

etc'
/

-- Create relationships section ------------------------------------------------- 

ALTER TABLE "SCHEMA" ADD CONSTRAINT "Contains" FOREIGN KEY ("ENVIRONMENT_ID") REFERENCES "ENVIRONMENT" ("ENVIRONMENT_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA" ADD CONSTRAINT "Realises" FOREIGN KEY ("SCHEMA_ID") REFERENCES "SCHEMA" ("SCHEMA_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA" ADD CONSTRAINT "View" FOREIGN KEY ("View_Of_Schema_ID") REFERENCES "SCHEMA" ("SCHEMA_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA" ADD CONSTRAINT "Copy" FOREIGN KEY ("Copy_From_Schema_ID") REFERENCES "SCHEMA" ("SCHEMA_ID")
/

ALTER TABLE "ROLE_PERMISSION" ADD CONSTRAINT "Granted" FOREIGN KEY ("ROLE_ID") REFERENCES "ReDMaT_ROLE" ("ROLE_ID")
/

ALTER TABLE "ROLE_PERMISSION" ADD CONSTRAINT "Allows" FOREIGN KEY ("PERMISSION_ID") REFERENCES "ReDMaT_PERMISSION" ("PERMISSION_ID")
/

ALTER TABLE "ENVIRONMENT_USER_ROLE" ADD CONSTRAINT "Supports" FOREIGN KEY ("USER_ID") REFERENCES "ReDMaT_USER" ("USER_ID")
/

ALTER TABLE "ENVIRONMENT_USER_ROLE" ADD CONSTRAINT "Managed By" FOREIGN KEY ("ENVIRONMENT_ID") REFERENCES "ENVIRONMENT" ("ENVIRONMENT_ID")
/

ALTER TABLE "ENVIRONMENT_USER_ROLE" ADD CONSTRAINT "Performs" FOREIGN KEY ("ROLE_ID") REFERENCES "ReDMaT_ROLE" ("ROLE_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA_INSTANCE" ADD CONSTRAINT "Instance Of" FOREIGN KEY ("FILE_ID") REFERENCES "REFERENCE_DATA" ("FILE_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA_INSTANCE" ADD CONSTRAINT "Consists Of" FOREIGN KEY ("SCHEMA_ID") REFERENCES "SCHEMA" ("SCHEMA_ID")
/

ALTER TABLE "SCHEMA_REFERENCE_DATA" ADD CONSTRAINT "Implementation" FOREIGN KEY ("FILE_ID") REFERENCES "REFERENCE_DATA" ("FILE_ID")
/

ALTER TABLE "ENVIRONMENT" ADD CONSTRAINT "Hosts" FOREIGN KEY ("DATABASE_ID") REFERENCES "DATABASE" ("DATABASE_ID")
/

ALTER TABLE "ENVIRONMENT" ADD CONSTRAINT "Source For" FOREIGN KEY ("DEFAULT_SOURCE_ID") REFERENCES "ENVIRONMENT" ("ENVIRONMENT_ID")
/

ALTER TABLE "REFERENCE_DATA_LOAD_LOG" ADD CONSTRAINT "Details" FOREIGN KEY ("INSTANCE_ID", "SCHEMA_ID", "FILE_ID") REFERENCES "SCHEMA_REFERENCE_DATA_INSTANCE" ("INSTANCE_ID", "SCHEMA_ID", "FILE_ID")
/

ALTER TABLE "ReDMaT_ACTIVITY_LOG" ADD CONSTRAINT "By Whom" FOREIGN KEY ("USER_ID") REFERENCES "ReDMaT_USER" ("USER_ID")
/

ALTER TABLE "ReDMaT_ACTIVITY_LOG" ADD CONSTRAINT "Performed" FOREIGN KEY ("PERMISSION_ID") REFERENCES "ReDMaT_PERMISSION" ("PERMISSION_ID")
/


