with h_actionsdffbiam_flex_bi_actionsdff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               ACTIONS_ADDITIONAL_ as ACTIONS_ADDITIONAL_,
               ACTIONS_ADDITIONAL_C as ACTIONS_ADDITIONAL_C,
               ACTION_GLB_ as ACTION_GLB_,
               ACTION_GLB_C as ACTION_GLB_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               ACTION_CNTX_ as ACTION_CNTX_,
               ACTION_CNTX_C as ACTION_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2 
      from `chrome-genre-298014.sakra_stage.h_actionsdffbiam_flex_bi_actionsdff_vi`
)

select * from h_actionsdffbiam_flex_bi_actionsdff_vi
