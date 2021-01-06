with h_hcmprofilecoream_potentialpvoprofileitemref as ( 
      select 
               PROFILEITEMID as PROFILEITEMID,
               BUSINESSGROUPID as BUSINESSGROUPID,
               CONTENTITEMID as CONTENTITEMID,
               CONTENTTYPEID as CONTENTTYPEID,
               COUNTRYID as COUNTRYID,
               DATEFROM as DATEFROM,
               DATETO as DATETO,
               CREATEDBY as CREATEDBY,
               CREATIONDATE as CREATIONDATE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATELOGIN as LASTUPDATELOGIN,
               PARENTPROFILEITEMID as PARENTPROFILEITEMID,
               POTENTIALCONTEXTNAME as POTENTIALCONTEXTNAME,
               PROFILEID as PROFILEID,
               RATINGLEVELID1 as RATINGLEVELID1,
               RATINGLEVELID2 as RATINGLEVELID2,
               RATINGLEVELID3 as RATINGLEVELID3,
               RATINGMODELID1 as RATINGMODELID1,
               STATEPROVINCEID as STATEPROVINCEID,
               SECTIONID as SECTIONID,
               ITEMNUMBER2 as ITEMNUMBER2,
      from 'chrome-genre-298014.sakra_stage.h_hcmprofilecoream_potentialpvoprofileitemref'
)

select * from h_hcmprofilecoream_potentialpvoprofileitemref
