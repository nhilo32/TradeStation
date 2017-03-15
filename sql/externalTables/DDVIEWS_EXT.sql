--------------------------------------------------------
--  DDL for Table DDVIEWS_EXT
--------------------------------------------------------

  CREATE TABLE "DDVIEWS_EXT" 
   (	"VNAME" VARCHAR2(26 BYTE), 
	"VALIAS" VARCHAR2(26 BYTE), 
	"VORDER" VARCHAR2(26 BYTE), 
	"VTARGET" VARCHAR2(26 BYTE), 
	"VOPENORDER" VARCHAR2(26 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE DDVIEWS
    LOGFILE DDVIEWS
    DISCARDFILE DDVIEWS
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      VNAME,
      VALIAS,
      VORDER,
      vTARGET,
      vOPENORDER
    )
      )
      LOCATION
       ( "SI_PROCESSED":'ddviews.csv'
       )
    );
