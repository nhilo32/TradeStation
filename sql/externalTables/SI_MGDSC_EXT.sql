--------------------------------------------------------
--  DDL for Table SI_MGDSC_EXT
--------------------------------------------------------

  CREATE TABLE "SI_MGDSC_EXT" 
   (	"VMGCODE" VARCHAR2(26 BYTE), 
	"VMGDESC" VARCHAR2(41 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_MGDSC
    LOGFILE SI_MGDSC
    DISCARDFILE SI_MGDSC
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vMGCODE,
      vMGDESC
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_mgdsc.csv'
       )
    );
