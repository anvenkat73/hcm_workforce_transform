with f_organizationam_organizationunitpvo as ( 
      select 
               ORGANIZATIONID as ORGANIZATIONID,
               ORGANIZATIONUNITPEOLOCATIONID as ORGANIZATIONUNITPEOLOCATIONID,
               ORGANIZATIONUNITPEOLASTUPDATEDATE as ORGANIZATIONUNITPEOLASTUPDATEDATE,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               ORGANIZATIONUNITPEOLEGALENTITYID as ORGANIZATIONUNITPEOLEGALENTITYID 
      from `chrome-genre-298014.sakra_stage.f_organizationam_organizationunitpvo`
)

select * from f_organizationam_organizationunitpvo
