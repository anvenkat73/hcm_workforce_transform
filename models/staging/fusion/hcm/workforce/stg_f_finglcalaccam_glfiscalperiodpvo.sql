with f_finglcalaccam_glfiscalperiodpvo as ( 
      select 
               FISCALPERIODADJUSTMENTPERIODFLAG as FISCALPERIODADJUSTMENTPERIODFLAG,
               FISCALPERIODFISCALPERIODENDDATE as FISCALPERIODFISCALPERIODENDDATE,
               FISCALPERIODFISCALPERIODLASTUPDATEDATE as FISCALPERIODFISCALPERIODLASTUPDATEDATE,
               FISCALPERIODFISCALPERIODNUMBER as FISCALPERIODFISCALPERIODNUMBER,
               FISCALPERIODFISCALPERIODSTARTDATE as FISCALPERIODFISCALPERIODSTARTDATE,
               FISCALPERIODFISCALQUARTERENDDATE as FISCALPERIODFISCALQUARTERENDDATE,
               FISCALPERIODFISCALQUARTERNUMBER as FISCALPERIODFISCALQUARTERNUMBER,
               FISCALPERIODFISCALQUARTERSTARTDATE as FISCALPERIODFISCALQUARTERSTARTDATE,
               FISCALPERIODFISCALYEARENDDATE as FISCALPERIODFISCALYEARENDDATE,
               FISCALPERIODFISCALYEARNUMBER as FISCALPERIODFISCALYEARNUMBER,
               FISCALPERIODFISCALYEARSTARTDATE as FISCALPERIODFISCALYEARSTARTDATE,
               FISCALPERIODNAME as FISCALPERIODNAME,
               FISCALPERIODSETNAME as FISCALPERIODSETNAME,
               FISCALPERIODTYPE as FISCALPERIODTYPE 
      from 'chrome-genre-298014.sakra_stage.f_finglcalaccam_glfiscalperiodpvo'
)

select * from f_finglcalaccam_glfiscalperiodpvo
