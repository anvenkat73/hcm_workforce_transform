with h_actionslegddfbiam_flex_bi_actionslegddf_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY 
      from `chrome-genre-298014.sakra_stage.h_actionslegddfbiam_flex_bi_actionslegddf_vi`
)

select * from h_actionslegddfbiam_flex_bi_actionslegddf_vi
