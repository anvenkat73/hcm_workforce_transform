with f_organizationam_organizationpvo as ( 
      select 
               ORGUNITCLASSIFICATIONPEOORGANIZATIONID as ORGUNITCLASSIFICATIONPEOORGANIZATIONID,
               ORGUNITCLASSIFICATIONPEOCLASSIFICATIONCODE as ORGUNITCLASSIFICATIONPEOCLASSIFICATIONCODE,
               ORGUNITCLASSIFICATIONPEOLASTUPDATEDATE as ORGUNITCLASSIFICATIONPEOLASTUPDATEDATE,
               ORGANIZATIONUNITPEOORGANIZATIONID as ORGANIZATIONUNITPEOORGANIZATIONID,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               ORGUNITCLASSIFICATIONPEOLEGISLATIONCODE as ORGUNITCLASSIFICATIONPEOLEGISLATIONCODE,
               ORGUNITCLASSIFICATIONPEOSETID as ORGUNITCLASSIFICATIONPEOSETID,
               ORGUNITCLASSIFICATIONPEOSTATUS as ORGUNITCLASSIFICATIONPEOSTATUS 
      from `chrome-genre-298014.sakra_stage.f_organizationam_organizationpvo`
)

select * from f_organizationam_organizationpvo
