-- |  $Header: fusionapps/fin/je/bin/SHAAM.ctl /st_fusionapps_pt-v2mib/2 2023/03/01 22:55:07 jenchen Exp $|
-- +=========================================================================+
-- |  Copyright (c) 1989 Oracle Corporation Belmont, California, USA         |
-- |                          All rights reserved.                           |
-- |=========================================================================+
-- |  Name:
-- |  SHAAM.ctl (SQL*Loader Control file)
-- |
-- |  Description:
-- |  Shaam Interface Loader
-- |  This control file loads the data from the file sent by authorities 
-- |  named SHAAM.dat
-- |
-- |
-- |  History:
-- |  21-Dec-2019   Mallika Kandula        Initial Version
-- +==================================================================+
LOAD DATA
CHARACTERSET IW8ISO8859P8
--infile 'SHAAM.dat'
APPEND
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1) = 'B' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM',
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                   POSITION(01:01),                   --   CLASS                
 INFO_NUMBER1                 POSITION(02:14),                   --   VENDOR_NUMBER             
 INFO_CHAR31                  POSITION(15:36),                   --   VENDOR_NAME               
 INFO_CHAR5                   POSITION(37:45),                   --   TAXPAYER_ID               
 INFO_CHAR6                   POSITION(46:54),                   --   TIK_METUKAN_MAAM          Tax registration number     
 INFO_CHAR7                   POSITION(55:63),                   --   TIK_METUKAN_SHUTAFUT      partnership
 INFO_NUMBER5                 POSITION(64:64),                   --   WITHHOLDING_CERTIFICATE   
 INFO_NUMBER6                 POSITION(65:66),                   --   TAX_RATE CATEGIRY10                
 INFO_NUMBER7                 POSITION(67:68),                   --   TAX_RATE CATEGIRY20
 INFO_NUMBER8                 POSITION(69:70),                   --   TAX_RATE CATEGIRY30
 INFO_NUMBER9                 POSITION(71:72),                   --   TAX_RATE CATEGIRY40
 INFO_NUMBER10                POSITION(73:74),                   --   TAX_RATE CATEGIRY50
 INFO_NUMBER11                POSITION(75:75),                   --   BOOK_KEEPING_CERTIFICATE  
 INFO_NUMBER12                POSITION(76:83),                   --   START_DATE                
 INFO_NUMBER13                POSITION(84:91),                   --   END_DATE                  
 INFO_NUMBER14                POSITION(92:99),                   --   CREATION_DATE             
 INFO_NUMBER15                POSITION(100:112),                 --   SCUM_HAGBALA       Maximum credit amount       
 INFO_CHAR9                   POSITION(113:121),                 --   TAKEF_AVUR          valid code      
 INFO_CHAR12                  POSITION(122:161),                 --   TAKEF_AVUR_MELEL          valid code description
 INFO_CHAR8                   POSITION(162:170),                 --   MDV_TIK_ICUD_OSKIM   Merger Dealer Number     
 INFO_CHAR46                  POSITION(171:210),                 --   FILLER Tax Officer Number(2), Supplier Name, New/Old, Code
 INFO_NUMBER16                POSITION(211:218),                 --   Start Date (Authorization of Book Management)
 INFO_NUMBER17                POSITION(219:226),                 --   Completion Date (Authorization of Book Management)
 INFO_NUMBER18                POSITION(227:234),                 --   Date of Issuance Book Management Certificate
 INFO_NUMBER19                POSITION(235:236),                 --   Exemption Rate for Category 60 Rent
 INFO_CHAR10                  POSITION(237:237),                 --   Not in Use
 INFO_NUMBER20                POSITION(238:246),                 --   Entity Number
 INFO_CHAR47                  POSITION(247:650),                 --   FILLER
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'             
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1) = 'U' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM',
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                   POSITION(01:01),                   --   CLASS                
 INFO_NUMBER1                 POSITION(02:14),                   --   VENDOR_NUMBER             
 INFO_CHAR31                  POSITION(15:36),                   --   VENDOR_NAME               
 INFO_CHAR5                   POSITION(37:45),                   --   TAXPAYER_ID               
 INFO_CHAR6                   POSITION(46:54),                   --   TIK_METUKAN_MAAM          Tax registration number     
 INFO_CHAR7                   POSITION(55:63),                   --   TIK_METUKAN_SHUTAFUT      partnership
 INFO_NUMBER5                 POSITION(64:64),                   --   WITHHOLDING_CERTIFICATE   
 INFO_NUMBER6                 POSITION(65:66),                   --   TAX_RATE CATEGIRY10                
 INFO_NUMBER7                 POSITION(67:68),                   --   TAX_RATE CATEGIRY20
 INFO_NUMBER8                 POSITION(69:70),                   --   TAX_RATE CATEGIRY30
 INFO_NUMBER9                 POSITION(71:72),                   --   TAX_RATE CATEGIRY40
 INFO_NUMBER10                POSITION(73:74),                   --   TAX_RATE CATEGIRY50
 INFO_NUMBER11                POSITION(75:75),                   --   BOOK_KEEPING_CERTIFICATE  
 INFO_NUMBER12                POSITION(76:83),                   --   START_DATE                
 INFO_NUMBER13                POSITION(84:91),                   --   END_DATE                  
 INFO_NUMBER14                POSITION(92:99),                   --   CREATION_DATE             
 INFO_NUMBER15                POSITION(100:112),                 --   SCUM_HAGBALA       Maximum credit amount       
 INFO_CHAR9                   POSITION(113:121),                 --   TAKEF_AVUR          valid code      
 INFO_CHAR12                  POSITION(122:161),                 --   TAKEF_AVUR_MELEL          valid code description
 INFO_CHAR8                   POSITION(162:170),                 --   MDV_TIK_ICUD_OSKIM   Merger Dealer Number     
 INFO_CHAR46                  POSITION(171:210),                 --   FILLER       
 INFO_NUMBER16                POSITION(211:218),                 --   Start Date (Authorization of Book Management)
 INFO_NUMBER17                POSITION(219:226),                 --   Completion Date (Authorization of Book Management)
 INFO_NUMBER18                POSITION(227:234),                 --   Date of Issuance Book Management Certificate
 INFO_NUMBER19                POSITION(235:236),                 --   Exemption Rate for Category 60 Rent
 INFO_CHAR10                  POSITION(237:237),                 --   Not in Use
 INFO_NUMBER20                POSITION(238:246),                 --   Entity Number
 INFO_CHAR47                  POSITION(247:650),                 --   FILLER
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'             
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1) = 'C' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM',
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                   POSITION(01:01),                   --   CLASS                
 INFO_NUMBER1                 POSITION(02:14),                   --   VENDOR_NUMBER             
 INFO_CHAR31                  POSITION(15:36),                   --   VENDOR_NAME               
 INFO_CHAR5                   POSITION(37:45),                   --   TAXPAYER_ID               
 INFO_CHAR6                   POSITION(46:54),                   --   TIK_METUKAN_MAAM          Tax registration number     
 INFO_CHAR7                   POSITION(55:63),                   --   TIK_METUKAN_SHUTAFUT      partnership
 INFO_NUMBER5                 POSITION(64:64),                   --   WITHHOLDING_CERTIFICATE   
 INFO_NUMBER6                 POSITION(65:66),                   --   TAX_RATE CATEGIRY10                
 INFO_NUMBER7                 POSITION(67:68),                   --   TAX_RATE CATEGIRY20
 INFO_NUMBER8                 POSITION(69:70),                   --   TAX_RATE CATEGIRY30
 INFO_NUMBER9                 POSITION(71:72),                   --   TAX_RATE CATEGIRY40
 INFO_NUMBER10                POSITION(73:74),                   --   TAX_RATE CATEGIRY50
 INFO_NUMBER11                POSITION(75:75),                   --   BOOK_KEEPING_CERTIFICATE  
 INFO_NUMBER12                POSITION(76:83),                   --   START_DATE                
 INFO_NUMBER13                POSITION(84:91),                   --   END_DATE                  
 INFO_NUMBER14                POSITION(92:99),                   --   CREATION_DATE             
 INFO_NUMBER15                POSITION(100:112),                 --   SCUM_HAGBALA       Maximum credit amount       
 INFO_CHAR9                   POSITION(113:121),                 --   TAKEF_AVUR          valid code      
 INFO_CHAR12                  POSITION(122:161),                 --   TAKEF_AVUR_MELEL          valid code description
 INFO_CHAR8                   POSITION(162:170),                 --   MDV_TIK_ICUD_OSKIM   Merger Dealer Number     
 INFO_CHAR46                  POSITION(171:210),                 --   FILLER       
 INFO_NUMBER16                POSITION(211:218),                 --   Start Date (Authorization of Book Management)
 INFO_NUMBER17                POSITION(219:226),                 --   Completion Date (Authorization of Book Management)
 INFO_NUMBER18                POSITION(227:234),                 --   Date of Issuance Book Management Certificate
 INFO_NUMBER19                POSITION(235:236),                 --   Exemption Rate for Category 60 Rent
 INFO_CHAR10                  POSITION(237:237),                 --   Not in Use
 INFO_NUMBER20                POSITION(238:246),                 --   Entity Number
 INFO_CHAR47                  POSITION(247:650),                 --   FILLER
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'             
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1) = 'D' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM',
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                   POSITION(01:01),                   --   CLASS                
 INFO_NUMBER1                 POSITION(02:14),                   --   VENDOR_NUMBER             
 INFO_CHAR31                  POSITION(15:36),                   --   VENDOR_NAME               
 INFO_CHAR5                   POSITION(37:45),                   --   TAXPAYER_ID               
 INFO_CHAR6                   POSITION(46:54),                   --   TIK_METUKAN_MAAM          Tax registration number     
 INFO_CHAR7                   POSITION(55:63),                   --   TIK_METUKAN_SHUTAFUT      partnership
 INFO_NUMBER5                 POSITION(64:64),                   --   WITHHOLDING_CERTIFICATE   
 INFO_NUMBER6                 POSITION(65:66),                   --   TAX_RATE CATEGIRY10                
 INFO_NUMBER7                 POSITION(67:68),                   --   TAX_RATE CATEGIRY20
 INFO_NUMBER8                 POSITION(69:70),                   --   TAX_RATE CATEGIRY30
 INFO_NUMBER9                 POSITION(71:72),                   --   TAX_RATE CATEGIRY40
 INFO_NUMBER10                POSITION(73:74),                   --   TAX_RATE CATEGIRY50
 INFO_NUMBER11                POSITION(75:75),                   --   BOOK_KEEPING_CERTIFICATE  
 INFO_NUMBER12                POSITION(76:83),                   --   START_DATE                
 INFO_NUMBER13                POSITION(84:91),                   --   END_DATE                  
 INFO_NUMBER14                POSITION(92:99),                   --   CREATION_DATE             
 INFO_NUMBER15                POSITION(100:112),                 --   SCUM_HAGBALA       Maximum credit amount       
 INFO_CHAR9                   POSITION(113:121),                 --   TAKEF_AVUR          valid code      
 INFO_CHAR12                  POSITION(122:161),                 --   TAKEF_AVUR_MELEL          valid code description
 INFO_CHAR8                   POSITION(162:170),                 --   MDV_TIK_ICUD_OSKIM   Merger Dealer Number     
 INFO_CHAR46                  POSITION(171:210),                 --   FILLER       
 INFO_NUMBER16                POSITION(211:218),                 --   Start Date (Authorization of Book Management)
 INFO_NUMBER17                POSITION(219:226),                 --   Completion Date (Authorization of Book Management)
 INFO_NUMBER18                POSITION(227:234),                 --   Date of Issuance Book Management Certificate
 INFO_NUMBER19                POSITION(235:236),                 --   Exemption Rate for Category 60 Rent
 INFO_CHAR10                  POSITION(237:237),                 --   Not in Use
 INFO_NUMBER20                POSITION(238:246),                 --   Entity Number
 INFO_CHAR47                  POSITION(247:650),                 --   FILLER
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'             
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1)= 'A' 
(CONTEXT_REQUEST_ID            constant  '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM'  ,
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                    POSITION(01:01),
 INFO_CHAR3                    POSITION(02:10),
 INFO_CHAR46                   POSITION(11:500),             --Filler
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'
)
INTO TABLE JG_REPORTING_TRANSACTION_T
when (1:1)= 'Z' 
(CONTEXT_REQUEST_ID            constant '#LOADREQUESTID#',
 LOAD_REQUEST_ID               constant '#LOADREQUESTID#',
 CONTEXT_ID                    constant '0',
 REPORTING_RECORD_ID           expression "jg_reporting_transaction_s.NEXTVAL",
 SECTION_CODE                  constant 'SHAAM',
 INFO_CHAR1                    constant 'SHAAM',
 INFO_CHAR2                    POSITION(01:01),
 INFO_CHAR3                    POSITION(02:10),
 INFO_CHAR46                   POSITION(11:500),           -- filler
 CREATION_DATE                 expression "systimestamp" ,
 CREATED_BY                    constant '#CREATEDBY#',
 LAST_UPDATE_DATE              expression "systimestamp" ,
 LAST_UPDATE_LOGIN             constant '#LASTUPDATELOGIN#',
 LAST_UPDATED_BY               constant '#LASTUPDATEDBY#'
)
