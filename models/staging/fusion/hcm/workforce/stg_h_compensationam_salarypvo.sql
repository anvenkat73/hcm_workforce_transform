with h_compensationam_salarypvo as ( 
      select 
               SALARYID as SALARYID,
               SALARYPEOACTIONID as SALARYPEOACTIONID,
               SALARYPEOACTIONOCCURRENCEID as SALARYPEOACTIONOCCURRENCEID,
               SALARYPEOACTIONREASONID as SALARYPEOACTIONREASONID,
               SALARYPEOASSIGNMENTID as SALARYPEOASSIGNMENTID,
               SALARYPEOBUSINESSGROUPID as SALARYPEOBUSINESSGROUPID,
               SALARYPEOCREATEDBY as SALARYPEOCREATEDBY,
               SALARYPEOCREATIONDATE as SALARYPEOCREATIONDATE,
               SALARYPEODATEFROM as SALARYPEODATEFROM,
               SALARYPEODATETO as SALARYPEODATETO,
               SALARYPEOELEMENTENTRYID as SALARYPEOELEMENTENTRYID,
               SALARYPEOLASTUPDATEDATE as SALARYPEOLASTUPDATEDATE,
               SALARYPEOLASTUPDATEDBY as SALARYPEOLASTUPDATEDBY,
               SALARYPEOLASTUPDATELOGIN as SALARYPEOLASTUPDATELOGIN,
               SALARYPEOMULTIPLECOMPONENTS as SALARYPEOMULTIPLECOMPONENTS,
               SALARYPEONEXTSALREVIEWDATE as SALARYPEONEXTSALREVIEWDATE,
               SALARYPEOOBJECTVERSIONNUMBER as SALARYPEOOBJECTVERSIONNUMBER,
               SALARYPEOSALARYAMOUNT as SALARYPEOSALARYAMOUNT,
               SALARYPEOSALARYAPPROVED as SALARYPEOSALARYAPPROVED,
               SALARYPEOSALARYBASISID as SALARYPEOSALARYBASISID 
      from `chrome-genre-298014.sakra_stage.h_compensationam_salarypvo`
)

select * from h_compensationam_salarypvo
