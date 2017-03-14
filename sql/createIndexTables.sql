--------------------------------------------------------
--  DDL for Table SPY and QQQ
--------------------------------------------------------

CREATE TABLE spy(
  spdate DATE,
  vopen NUMBER(11,6),
  vhigh NUMBER(11,6),
  vlow NUMBER(11,6),
  vclose NUMBER(11,6),
  vvolume NUMBER(11,0),
  vadjclose NUMBER(11,6),
  vcolm VARCHAR2(20 BYTE),
  vperc NUMBER,
  spyid NUMBER
 )
 
CREATE TABLE qqq(
  spdate DATE,
  vopen NUMBER(11,6),
  vhigh NUMBER(11,6),
  vlow NUMBER(11,6),
  vclose NUMBER(11,6),
  vvolume NUMBER(11,0),
  vadjclose NUMBER(11,6),
  vcolm VARCHAR2(20 BYTE),
  vperc NUMBER,
  qqqid NUMBER
 )
