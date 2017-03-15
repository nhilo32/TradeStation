--------------------------------------------------------
--  DDL for Table SETUP_EXT
--------------------------------------------------------

  CREATE TABLE "SETUP_EXT" 
   (	"VMONTHDATE" DATE, 
	"VWEEKDATE" DATE, 
	"VSPLITDATE" DATE
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SETUP
    LOGFILE SETUP
    DISCARDFILE SETUP
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vMONTHDATE DATE 'dd.mm.yyyy',
      vWEEKDATE DATE 'dd.mm.yyyy',
      vSPLITDATE DATE 'dd.mm.yyyy'
    )
      )
      LOCATION
       ( "SI_PROCESSED":'setup.csv'
       )
    );
