--------------------------------------------------------
--  DDL for Table SI_UTYP_EXT
--------------------------------------------------------

  CREATE TABLE "SI_UTYP_EXT" 
   (	"VTYPECODE" VARCHAR2(26 BYTE), 
	"VTYPEDESCR" VARCHAR2(26 BYTE), 
	"VTYPESHORT" VARCHAR2(26 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_UTYP
    LOGFILE SI_UTYP
    DISCARDFILE SI_UTYP
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vTYPECODE,
      vTYPEDESCR,
      vTYPESHORT
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_utyp.csv'
       )
    );
