with f_locationam_hrlocationspvo as ( 
      select 
               ADDRESSESPEOADDRESSLINE1 as ADDRESSESPEOADDRESSLINE1,
               ADDRESSESPEOADDRESSLINE2 as ADDRESSESPEOADDRESSLINE2,
               ADDRESSESPEOCOUNTRY as ADDRESSESPEOCOUNTRY,
               ADDRESSESPEOLASTUPDATEDATE as ADDRESSESPEOLASTUPDATEDATE,
               ADDRESSESPEOPOSTALCODE as ADDRESSESPEOPOSTALCODE,
               ADDRESSESPEOREGION1 as ADDRESSESPEOREGION1,
               ADDRESSESPEOREGION2 as ADDRESSESPEOREGION2,
               ADDRESSESPEOREGION3 as ADDRESSESPEOREGION3,
               ADDRESSESPEOTOWNORCITY as ADDRESSESPEOTOWNORCITY,
               LOCATIONDETAILSPEOEMAILADDRESS as LOCATIONDETAILSPEOEMAILADDRESS,
               LOCATIONDETAILSPEOLASTUPDATEDATE as LOCATIONDETAILSPEOLASTUPDATEDATE,
               LOCATIONDETAILSPEOLOCATIONID as LOCATIONDETAILSPEOLOCATIONID,
               LOCATIONDETAILSPEOTELEPHONENUMBER1 as LOCATIONDETAILSPEOTELEPHONENUMBER1,
               LOCATIONDETAILSPEOTELEPHONENUMBER2 as LOCATIONDETAILSPEOTELEPHONENUMBER2,
               LOCATIONPEOLASTUPDATEDATE as LOCATIONPEOLASTUPDATEDATE,
               LOCATIONPEOLOCATIONID as LOCATIONPEOLOCATIONID,
      from 'chrome-genre-298014.sakra_stage.f_locationam_hrlocationspvo'
)

select * from f_locationam_hrlocationspvo
