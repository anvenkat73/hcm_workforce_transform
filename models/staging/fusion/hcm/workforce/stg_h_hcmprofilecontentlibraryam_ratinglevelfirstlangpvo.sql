with h_hcmprofilecontentlibraryam_ratinglevelfirstlangpvo as ( 
      select 
               RATINGLEVELTRANSLATIONPEORATINGLEVELID as RATINGLEVELTRANSLATIONPEORATINGLEVELID,
               LANGUAGE as LANGUAGE,
               RATINGLEVELTRANSLATIONPEOBUSINESSGROUPID as RATINGLEVELTRANSLATIONPEOBUSINESSGROUPID,
               SOURCELANG as SOURCELANG,
               RATINGLEVELTRANSLATIONPEORATINGDESCRIPTION as RATINGLEVELTRANSLATIONPEORATINGDESCRIPTION,
               RATINGLEVELTRANSLATIONPEORATINGSHORTDESCR as RATINGLEVELTRANSLATIONPEORATINGSHORTDESCR,
               RATINGLEVELTRANSLATIONPEOREVIEWRATINGDESCR as RATINGLEVELTRANSLATIONPEOREVIEWRATINGDESCR,
               RATINGLEVELTRANSLATIONPEOLASTUPDATEDATE as RATINGLEVELTRANSLATIONPEOLASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.h_hcmprofilecontentlibraryam_ratinglevelfirstlangpvo`
)

select * from h_hcmprofilecontentlibraryam_ratinglevelfirstlangpvo
