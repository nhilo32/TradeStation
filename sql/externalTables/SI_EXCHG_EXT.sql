--------------------------------------------------------
--  DDL for Table SI_EXCHG_EXT
--------------------------------------------------------

  CREATE TABLE "SI_EXCHG_EXT" 
   (	"VEXCHGCODE" VARCHAR2(26 BYTE), 
	"VEXCHGDESC" VARCHAR2(16 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_EXCHG
    LOGFILE SI_EXCHG
    DISCARDFILE SI_EXCHG
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vEXCHGCODE,
      vEXCHGDESC
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_exchg.csv'
       )
    );
