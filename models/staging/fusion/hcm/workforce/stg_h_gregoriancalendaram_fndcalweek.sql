with h_gregoriancalendaram_fndcalweek as ( 
      select 
               CALWEEK as CALWEEK,
               CALWEEKCODE as CALWEEKCODE,
               CALWEEKENDDATE as CALWEEKENDDATE,
               CALWEEKSTARTDATE as CALWEEKSTARTDATE,
               LASTUPDATEDATE as LASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_gregoriancalendaram_fndcalweek'
)

select * from h_gregoriancalendaram_fndcalweek
