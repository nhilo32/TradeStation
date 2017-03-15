--------------------------------------------------------
--  DDL for Table LISTMAST_EXT
--------------------------------------------------------

  CREATE TABLE "LISTMAST_EXT" 
   (	"VFILE" VARCHAR2(26 BYTE), 
	"VLISTNAME" VARCHAR2(50 BYTE), 
	"VLISTTITLE" VARCHAR2(50 BYTE), 
	"VLISTORDER" VARCHAR2(50 BYTE), 
	"VROW" VARCHAR2(26 BYTE), 
	"VCOL" VARCHAR2(50 BYTE), 
	"VDEPTH" VARCHAR2(50 BYTE), 
	"VLISTEXPR" VARCHAR2(50 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE LISTMAST
    LOGFILE LISTMAST
    DISCARDFILE LISTMAST
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      VFILE,
      vLISTNAME,
      vLISTTITLE,
      vLISTORDER,
      VROW,
      VCOL,
      VDEPTH,
      vLISTEXPR
    )
      )
      LOCATION
       ( "SI_PROCESSED":'listmast.csv'
       )
    );
