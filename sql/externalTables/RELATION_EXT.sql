--------------------------------------------------------
--  DDL for Table RELATION_EXT
--------------------------------------------------------

  CREATE TABLE "RELATION_EXT" 
   (	"VFILE1" VARCHAR2(26 BYTE), 
	"VINDEX1" VARCHAR2(15 BYTE), 
	"VTAG1" VARCHAR2(15 BYTE), 
	"VALIAS1" VARCHAR2(15 BYTE), 
	"VEXPRESSION" VARCHAR2(15 BYTE), 
	"VFILE2" VARCHAR2(15 BYTE), 
	"VINDEX2" VARCHAR2(15 BYTE), 
	"VTAG2" VARCHAR2(15 BYTE), 
	"VALIAS2" VARCHAR2(15 BYTE), 
	"VTYPE" NUMBER, 
	"VDELRULES" VARCHAR2(15 BYTE), 
	"VUPDRULES" VARCHAR2(15 BYTE), 
	"VLISTNAME" VARCHAR2(26 BYTE), 
	"VRETEXPR" VARCHAR2(15 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE RELATION
    LOGFILE RELATION
    DISCARDFILE RELATION
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vFILE1,
      vINDEX1,
      vTAG1,
      vALIAS1,
      vEXPRESSION,
      vFILE2,
      vINDEX2,
      vTAG2,
      vALIAS2,
      VTYPE,
      vDELRULES,
      vUPDRULES,
      vLISTNAME,
      vRETEXPR
    )
      )
      LOCATION
       ( "SI_PROCESSED":'relation.csv'
       )
    );
