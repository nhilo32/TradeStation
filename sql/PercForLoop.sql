DECLARE
  x NUMBER; y NUMBER; tcnt NUMBER; upcnt NUMBER; dwcnt NUMBER; uppct NUMBER; dwpct NUMBER;
  upavg NUMBER; dwavg NUMBER; upavglow NUMBER;
BEGIN
  printx('pct'||chr(9)||chr(9)||'tcnt'||chr(9)||chr(9)||'uppct'||chr(9)||chr(9)||chr(9)||chr(9)||'dwpct');
  FOR i IN -10..9 loop
    x := i*10;
    y := (i+1)*10;
--    printx(x||' ; '||y);
    SELECT count(*) INTO tcnt FROM aar WHERE rperc BETWEEN x AND y;
    SELECT count(*) INTO upcnt FROM aar WHERE rperc BETWEEN x AND y AND perc1a > 0;
    SELECT count(*) INTO dwcnt FROM aar WHERE rperc BETWEEN x AND y AND perc1a < 0;
    SELECT round(avg(perc1a)) INTO upavg FROM aar WHERE rperc BETWEEN x AND y AND perc1a > 0;
    SELECT round(avg(perc1a)) INTO dwavg FROM aar WHERE rperc BETWEEN x AND y AND perc1a < 0;
    SELECT round(avg(low_perc1a)) INTO upavglow FROM aar WHERE rperc BETWEEN x AND y AND perc1a > 0;
    uppct := (upcnt/tcnt)*100;
    dwpct := (dwcnt/tcnt)*100;
    printx(x||chr(9)||chr(9)||tcnt||chr(9)||chr(9)||round(uppct)||':'||upavg||':'||upavglow||chr(9)||chr(9)||
    chr(9)||round(dwpct)||':'||dwavg);
  END LOOP;
END;
