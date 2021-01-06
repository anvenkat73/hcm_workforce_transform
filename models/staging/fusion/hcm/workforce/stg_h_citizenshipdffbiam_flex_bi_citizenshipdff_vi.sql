with h_citizenshipdffbiam_flex_bi_citizenshipdff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               CITIZENSHIP_ADDL_ as CITIZENSHIP_ADDL_,
               CITIZENSHIP_ADDL_C as CITIZENSHIP_ADDL_C,
               CTZ_GLB_ as CTZ_GLB_,
               CTZ_GLB_C as CTZ_GLB_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               CTZ_CNTX_ as CTZ_CNTX_,
               CTZ_CNTX_C as CTZ_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2,
      from 'chrome-genre-298014.sakra_stage.h_citizenshipdffbiam_flex_bi_citizenshipdff_vi'
)

select * from h_citizenshipdffbiam_flex_bi_citizenshipdff_vi
