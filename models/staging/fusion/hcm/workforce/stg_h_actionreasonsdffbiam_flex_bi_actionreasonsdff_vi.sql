with h_actionreasonsdffbiam_flex_bi_actionreasonsdff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               ACTN_RSN_TNL_ as ACTN_RSN_TNL_,
               ACTN_RSN_TNL_C as ACTN_RSN_TNL_C,
               ACTR_GLB_ as ACTR_GLB_,
               ACTR_GLB_C as ACTR_GLB_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               ACTR_CNTX_ as ACTR_CNTX_,
               ACTR_CNTX_C as ACTR_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2 
      from `chrome-genre-298014.sakra_stage.h_actionreasonsdffbiam_flex_bi_actionreasonsdff_vi`
)

select * from h_actionreasonsdffbiam_flex_bi_actionreasonsdff_vi
