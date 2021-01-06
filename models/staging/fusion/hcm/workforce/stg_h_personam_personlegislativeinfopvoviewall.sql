with h_personam_personlegislativeinfopvoviewall as ( 
      select 
               PERSONLEGISLATIVEID as PERSONLEGISLATIVEID,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               PERSONLEGISLATIVEINFODPEOPERSONID as PERSONLEGISLATIVEINFODPEOPERSONID,
               PERSONLEGISLATIVEINFODPEOBUSINESSGROUPID as PERSONLEGISLATIVEINFODPEOBUSINESSGROUPID,
               PERSONLEGISLATIVEINFODPEOLEGISLATIONCODE as PERSONLEGISLATIVEINFODPEOLEGISLATIONCODE,
               PERSONLEGISLATIVEINFODPEOSEX as PERSONLEGISLATIVEINFODPEOSEX,
               PERSONLEGISLATIVEINFODPEOMARITALSTATUS as PERSONLEGISLATIVEINFODPEOMARITALSTATUS,
               PERSONLEGISLATIVEINFODPEOMARITALSTATUSDATE as PERSONLEGISLATIVEINFODPEOMARITALSTATUSDATE,
               PERSONLEGISLATIVEINFODPEOHIGHESTEDUCATIONLEVEL as PERSONLEGISLATIVEINFODPEOHIGHESTEDUCATIONLEVEL,
               PERSONLEGISLATIVEINFODPEOCREATIONDATE as PERSONLEGISLATIVEINFODPEOCREATIONDATE,
               PERSONLEGISLATIVEINFODPEOLASTUPDATEDATE as PERSONLEGISLATIVEINFODPEOLASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_personam_personlegislativeinfopvoviewall'
)

select * from h_personam_personlegislativeinfopvoviewall
