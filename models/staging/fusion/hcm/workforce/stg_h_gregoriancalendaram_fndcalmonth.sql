with h_gregoriancalendaram_fndcalmonth as ( 
      select 
               CALMONTH as CALMONTH,
               CALMONTHCODE as CALMONTHCODE,
               CALMONTHENDDATE as CALMONTHENDDATE,
               CALMONTHSTARTDATE as CALMONTHSTARTDATE,
               LASTUPDATEDATE as LASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.h_gregoriancalendaram_fndcalmonth`
)

select * from h_gregoriancalendaram_fndcalmonth
