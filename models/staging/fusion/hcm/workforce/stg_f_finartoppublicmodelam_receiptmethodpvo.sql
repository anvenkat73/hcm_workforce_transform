with f_finartoppublicmodelam_receiptmethodpvo as ( 
      select 
               RECEIPTMETHODID as RECEIPTMETHODID,
               RECEIPTMETHODNAME as RECEIPTMETHODNAME,
               RECEIPTCLASSLASTUPDATEDATE as RECEIPTCLASSLASTUPDATEDATE,
               RECEIPTMETHODLASTUPDATEDATE as RECEIPTMETHODLASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.f_finartoppublicmodelam_receiptmethodpvo`
)

select * from f_finartoppublicmodelam_receiptmethodpvo
