with f_analyticsserviceam_territoriestlpvo as ( 
      select 
               TERRITORYCODE as TERRITORYCODE,
               LANGUAGE as LANGUAGE,
               TERRITORYSHORTNAME as TERRITORYSHORTNAME,
               DESCRIPTION as DESCRIPTION,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY 
      from 'chrome-genre-298014.sakra_stage.f_analyticsserviceam_territoriestlpvo'
)

select * from f_analyticsserviceam_territoriestlpvo
