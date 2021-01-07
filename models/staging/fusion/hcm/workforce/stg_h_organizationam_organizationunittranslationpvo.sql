with h_organizationam_organizationunittranslationpvo as ( 
      select 
               ORGANIZATIONID as ORGANIZATIONID,
               LANGUAGE as LANGUAGE,
               ORGANIZATIONUNITTRANSLATIONPEONAME as ORGANIZATIONUNITTRANSLATIONPEONAME,
               ORGANIZATIONUNITPEOLASTUPDATEDATE as ORGANIZATIONUNITPEOLASTUPDATEDATE,
               ORGANIZATIONUNITTRANSLATIONPEOLASTUPDATEDATE as ORGANIZATIONUNITTRANSLATIONPEOLASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.h_organizationam_organizationunittranslationpvo`
)

select * from h_organizationam_organizationunittranslationpvo
