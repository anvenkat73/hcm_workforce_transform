with h_gregoriancalendaram_fndcalyear as ( 
      select 
               CALYEAR as CALYEAR,
               CALYEARENDDATE as CALYEARENDDATE,
               CALYEARSTARTDATE as CALYEARSTARTDATE,
               LASTUPDATEDATE as LASTUPDATEDATE,
      from 'chrome-genre-298014.sakra_stage.h_gregoriancalendaram_fndcalyear'
)

select * from h_gregoriancalendaram_fndcalyear
