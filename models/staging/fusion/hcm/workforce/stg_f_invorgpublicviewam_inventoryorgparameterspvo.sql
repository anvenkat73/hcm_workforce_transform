with f_invorgpublicviewam_inventoryorgparameterspvo as ( 
      select 
               ORGANIZATIONID as ORGANIZATIONID,
               ORGANIZATIONPARAMETERPEOORGANIZATIONCODE as ORGANIZATIONPARAMETERPEOORGANIZATIONCODE,
               ORGANIZATIONPARAMETERPEOLASTUPDATEDATE as ORGANIZATIONPARAMETERPEOLASTUPDATEDATE,
               ORGANIZATIONPARAMETERPEOLEGALENTITYID as ORGANIZATIONPARAMETERPEOLEGALENTITYID,
               ORGANIZATIONPARAMETERPEOBUSINESSUNITID as ORGANIZATIONPARAMETERPEOBUSINESSUNITID,
               ORGANIZATIONPARAMETERPEOSUPPLIERID as ORGANIZATIONPARAMETERPEOSUPPLIERID,
               ORGANIZATIONPARAMETERPEOSUPPLIERSITEID as ORGANIZATIONPARAMETERPEOSUPPLIERSITEID,
               ORGANIZATIONPARAMETERPEOMASTERORGANIZATIONID as ORGANIZATIONPARAMETERPEOMASTERORGANIZATIONID 
      from `chrome-genre-298014.sakra_stage.f_invorgpublicviewam_inventoryorgparameterspvo`
)

select * from f_invorgpublicviewam_inventoryorgparameterspvo
