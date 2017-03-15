--------------------------------------------------------
--  DDL for Table SI_PTYP_EXT
--------------------------------------------------------

  CREATE TABLE "SI_PTYP_EXT" 
   (	"VTYPECODE" VARCHAR2(26 BYTE), 
	"VTYPEDESCR" VARCHAR2(6 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_PTYP
    LOGFILE SI_PTYP
    DISCARDFILE SI_PTYP
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vTYPECODE,
      vTYPEDESCR
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_ptyp.csv'
       )
    );
