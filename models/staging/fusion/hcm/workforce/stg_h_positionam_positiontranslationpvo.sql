with h_positionam_positiontranslationpvo as ( 
      select 
               POSITIONID as POSITIONID,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               LANGUAGE as LANGUAGE,
               POSITIONTRANSLATIONPEOLASTUPDATEDATE as POSITIONTRANSLATIONPEOLASTUPDATEDATE,
               POSITIONTRANSLATIONPEOLASTUPDATELOGIN as POSITIONTRANSLATIONPEOLASTUPDATELOGIN,
               POSITIONTRANSLATIONPEOLASTUPDATEDBY as POSITIONTRANSLATIONPEOLASTUPDATEDBY,
               POSITIONTRANSLATIONPEONAME as POSITIONTRANSLATIONPEONAME,
               POSITIONTRANSLATIONPEOOBJECTVERSIONNUMBER as POSITIONTRANSLATIONPEOOBJECTVERSIONNUMBER,
               POSITIONTRANSLATIONPEOSOURCELANG as POSITIONTRANSLATIONPEOSOURCELANG,
               POSITIONTRANSLATIONPEOCREATEDBY as POSITIONTRANSLATIONPEOCREATEDBY,
               POSITIONTRANSLATIONPEOCREATIONDATE as POSITIONTRANSLATIONPEOCREATIONDATE,
      from 'chrome-genre-298014.sakra_stage.h_positionam_positiontranslationpvo'
)

select * from h_positionam_positiontranslationpvo
