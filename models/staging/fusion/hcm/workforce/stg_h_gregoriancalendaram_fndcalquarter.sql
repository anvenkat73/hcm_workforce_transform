with h_gregoriancalendaram_fndcalquarter as ( 
      select 
               CALQTRENDDATE as CALQTRENDDATE,
               CALQTRSTARTDATE as CALQTRSTARTDATE,
               CALQUARTER as CALQUARTER,
               CALQUARTERCODE as CALQUARTERCODE,
               LASTUPDATEDATE as LASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_gregoriancalendaram_fndcalquarter'
)

select * from h_gregoriancalendaram_fndcalquarter
