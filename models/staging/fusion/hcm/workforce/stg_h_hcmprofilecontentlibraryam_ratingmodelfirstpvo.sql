with h_hcmprofilecontentlibraryam_ratingmodelfirstpvo as ( 
      select 
               RATINGMODELBPEORATINGMODELID as RATINGMODELBPEORATINGMODELID,
               RATINGMODELBPEOBUSINESSGROUPID as RATINGMODELBPEOBUSINESSGROUPID,
               RATINGMODELBPEORATINGMODELCODE as RATINGMODELBPEORATINGMODELCODE,
               RATINGMODELBPEODATEFROM as RATINGMODELBPEODATEFROM,
               RATINGMODELBPEODATETO as RATINGMODELBPEODATETO,
               OBJECTVERSIONNUMBER as OBJECTVERSIONNUMBER,
               CREATEDBY as CREATEDBY,
               CREATIONDATE as CREATIONDATE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               LASTUPDATELOGIN as LASTUPDATELOGIN,
               RATINGMODELBPEOMODULEID as RATINGMODELBPEOMODULEID,
               RATINGMODELBPEODISTRIBUTIONTHRESHOLD as RATINGMODELBPEODISTRIBUTIONTHRESHOLD 
      from 'chrome-genre-298014.sakra_stage.h_hcmprofilecontentlibraryam_ratingmodelfirstpvo'
)

select * from h_hcmprofilecontentlibraryam_ratingmodelfirstpvo
