with h_positioncustomerflexbiam_flex_bi_positioncustomerflex_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               S_K_5001 as S_K_5001,
               S_K_5002 as S_K_5002,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               POS_GLB_ as POS_GLB_,
               POS_GLB_C as POS_GLB_C,
               REL10_POSITION_INFO_ as REL10_POSITION_INFO_,
               REL10_POSITION_INFO_C as REL10_POSITION_INFO_C,
               FLEX_CONTEXT_ as FLEX_CONTEXT_,
               ZPR_PSTN_SGNT1_ as ZPR_PSTN_SGNT1_,
               ZPR_PSTN_SGNT1_C as ZPR_PSTN_SGNT1_C,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               NAME_FLEX_CONTEXT_ as NAME_FLEX_CONTEXT_,
               DESC_FLEX_CONTEXT_ as DESC_FLEX_CONTEXT_,
               KEY_FLEX_CONTEXT_0 as KEY_FLEX_CONTEXT_0,
               KEY_FLEX_CONTEXT_1 as KEY_FLEX_CONTEXT_1,
               KEY_FLEX_CONTEXT_2 as KEY_FLEX_CONTEXT_2,
      from 'chrome-genre-298014.sakra_stage.h_positioncustomerflexbiam_flex_bi_positioncustomerflex_vi'
)

select * from h_positioncustomerflexbiam_flex_bi_positioncustomerflex_vi
