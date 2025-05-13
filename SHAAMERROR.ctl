-- |  $Header: fusionapps/fin/je/bin/SHAAMERROR.ctl /st_fusionapps_pt-v2mib/1 2020/01/16 20:56:29 jenchen Exp $|
-- +=========================================================================+
-- |  Copyright (c) 1989 Oracle Corporation Belmont, California, USA         |
-- |                          All rights reserved.                           |
-- |=========================================================================+
-- |  Name:
-- |  SHAAMERROR.ctl (SQL*Loader Control file)
-- |
-- |  Description:
-- | 
-- |  This control file loads the data from the file sent by authorities 
-- |  named SHAAMERROR.dat
-- |
-- |
-- |  History:
-- |  21-Dec-2019  Mallika Kandula  Initial Version   
-- |
-- +==================================================================+
LOAD DATA
CHARACTERSET IW8ISO8859P8
--infile 'SHAAMERROR.dat'
APPEND
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1)= 'F' 
(CONTEXT_REQUEST_ID            constant  '#LOADREQUESTID#',
 LOAD_REQUEST_ID                constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM'  ,
 INFO_CHAR1                    constant 'SHAAMERROR',
 INFO_CHAR2                    POSITION(01:01),
 INFO_NUMBER1                  POSITION(02:14),
 INFO_CHAR5                    POSITION(15:23),      -- TAXPAYER_ID
 INFO_CHAR6                    POSITION(24:32),      --TIK_METUKAN_MAAM
 INFO_CHAR11                   POSITION(33:60),      -- ERROR_REASON
 INFO_CHAR13                    POSITION(61:62),      -- Eror Code
 INFO_CHAR14                    POSITION(63:84),      -- Supplier Name at Tax Authority
 INFO_CHAR15                    POSITION(85:106),     -- Supplier Name on Tax Registration
 INFO_CHAR16                   POSITION(107:115),    -- Suggested File1
 INFO_CHAR17                   POSITION(116:137),    -- Suggested Name 1
 INFO_CHAR18                   POSITION(138:146),    -- Suggested File Number 2
 INFO_CHAR19                   POSITION(147:168),    -- Suggested Name 2
 INFO_CHAR31                   POSITION(170:203),     --Supplier Name
 INFO_CHAR46                   POSITION(204:650),     -- filler 
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1)= 'A' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM'  ,
 INFO_CHAR1                    constant 'SHAAMERROR',
 INFO_CHAR2                    POSITION(01:01),
 INFO_CHAR3                    POSITION(02:10),
 INFO_CHAR46                   POSITION(11:500),     --Filler
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant  '#LASTUPDATEDBY#'
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1)= 'Z' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM'  ,
 INFO_CHAR1                    constant 'SHAAMERROR',
 INFO_CHAR2                    POSITION(01:01),
 INFO_CHAR3                    POSITION(02:10),
 INFO_CHAR46                   POSITION(11:500),     --Filler 
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant  '#LASTUPDATEDBY#'
)
