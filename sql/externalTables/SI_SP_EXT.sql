--------------------------------------------------------
--  DDL for Table SI_SP_EXT
--------------------------------------------------------

  CREATE TABLE "SI_SP_EXT" 
   (	"VSPCODE" VARCHAR2(26 BYTE), 
	"VSPDESC" VARCHAR2(12 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_SP
    LOGFILE SI_SP
    DISCARDFILE SI_SP
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vSPCODE,
      vSPDESC
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_sp.csv'
       )
    );
