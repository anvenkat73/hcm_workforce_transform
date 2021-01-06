with h_persondisabilitydffbiam_flex_bi_persondisabilitydff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               S_K_5001 as S_K_5001,
               S_K_5002 as S_K_5002,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY 
      from 'chrome-genre-298014.sakra_stage.h_persondisabilitydffbiam_flex_bi_persondisabilitydff_vi'
)

select * from h_persondisabilitydffbiam_flex_bi_persondisabilitydff_vi
