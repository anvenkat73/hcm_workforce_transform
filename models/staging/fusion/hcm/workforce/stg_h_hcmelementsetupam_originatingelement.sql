with h_hcmelementsetupam_originatingelement as ( 
      select 
               ELEMENTTYPEID as ELEMENTTYPEID,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               ELEMENTTYPELASTUPDATEDATE as ELEMENTTYPELASTUPDATEDATE,
               ELEMENTTYPEOUTPUTCURRENCYCODE as ELEMENTTYPEOUTPUTCURRENCYCODE 
      from 'chrome-genre-298014.sakra_stage.h_hcmelementsetupam_originatingelement'
)

select * from h_hcmelementsetupam_originatingelement
