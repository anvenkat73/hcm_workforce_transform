with h_personam_citizenshippvoviewall as ( 
      select 
               CITIZENSHIPID as CITIZENSHIPID,
               CITIZENSHIPPEODATEFROM as CITIZENSHIPPEODATEFROM,
               CITIZENSHIPPEODATETO as CITIZENSHIPPEODATETO,
               CITIZENSHIPPEOPERSONID as CITIZENSHIPPEOPERSONID,
               CITIZENSHIPPEOBUSINESSGROUPID as CITIZENSHIPPEOBUSINESSGROUPID,
               CITIZENSHIPPEOLEGISLATIONCODE as CITIZENSHIPPEOLEGISLATIONCODE,
               CITIZENSHIPPEOCITIZENSHIPSTATUS as CITIZENSHIPPEOCITIZENSHIPSTATUS,
               CITIZENSHIPPEOCREATIONDATE as CITIZENSHIPPEOCREATIONDATE,
               CITIZENSHIPPEOLASTUPDATEDATE as CITIZENSHIPPEOLASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_personam_citizenshippvoviewall'
)

select * from h_personam_citizenshippvoviewall
