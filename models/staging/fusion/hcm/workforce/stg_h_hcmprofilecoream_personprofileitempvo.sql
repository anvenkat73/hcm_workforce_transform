with h_hcmprofilecoream_personprofileitempvo as ( 
      select 
               PROFILEBPEOPROFILEID as PROFILEBPEOPROFILEID,
               PROFILEBPEOBUSINESSGROUPID as PROFILEBPEOBUSINESSGROUPID,
               PROFILEBPEOPROFILETYPEID as PROFILEBPEOPROFILETYPEID,
               PROFILEBPEOPROFILECODE as PROFILEBPEOPROFILECODE,
               PROFILEBPEOPROFILESTATUSCODE as PROFILEBPEOPROFILESTATUSCODE,
               PROFILEBPEOPROFILEUSAGECODE as PROFILEBPEOPROFILEUSAGECODE,
               PROFILEBPEOPERSONID as PROFILEBPEOPERSONID,
               PROFILEBPEOPARTYID as PROFILEBPEOPARTYID,
               CREATIONDATE as CREATIONDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATELOGIN as LASTUPDATELOGIN,
      from 'chrome-genre-298014.sakra_stage.h_hcmprofilecoream_personprofileitempvo'
)

select * from h_hcmprofilecoream_personprofileitempvo
