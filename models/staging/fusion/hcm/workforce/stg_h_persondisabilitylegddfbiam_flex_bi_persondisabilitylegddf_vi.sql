with h_persondisabilitylegddfbiam_flex_bi_persondisabilitylegddf_vi as ( 
      select 
               S_K_5000 as S_K_5000,
               S_K_5001 as S_K_5001,
               S_K_5002 as S_K_5002,
               APPLICATIONID as APPLICATIONID,
               FLEXFIELDCODE as FLEXFIELDCODE,
               OR_RX_RPRTNG_TSCR_ as OR_RX_RPRTNG_TSCR_,
               OR_RX_RPRTNG_TSCR_C as OR_RX_RPRTNG_TSCR_C,
               SCL_SCRTY_RLFNC_ as SCL_SCRTY_RLFNC_,
               SCL_SCRTY_RLFNC_C as SCL_SCRTY_RLFNC_C,
               SCL_SCRTY_RLFNC_V as SCL_SCRTY_RLFNC_V,
               HRX_DE_DIS_1KL_ as HRX_DE_DIS_1KL_,
               HRX_DE_DIS_1KL_C as HRX_DE_DIS_1KL_C,
               HRX_DE_DIS_1KL_V as HRX_DE_DIS_1KL_V,
               HRX_T_TS_T_LCTN_ as HRX_T_TS_T_LCTN_,
               HRX_T_TS_T_LCTN_C as HRX_T_TS_T_LCTN_C,
               HRX_DE_DIS_B_ as HRX_DE_DIS_B_,
               HRX_DE_DIS_B_C as HRX_DE_DIS_B_C,
               HRX_DE_DIS_B_V as HRX_DE_DIS_B_V,
               HRX_DE_DIS_BL_ as HRX_DE_DIS_BL_,
               HRX_DE_DIS_BL_C as HRX_DE_DIS_BL_C,
               HRX_DE_DIS_BL_V as HRX_DE_DIS_BL_V,
               HRX_T_TS_CRT_THRTY_ as HRX_T_TS_CRT_THRTY_,
               HRX_T_TS_CRT_THRTY_C as HRX_T_TS_CRT_THRTY_C,
               HRX_T_TS_CRT_THRTY_V as HRX_T_TS_CRT_THRTY_V,
               HRX_DE_DIS_COEQUAL_ as HRX_DE_DIS_COEQUAL_,
               HRX_DE_DIS_COEQUAL_C as HRX_DE_DIS_COEQUAL_C,
               HRX_DE_DIS_COEQUAL_V as HRX_DE_DIS_COEQUAL_V,
               HRX_DE_DIS_DEGREE_ as HRX_DE_DIS_DEGREE_,
               HRX_DE_DIS_DEGREE_C as HRX_DE_DIS_DEGREE_C,
               HRX_DE_DIS_DEGREE_V as HRX_DE_DIS_DEGREE_V,
               HRX_DE_DIS_EB_ as HRX_DE_DIS_EB_,
               HRX_DE_DIS_EB_C as HRX_DE_DIS_EB_C,
               HRX_DE_DIS_EB_V as HRX_DE_DIS_EB_V,
               HRX_DE_DIS_G_ as HRX_DE_DIS_G_,
               HRX_DE_DIS_G_C as HRX_DE_DIS_G_C,
               HRX_DE_DIS_G_V as HRX_DE_DIS_G_V,
               HRX_DE_DIS_GL_ as HRX_DE_DIS_GL_,
               HRX_DE_DIS_GL_C as HRX_DE_DIS_GL_C,
               HRX_DE_DIS_GL_V as HRX_DE_DIS_GL_V,
               HRX_DE_DIS_H_ as HRX_DE_DIS_H_,
               HRX_DE_DIS_H_C as HRX_DE_DIS_H_C,
               HRX_DE_DIS_H_V as HRX_DE_DIS_H_V,
               HRX_T_TS_NR_BN_CRTF_ as HRX_T_TS_NR_BN_CRTF_,
               HRX_T_TS_NR_BN_CRTF_C as HRX_T_TS_NR_BN_CRTF_C,
               HRX_T_TS_NR_BN_CRTF_V as HRX_T_TS_NR_BN_CRTF_V,
               HRX_T_TS_PT_WRC_TL_ as HRX_T_TS_PT_WRC_TL_,
               HRX_T_TS_PT_WRC_TL_C as HRX_T_TS_PT_WRC_TL_C,
               HRX_T_TS_PT_WRC_TL_V as HRX_T_TS_PT_WRC_TL_V,
               HRX_DE_DIS_RF_ as HRX_DE_DIS_RF_,
               HRX_DE_DIS_RF_C as HRX_DE_DIS_RF_C,
               HRX_DE_DIS_RF_V as HRX_DE_DIS_RF_V,
               HRX_DE_DIS_VB_ as HRX_DE_DIS_VB_,
               HRX_DE_DIS_VB_C as HRX_DE_DIS_VB_C,
               HRX_DE_DIS_VB_V as HRX_DE_DIS_VB_V,
               HRX_T_TS_WRPLC_T_ as HRX_T_TS_WRPLC_T_,
               HRX_T_TS_WRPLC_T_C as HRX_T_TS_WRPLC_T_C,
               HRX_DE_DIS_AG_ as HRX_DE_DIS_AG_,
               HRX_DE_DIS_AG_C as HRX_DE_DIS_AG_C,
               HRX_DE_DIS_AG_V as HRX_DE_DIS_AG_V,
               HRX_T_RGSTRTN_T_ as HRX_T_RGSTRTN_T_,
               HRX_T_RGSTRTN_T_C as HRX_T_RGSTRTN_T_C,
               HRX_DE_VALID_FROM_DT_ as HRX_DE_VALID_FROM_DT_,
               HRX_DE_VALID_FROM_DT_C as HRX_DE_VALID_FROM_DT_C,
               HRX_DE_VALID_TO_DT_ as HRX_DE_VALID_TO_DT_,
               HRX_DE_VALID_TO_DT_C as HRX_DE_VALID_TO_DT_C,
               DOETH_INCLUDE_ as DOETH_INCLUDE_,
               DOETH_INCLUDE_C as DOETH_INCLUDE_C,
               DOETH_INCLUDE_V as DOETH_INCLUDE_V,
               LONG_UNEMPLOYMENT_ as LONG_UNEMPLOYMENT_,
               LONG_UNEMPLOYMENT_C as LONG_UNEMPLOYMENT_C,
               LONG_UNEMPLOYMENT_V as LONG_UNEMPLOYMENT_V,
               PREVIOUS_PLACEMENT_ as PREVIOUS_PLACEMENT_,
               PREVIOUS_PLACEMENT_C as PREVIOUS_PLACEMENT_C,
               PREVIOUS_PLACEMENT_V as PREVIOUS_PLACEMENT_V,
               SERIOUS_DISABILITY_ as SERIOUS_DISABILITY_,
               SERIOUS_DISABILITY_C as SERIOUS_DISABILITY_C,
               SERIOUS_DISABILITY_V as SERIOUS_DISABILITY_V,
               SRS_TSBLTY_T_ as SRS_TSBLTY_T_,
               SRS_TSBLTY_T_C as SRS_TSBLTY_T_C,
               SRS_TSBLTY_TRTN_ as SRS_TSBLTY_TRTN_,
               SRS_TSBLTY_TRTN_C as SRS_TSBLTY_TRTN_C,
               SRS_TSBLTY_TRTN_V as SRS_TSBLTY_TRTN_V,
               DSBLTY_PYNT_TYP_ as DSBLTY_PYNT_TYP_,
               DSBLTY_PYNT_TYP_C as DSBLTY_PYNT_TYP_C,
               DSBLTY_PYNT_TYP_V as DSBLTY_PYNT_TYP_V,
               PROOF_ATTACHED_ as PROOF_ATTACHED_,
               PROOF_ATTACHED_C as PROOF_ATTACHED_C,
               PROOF_ATTACHED_V as PROOF_ATTACHED_V,
               DISABILITY_RANGE_ as DISABILITY_RANGE_,
               DISABILITY_RANGE_C as DISABILITY_RANGE_C,
               DISABILITY_RANGE_V as DISABILITY_RANGE_V,
               REPORTING_DESCRIPTION_ as REPORTING_DESCRIPTION_,
               REPORTING_DESCRIPTION_C as REPORTING_DESCRIPTION_C,
               OR_RX_NX_TSB_CNSGNC_ as OR_RX_NX_TSB_CNSGNC_,
               OR_RX_NX_TSB_CNSGNC_C as OR_RX_NX_TSB_CNSGNC_C,
               OR_RX_NX_TSB_CNSGNC_V as OR_RX_NX_TSB_CNSGNC_V,
               OR_RX_NX_TSB_CNTRL_ as OR_RX_NX_TSB_CNTRL_,
               OR_RX_NX_TSB_CNTRL_C as OR_RX_NX_TSB_CNTRL_C,
               OR_RX_NX_TSB_CNTRL_V as OR_RX_NX_TSB_CNTRL_V,
               OR_RX_NX_TSB_SBSTST_ as OR_RX_NX_TSB_SBSTST_,
               OR_RX_NX_TSB_SBSTST_C as OR_RX_NX_TSB_SBSTST_C,
               OR_RX_NX_LBR_RSC_TYP_ as OR_RX_NX_LBR_RSC_TYP_,
               OR_RX_NX_LBR_RSC_TYP_C as OR_RX_NX_LBR_RSC_TYP_C,
               OR_RX_NX_LBR_RSC_TYP_V as OR_RX_NX_LBR_RSC_TYP_V,
               OR_RX_NX_RLT_TSBLTY_ as OR_RX_NX_RLT_TSBLTY_,
               OR_RX_NX_RLT_TSBLTY_C as OR_RX_NX_RLT_TSBLTY_C,
               ORA_HRX_QA_RPT_DESC_ as ORA_HRX_QA_RPT_DESC_,
               ORA_HRX_QA_RPT_DESC_C as ORA_HRX_QA_RPT_DESC_C,
               EMPLOYMENT_OFFICE_ as EMPLOYMENT_OFFICE_,
               EMPLOYMENT_OFFICE_C as EMPLOYMENT_OFFICE_C,
               EMPLOYMENT_OFFICE_V as EMPLOYMENT_OFFICE_V,
               OR_RX_S_RPRTNG_TSCR_ as OR_RX_S_RPRTNG_TSCR_,
               OR_RX_S_RPRTNG_TSCR_C as OR_RX_S_RPRTNG_TSCR_C,
               ADA_CONFIRMED_BY_ as ADA_CONFIRMED_BY_,
               ADA_CONFIRMED_BY_C as ADA_CONFIRMED_BY_C,
               ADA_COST_ as ADA_COST_,
               ADA_COST_C as ADA_COST_C,
               ADA_DATE_CONFIRMED_ as ADA_DATE_CONFIRMED_,
               ADA_DATE_CONFIRMED_C as ADA_DATE_CONFIRMED_C,
               ADA_DATE_PROVIDED_ as ADA_DATE_PROVIDED_,
               ADA_DATE_PROVIDED_C as ADA_DATE_PROVIDED_C,
               ADA_DATE_REQUESTED_ as ADA_DATE_REQUESTED_,
               ADA_DATE_REQUESTED_C as ADA_DATE_REQUESTED_C,
               ADA_DESCRIPTION_ as ADA_DESCRIPTION_,
               ADA_DESCRIPTION_C as ADA_DESCRIPTION_C,
               ADA_STATUS_ as ADA_STATUS_,
               ADA_STATUS_C as ADA_STATUS_C,
               ADA_STATUS_V as ADA_STATUS_V,
               ADA_TYPE_ as ADA_TYPE_,
               ADA_TYPE_C as ADA_TYPE_C,
               ADA_TYPE_V as ADA_TYPE_V,
               CREATIONDATE as CREATIONDATE,
               CREATEDBY as CREATEDBY,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY 
      from `chrome-genre-298014.sakra_stage.h_persondisabilitylegddfbiam_flex_bi_persondisabilitylegddf_vi`
)

select * from h_persondisabilitylegddfbiam_flex_bi_persondisabilitylegddf_vi
