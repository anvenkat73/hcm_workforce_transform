with h_orgattributesdffbiam_flex_bi_orgattributesdff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               S_K_5001 as S_K_5001,
               S_K_5002 as S_K_5002,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               ORG_GLOBAL_ as ORG_GLOBAL_,
               ORG_GLOBAL_C as ORG_GLOBAL_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               ORG_CNTX_ as ORG_CNTX_,
               ORG_CNTX_C as ORG_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               DESC_ORG_GLOBAL_ as DESC_ORG_GLOBAL_,
               KEY_ORG_GLOBAL_0 as KEY_ORG_GLOBAL_0,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2,
      from 'chrome-genre-298014.sakra_stage.h_orgattributesdffbiam_flex_bi_orgattributesdff_vi'
)

select * from h_orgattributesdffbiam_flex_bi_orgattributesdff_vi
