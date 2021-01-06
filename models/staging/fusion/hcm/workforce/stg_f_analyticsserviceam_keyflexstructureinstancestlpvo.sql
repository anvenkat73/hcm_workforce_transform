with f_analyticsserviceam_keyflexstructureinstancestlpvo as ( 
      select 
               APPLICATIONID as APPLICATIONID,
               CREATEDBY as CREATEDBY,
               CREATIONDATE as CREATIONDATE,
               DESCRIPTION as DESCRIPTION,
               KEYFLEXFIELDCODE as KEYFLEXFIELDCODE,
               LANGUAGE as LANGUAGE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME as NAME,
               SOURCELANG as SOURCELANG,
               STRUCTUREINSTANCECODE as STRUCTUREINSTANCECODE,
               LASTUPDATELOGIN as LASTUPDATELOGIN,
      from 'chrome-genre-298014.sakra_stage.f_analyticsserviceam_keyflexstructureinstancestlpvo'
)

select * from f_analyticsserviceam_keyflexstructureinstancestlpvo
