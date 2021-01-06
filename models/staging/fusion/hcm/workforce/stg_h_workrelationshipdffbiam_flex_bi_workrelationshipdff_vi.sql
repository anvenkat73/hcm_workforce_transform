with h_workrelationshipdffbiam_flex_bi_workrelationshipdff_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               PPS_GLB_ as PPS_GLB_,
               PPS_GLB_C as PPS_GLB_C,
               WR_ATTR_ADDITIONAL_ as WR_ATTR_ADDITIONAL_,
               WR_ATTR_ADDITIONAL_C as WR_ATTR_ADDITIONAL_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               PPS_CNTX_ as PPS_CNTX_,
               PPS_CNTX_C as PPS_CNTX_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2 
      from 'chrome-genre-298014.sakra_stage.h_workrelationshipdffbiam_flex_bi_workrelationshipdff_vi'
)

select * from h_workrelationshipdffbiam_flex_bi_workrelationshipdff_vi
