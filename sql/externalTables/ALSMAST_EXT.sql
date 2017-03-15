--------------------------------------------------------
--  DDL for Table ALSMAST_EXT
--------------------------------------------------------

  CREATE TABLE "ALSMAST_EXT" 
   (	"VFILE" VARCHAR2(26 BYTE), 
	"VALIAS" VARCHAR2(26 BYTE), 
	"VCOMMENTS" VARCHAR2(26 BYTE), 
	"VAUTOOPEN" VARCHAR2(26 BYTE), 
	"VNOUPDATE" VARCHAR2(26 BYTE), 
	"VDEFFILT" VARCHAR2(26 BYTE), 
	"VDESCRIP" VARCHAR2(128 BYTE), 
	"VREPORT" VARCHAR2(26 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE ALSMAST
    LOGFILE ALSMAST
    DISCARDFILE ALSMAST
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      VFILE,
      vALIAS,
      vCOMMENTS,
      vAUTOOPEN,
      vNOUPDATE,
      vDEFFILT,
      vDESCRIP,
      vREPORT
    )
      )
      LOCATION
       ( "SI_PROCESSED":'alsmast.csv'
       )
    );
