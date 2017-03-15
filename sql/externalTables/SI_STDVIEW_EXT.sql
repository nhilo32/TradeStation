--------------------------------------------------------
--  DDL for Table SI_STDVIEW_EXT
--------------------------------------------------------

  CREATE TABLE "SI_STDVIEW_EXT" 
   (	"VRPTID" VARCHAR2(26 BYTE), 
	"VFLDORDER" VARCHAR2(3 BYTE), 
	"VFIELDNAME" VARCHAR2(20 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_STDVIEW
    LOGFILE SI_STDVIEW
    DISCARDFILE SI_STDVIEW
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vRPTID,
      vFLDORDER,
      vFIELDNAME
    )
      )
      LOCATION
       ( "SI_PROCESSED":'stdview.csv'
       )
    );
