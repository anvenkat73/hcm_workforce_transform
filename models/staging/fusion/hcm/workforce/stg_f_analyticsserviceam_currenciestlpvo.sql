with f_analyticsserviceam_currenciestlpvo as ( 
      select 
               CURRENCYCODE as CURRENCYCODE,
               LANGUAGE as LANGUAGE,
               DESCRIPTION as DESCRIPTION,
               NAME as NAME,
               SOURCELANG as SOURCELANG,
               LASTUPDATEDATE as LASTUPDATEDATE,
               CREATIONDATE as CREATIONDATE 
      from `chrome-genre-298014.sakra_stage.f_analyticsserviceam_currenciestlpvo`
)

select * from f_analyticsserviceam_currenciestlpvo
