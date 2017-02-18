# aaii-project. directions to update project with new data

1. Open Stock Investor Pro and update, Then close the program.

2. Open dbf2csv program. The system should be setup. If not the file locations are as      follows.
  a. C:\Program Files\Stock Investor\Professional\Datadict
  b. C:\Neal\aaii\dbf\pipe

3. Execute the process_bom.py program with the following commands. This will remove the Byte Order Mark (BOM) in the files as well as move them from C:\Neal\aaii\dbf\pipe to C:\Neal\aaii\processed.
  a. cd C:\neal\aaii
  b. python process_bom.py

4. Recompile the following views
  a. mon_price_perc_vw
  b. mon_price_perc_low_vw
  c. mon_price_perc_vert_vw
  d. si_psdd_vert_vw
  e. aa_research_vw

5. Rebuild aa_mon_price_perc_vert, aa_psdd_vert and aaresearch tables, rebuild aaresults and/or conduct research.
