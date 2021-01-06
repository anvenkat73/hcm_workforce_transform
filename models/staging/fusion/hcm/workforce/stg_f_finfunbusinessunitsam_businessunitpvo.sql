with f_finfunbusinessunitsam_businessunitpvo as ( 
      select 
               BUSINESSUNITDATEFROM as BUSINESSUNITDATEFROM,
               BUSINESSUNITDATETO as BUSINESSUNITDATETO,
               BUSINESSUNITDEFAULTCURRENCYCODE as BUSINESSUNITDEFAULTCURRENCYCODE,
               BUSINESSUNITID as BUSINESSUNITID,
               BUSINESSUNITLASTUPDATEDATE as BUSINESSUNITLASTUPDATEDATE,
               BUSINESSUNITSTATUS as BUSINESSUNITSTATUS,
               LEDGERLEDGERID as LEDGERLEDGERID,
               LEDGERNAME as LEDGERNAME,
               LEGALENTITYLEGALENTITYID as LEGALENTITYLEGALENTITYID,
               PERSONREFFULLNAME as PERSONREFFULLNAME,
               SETIDSETSSETID as SETIDSETSSETID,
      from 'chrome-genre-298014.sakra_stage.f_finfunbusinessunitsam_businessunitpvo'
)

select * from f_finfunbusinessunitsam_businessunitpvo
