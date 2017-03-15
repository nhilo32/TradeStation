--------------------------------------------------------
--  DDL for Table SI_AVG_EXT
--------------------------------------------------------

  CREATE TABLE "SI_AVG_EXT" 
   (	"VFIELDNAME" VARCHAR2(26 BYTE), 
	"VAVERAGE" VARCHAR2(11 BYTE), 
	"VHIGH" VARCHAR2(11 BYTE), 
	"VLOW" VARCHAR2(12 BYTE), 
	"VSAMPLE" VARCHAR2(5 BYTE), 
	"VMEDIAN" VARCHAR2(11 BYTE), 
	"VSTDDEV" VARCHAR2(11 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SI_LOGGING"
      ACCESS PARAMETERS
      ( RECORDS DELIMITED BY NEWLINE
    BADFILE SI_AVG
    LOGFILE SI_AVG
    DISCARDFILE SI_AVG
    FIELDS TERMINATED BY "|"
    missing field VALUES are NULL
    (
      vFIELDNAME,
      vAVERAGE,
      vHIGH,
      vLOW,
      vSAMPLE,
      vMEDIAN,
      vSTDDEV
    )
      )
      LOCATION
       ( "SI_PROCESSED":'si_avg.csv'
       )
    );
