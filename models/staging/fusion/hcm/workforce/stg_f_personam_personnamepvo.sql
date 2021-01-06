with f_personam_personnamepvo as ( 
      select 
               PERSONNAMEPEOPERSONID as PERSONNAMEPEOPERSONID,
               PERSONNAMEPEOFULLNAME as PERSONNAMEPEOFULLNAME,
               PERSONNAMEPEOLASTUPDATEDATE as PERSONNAMEPEOLASTUPDATEDATE,
               PERSONDETAILSPEOPERSONNUMBER as PERSONDETAILSPEOPERSONNUMBER,
      from 'chrome-genre-298014.sakra_stage.f_personam_personnamepvo'
)

select * from f_personam_personnamepvo
