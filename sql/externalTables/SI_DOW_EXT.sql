--------------------------------------------------------
--  DDL for Table SI_DOW_EXT
--------------------------------------------------------

  CREATE TABLE "SI_DOW_EXT" 
   (	"VDOWCODE" VARCHAR2(26 BYTE), 
	"VDOWDESC" VARCHAR2(26 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_DOW
    LOGFILE SI_DOW
    DISCARDFILE SI_DOW
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vDOWCODE,
      vDOWDESC
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_dow.csv'
       )
    );
