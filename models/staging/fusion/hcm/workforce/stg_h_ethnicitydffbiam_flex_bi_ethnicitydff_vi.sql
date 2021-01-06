with h_ethnicitydffbiam_flex_bi_ethnicitydff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               ETHNICITY_1_ as ETHNICITY_1_,
               ETHNICITY_1_C as ETHNICITY_1_C,
               ETH_GLB_ as ETH_GLB_,
               ETH_GLB_C as ETH_GLB_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               ETH_CNTX_ as ETH_CNTX_,
               ETH_CNTX_C as ETH_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2,
      from 'chrome-genre-298014.sakra_stage.h_ethnicitydffbiam_flex_bi_ethnicitydff_vi'
)

select * from h_ethnicitydffbiam_flex_bi_ethnicitydff_vi
