-- pupulate the spyid field
DECLARE
  CURSOR c1 IS SELECT spdate, ROWNUM FROM spy ORDER BY spdate DESC;
  NUM1 NUMBER := 1; NUM2 NUMBER;
BEGIN
  FOR rec IN c1 loop
    UPDATE spy SET spyid = rec.ROWNUM WHERE spdate = rec.spdate;
  END loop;
  COMMIT;
END;
-- populate vcolm field with spyid field
UPDATE spy SET vcolm = 'vpricem'||lpad(spyid, 3, '0');
COMMIT;
-- populate the vperc field
UPDATE spy SET vperc = CASE
  WHEN vclose = vopen THEN 0
  WHEN vclose = 0 THEN NULL
  WHEN vclose IS NULL THEN NULL
  WHEN vopen = 0 THEN NULL
  WHEN vopen IS NULL THEN NULL
  ELSE round(((vclose - vopen)/vopen)*100,2)
  END;
COMMIT;
SELECT * FROM spy;
