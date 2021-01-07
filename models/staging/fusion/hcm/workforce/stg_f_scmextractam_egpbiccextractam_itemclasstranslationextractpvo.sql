with f_scmextractam_egpbiccextractam_itemclasstranslationextractpvo as ( 
      select 
               ITEMCLASSTRANPEOITEMCLASSID as ITEMCLASSTRANPEOITEMCLASSID,
               ITEMCLASSTRANPEOLANGUAGE as ITEMCLASSTRANPEOLANGUAGE,
               ITEMCLASSTRANPEOITEMCLASSNAME as ITEMCLASSTRANPEOITEMCLASSNAME,
               ITEMCLASSTRANPEODESCRIPTION as ITEMCLASSTRANPEODESCRIPTION,
               ITEMCLASSTRANPEOLASTUPDATEDATE as ITEMCLASSTRANPEOLASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.f_scmextractam_egpbiccextractam_itemclasstranslationextractpvo`
)

select * from f_scmextractam_egpbiccextractam_itemclasstranslationextractpvo
