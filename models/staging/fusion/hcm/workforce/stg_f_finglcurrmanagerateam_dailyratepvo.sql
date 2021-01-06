with f_finglcurrmanagerateam_dailyratepvo as ( 
      select 
               CONVERSIONDATE as CONVERSIONDATE,
               CONVERSIONTYPE as CONVERSIONTYPE,
               DAILYRATECONVERSIONRATE as DAILYRATECONVERSIONRATE,
               FROMCURRENCY as FROMCURRENCY,
               TOCURRENCY as TOCURRENCY,
               GLDAILYCONVERSIONTYPESLASTUPDATEDATE as GLDAILYCONVERSIONTYPESLASTUPDATEDATE,
               DAILYRATELASTUPDATEDATE as DAILYRATELASTUPDATEDATE,
               DAILYRATECREATIONDATE as DAILYRATECREATIONDATE 
      from 'chrome-genre-298014.sakra_stage.f_finglcurrmanagerateam_dailyratepvo'
)

select * from f_finglcurrmanagerateam_dailyratepvo
