with h_personam_persondetailspvo as ( 
      select 
               PERSONID as PERSONID,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               PERSONDETAILSPEOPERSONNUMBER as PERSONDETAILSPEOPERSONNUMBER,
               PERSONDETAILSPEOCREATIONDATE as PERSONDETAILSPEOCREATIONDATE,
               PERSONDETAILSPEOLASTUPDATEDATE as PERSONDETAILSPEOLASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_personam_persondetailspvo'
)

select * from h_personam_persondetailspvo
