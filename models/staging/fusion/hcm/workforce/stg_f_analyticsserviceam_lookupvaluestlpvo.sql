with f_analyticsserviceam_lookupvaluestlpvo as ( 
      select 
               LOOKUPTYPE as LOOKUPTYPE,
               LOOKUPCODE as LOOKUPCODE,
               LANGUAGE as LANGUAGE,
               SETID as SETID,
               VIEWAPPLICATIONID as VIEWAPPLICATIONID,
               MEANING as MEANING,
               DESCRIPTION as DESCRIPTION,
               SOURCELANG as SOURCELANG,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               CREATEDBY as CREATEDBY,
               CREATIONDATE as CREATIONDATE 
      from 'chrome-genre-298014.sakra_stage.f_analyticsserviceam_lookupvaluestlpvo'
)

select * from f_analyticsserviceam_lookupvaluestlpvo
