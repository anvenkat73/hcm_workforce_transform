with f_finfunbusinessunitsam_businessunitusagepvo as ( 
      select 
               BUSINESSUNITID as BUSINESSUNITID,
               BUSINESSFUNCTIONBUSINESSFUNCTIONCODE as BUSINESSFUNCTIONBUSINESSFUNCTIONCODE 
      from `chrome-genre-298014.sakra_stage.f_finfunbusinessunitsam_businessunitusagepvo`
)

select * from f_finfunbusinessunitsam_businessunitusagepvo
