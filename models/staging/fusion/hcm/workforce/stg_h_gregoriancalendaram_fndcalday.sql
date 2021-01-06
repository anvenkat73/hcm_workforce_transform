with h_gregoriancalendaram_fndcalday as ( 
      select 
               DAYOFMONTH as DAYOFMONTH,
               DAYOFWEEK as DAYOFWEEK,
               DAYOFYEAR as DAYOFYEAR,
               LASTUPDATEDATE as LASTUPDATEDATE,
               REPORTDATE as REPORTDATE,
      from 'chrome-genre-298014.sakra_stage.h_gregoriancalendaram_fndcalday'
)

select * from h_gregoriancalendaram_fndcalday
