 SELECT  ASGEVTRSNL.ASSIGNMENT_ID AS ASSIGNMENT_ID , 
 ASGEVTRSNL.EVENT_DATE AS EVENT_DATE, 
 ASGEVTRSNL.EVENT_SEQUENCE AS EVENT_ID, 
 -1 AS NET_GAIN_LOSS_IND, 
 CAST(ASGEVTRSNL.ASSIGNMENT_ID AS STRING)||'~'||FORMAT_DATE('%Y%m%d',PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE))||'~'||CAST(ASGEVTRSNL.EVENT_SEQUENCE AS STRING)||'~'||CAST(1 AS STRING) AS SOURCE_RECORD_ID, 
 0 AS GAIN_IND, 
 1 AS LOSS_IND, 
 PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1 AS GAIN_LOSS_DATE, 
 ASGEVTRSNL.ACTION_TYPE_CODE AS ACTION_TYPE_CODE, 
 ASGEVTRSNL.ACTION_ID AS ACTION_ID, 
 ASGEVTRSNL.ACTION_REASON_ID AS ACTION_REASON_ID, 
 NULL AS ACTION_META_REASON_CODE, 
 ASGEVTRSNL.PRV_EVT_JOB_ID AS JOB_ID, 
 ASGEVTRSNL.PRV_EVENT_DEPARTMENT_ID AS DEPARTMENT_ID, 
 ASGEVTRSNL.PERSON_ID AS PERSON_ID, 
 ASGEVTRSNL.PRV_EVENT_LOCATION_ID AS LOCATION_ID, 
 ASGEVTRSNL.PRV_EVENT_POSITION_ID AS POSITION_ID, 
 ASGEVTRSNL.PRV_EVT_GRADE_ID AS GRADE_ID, 
 COALESCE(SUPL.MANAGER_ID,-99999) AS SUPERVISOR_ID, 
 COALESCE(SUPL.MANAGER_ASSIGNMENT_ID,-99999) AS SUPERVISOR_ASSIGNMENT_ID, 
 ASGEVTRSNL.PRV_EVT_LEGAL_EMPLOYER_ID AS LEGAL_EMPLOYER_ID, 
 ASGEVTRSNL.PRV_EVT_BUSINESS_UNIT_ID AS BUSINESS_UNIT_ID, 
 ASGEVTRSNL.PRV_EVT_RPT_ESTABLISHMENT_ID AS REPORTING_ESTABLISHMENT_ID, 
 ASGEVTRSNL.PERIOD_OF_SERVICE_ID AS PERIOD_OF_SERVICE_ID, 
 ASGEVTRSNL.PRV_EVT_PERSON_TYPE_ID AS PERSON_TYPE_ID, 
 ASGEVTRSNL.PRV_EVT_SYSTEM_PERSON_TYPE AS SYSTEM_PERSON_TYPE, 
 ASGEVTRSNL.PRV_EVT_WORKER_TYPE AS WORKER_TYPE, 
 ASGEVTRSNL.PRV_EVT_LEGISLATION_CODE AS LEGISLATION_CODE, 
 ASGEVTRSNL.PRV_EVT_ASSIGNMENT_CATEGORY AS ASSIGNMENT_CATEGORY, 
 ASGEVTRSNL.PRV_EVT_ASG_STATUS_TYPE_ID AS ASSIGNMENT_STATUS_TYPE_ID, 
 ASGEVTRSNL.PRV_EVT_PAY_SYSTEM_STATUS AS PAY_SYSTEM_STATUS, 
 ASGEVTRSNL.PRV_EVT_PER_SYSTEM_STATUS AS PER_SYSTEM_STATUS, 
 ASGEVTRSNL.PRV_EVT_WORKER_CATEGORY AS WORKER_CATEGORY, 
 ASGEVTRSNL.PRV_EVT_FULL_PART_TIME_FLAG AS FULL_PART_TIME_FLAG, 
  TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1 , PARSE_DATE('%Y-%m-%d',PERL.DATE_OF_BIRTH), MONTH) / 12) AS AGE_IN_YEARS               , 
  CASE WHEN SPL.ACTUAL_TERMINATION_DATE IS NOT NULL AND PARSE_DATE('%Y-%m-%d',SPL.ACTUAL_TERMINATION_DATE) <= PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1  THEN TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',SPL.ACTUAL_TERMINATION_DATE) , PARSE_DATE('%Y-%m-%d',SPL.DATE_START), MONTH)/12)   ELSE TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1 , PARSE_DATE('%Y-%m-%d',SPL.DATE_START) , MONTH)/12)   END AS TENURE_IN_YEARS            , 
  TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1 , PARSE_DATE('%Y-%m-%d',PERL.DATE_OF_BIRTH), MONTH)) AS AGE_IN_MONTHS              , 
  CASE WHEN SPL.ACTUAL_TERMINATION_DATE IS NOT NULL AND PARSE_DATE('%Y-%m-%d',SPL.ACTUAL_TERMINATION_DATE) <= PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1  THEN TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',SPL.ACTUAL_TERMINATION_DATE) , PARSE_DATE('%Y-%m-%d',SPL.DATE_START), MONTH))   ELSE TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE) - 1 , PARSE_DATE('%Y-%m-%d',SPL.DATE_START), MONTH))   END AS TENURE_IN_MONTHS           , 
 ASGEVTRSNL.ASSIGNMENT_NUMBER AS ASSIGNMENT_NUMBER, 
 ASGEVTRSNL.ASSIGNMENT_NAME AS ASSIGNMENT_NAME , 
 ASGEVTRSNL.PRV_EVT_PRIMARY_FLAG AS PRIMARY_FLAG, 
 ASGEVTRSNL.PRV_EVT_PRIMARY_ASSG_FLAG AS PRIMARY_ASSIGNMENT_FLAG, 
 HDCL.HEADCOUNT AS HEADCOUNT, 
 FTEL.FTE AS FTE, 
 1 AS EVENT_ASG_COUNT, 
  CASE WHEN ASGEVTRSNL.JOB_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.JOB_ID <> -99999 ) THEN 1 ELSE 0 END AS JOB_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.JOB_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVT_JOB_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.JOB_ID <> -99999 ) THEN ASGEVTRSNL.JOB_ID ELSE -99999 END AS FROM_JOB_ID , 
  CASE WHEN ASGEVTRSNL.JOB_CHANGE_IND=1 THEN ASGEVTRSNL.JOB_ID ELSE -99999 END AS TO_JOB_ID   , 
 CASE WHEN ASGEVTRSNL.GRADE_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.GRADE_ID <> -99999 ) THEN 1 ELSE 0 END AS GRADE_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.GRADE_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVT_GRADE_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.GRADE_ID <> -99999 ) THEN ASGEVTRSNL.GRADE_ID ELSE -99999 END AS FROM_GRADE_ID , 
  CASE WHEN ASGEVTRSNL.GRADE_CHANGE_IND=1 THEN ASGEVTRSNL.GRADE_ID ELSE -99999 END AS TO_GRADE_ID   , 
 CASE WHEN ASGEVTRSNL.LOCATION_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.LOCATION_ID <> -99999 ) THEN 1 ELSE 0 END AS LOCATION_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.LOCATION_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVENT_LOCATION_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.LOCATION_ID <> -99999 ) THEN ASGEVTRSNL.LOCATION_ID ELSE -99999 END AS FROM_LOCATION_ID , 
  CASE WHEN ASGEVTRSNL.LOCATION_CHANGE_IND=1 THEN ASGEVTRSNL.LOCATION_ID ELSE -99999 END AS TO_LOCATION_ID   , 
 CASE WHEN ASGEVTRSNL.POSITION_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.POSITION_ID <> -99999 ) THEN 1 ELSE 0 END AS POSITION_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.POSITION_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVENT_POSITION_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.POSITION_ID <> -99999 ) THEN ASGEVTRSNL.POSITION_ID ELSE -99999 END AS FROM_POSITION_ID , 
  CASE WHEN ASGEVTRSNL.POSITION_CHANGE_IND=1 THEN ASGEVTRSNL.POSITION_ID ELSE -99999 END AS TO_POSITION_ID   , 
 CASE WHEN ASGEVTRSNL.DEPARTMENT_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.DEPARTMENT_ID <> -99999 ) THEN 1 ELSE 0 END AS DEPARTMENT_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.DEPARTMENT_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVENT_DEPARTMENT_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.DEPARTMENT_ID <> -99999 ) THEN ASGEVTRSNL.DEPARTMENT_ID ELSE -99999 END AS FROM_DEPARTMENT_ID , 
  CASE WHEN ASGEVTRSNL.DEPARTMENT_CHANGE_IND=1 THEN ASGEVTRSNL.DEPARTMENT_ID ELSE -99999 END AS TO_DEPARTMENT_ID   , 
  CASE WHEN ASGEVTRSNL.MANAGER_CHANGE_IND=1 OR ((ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1) AND SUPL.MANAGER_ID <> -99999 ) THEN 1 ELSE 0 END AS SUPERVISOR_GAIN_LOSS_IND , 
  CASE WHEN ASGEVTRSNL.MANAGER_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_SUPERVISOR_ASSIGNMENT_ID WHEN ((ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1) AND SUPL.MANAGER_ASSIGNMENT_ID <> -99999 ) THEN SUPL.MANAGER_ASSIGNMENT_ID  ELSE -99999 END AS FROM_SUPERVISOR_ASG_ID   , 
  CASE WHEN ASGEVTRSNL.MANAGER_CHANGE_IND=1 THEN ASGEVTRSNL.SUPERVISOR_ASSIGNMENT_ID ELSE -99999 END AS TO_SUPERVISOR_ASG_ID     , 
  CASE WHEN ASGEVTRSNL.MANAGER_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_SUPERVISOR_ID WHEN ((ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1) AND SUPL.MANAGER_ID <> -99999)  THEN SUPL.MANAGER_ID ELSE -99999 END AS FROM_SUPERVISOR_PERSON_ID, 
  CASE WHEN ASGEVTRSNL.MANAGER_CHANGE_IND=1 THEN ASGEVTRSNL.SUPERVISOR_ID ELSE -99999 END AS TO_SUPERVISOR_PERSON_ID  , 
 CASE WHEN ASGEVTRSNL.BUSINESS_UNIT_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.BUSINESS_UNIT_ID <> -99999 ) THEN 1 ELSE 0 END AS BUSINESS_UNIT_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.BUSINESS_UNIT_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVT_BUSINESS_UNIT_ID WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.BUSINESS_UNIT_ID <> -99999 ) THEN ASGEVTRSNL.BUSINESS_UNIT_ID ELSE -99999 END AS FROM_BUSINESS_UNIT_ID , 
  CASE WHEN ASGEVTRSNL.BUSINESS_UNIT_CHANGE_IND=1 THEN ASGEVTRSNL.BUSINESS_UNIT_ID ELSE -99999 END AS TO_BUSINESS_UNIT_ID   , 
 CASE WHEN ASGEVTRSNL.FULL_PART_TIME_CHANGE_IND=1 OR (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.FULL_PART_TIME_FLAG <> '~NOVALUE~' ) THEN 1 ELSE 0 END AS FULL_PART_TIME_GAIN_LOSS_IND, 
  CASE WHEN ASGEVTRSNL.FULL_PART_TIME_CHANGE_IND=1 THEN ASGEVTRSNL.PRV_EVT_FULL_PART_TIME_FLAG WHEN (( ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) AND ASGEVTRSNL.FULL_PART_TIME_FLAG <> '~NOVALUE~' ) THEN ASGEVTRSNL.FULL_PART_TIME_FLAG ELSE '~NOVALUE~' END AS FROM_FULL_PART_TIME_FLAG , 
  CASE WHEN ASGEVTRSNL.FULL_PART_TIME_CHANGE_IND=1 THEN ASGEVTRSNL.FULL_PART_TIME_FLAG ELSE '~NOVALUE~' END AS TO_FULL_PART_TIME_FLAG   , 
 ASGEVTRSNL.HIRE_EVENT_IND AS HIRE_EVENT_IND, 
 ASGEVTRSNL.REHIRE_EVENT_IND AS REHIRE_EVENT_IND, 
 ASGEVTRSNL.TERM_EVENT_IND AS TERM_EVENT_IND, 
 ASGEVTRSNL.GLB_TRANSFER_IN_IND AS GLB_TRANSFER_IN_IND, 
 ASGEVTRSNL.GLB_TRANSFER_OUT_IND AS GLB_TRANSFER_OUT_IND, 
 ASGEVTRSNL.GLB_TEMP_TRANSFER_IN_IND AS GLB_TEMP_TRANSFER_IN_IND, 
 ASGEVTRSNL.GLB_TEMP_TRANSFER_OUT_IND AS GLB_TEMP_TRANSFER_OUT_IND, 
 ASGEVTRSNL.TRANSFER_EVENT_IND AS TRANSFER_EVENT_IND, 
 ASGEVTRSNL.PROMOTION_EVENT_IND AS PROMOTION_EVENT_IND, 
 ASGEVTRSNL.REORG_EVENT_IND AS REORG_EVENT_IND, 
 CASE WHEN ASGEVTRSNL.HIRE_EVENT_IND=0 AND ASGEVTRSNL.REHIRE_EVENT_IND=0 AND ASGEVTRSNL.TERM_EVENT_IND=0 AND ASGEVTRSNL.GLB_TRANSFER_IN_IND=0 AND ASGEVTRSNL.GLB_TRANSFER_OUT_IND=0 AND ASGEVTRSNL.GLB_TEMP_TRANSFER_IN_IND=0 AND ASGEVTRSNL.GLB_TEMP_TRANSFER_OUT_IND=0 AND ASGEVTRSNL.TRANSFER_EVENT_IND=0 AND ASGEVTRSNL.PROMOTION_EVENT_IND=0 AND ASGEVTRSNL.REORG_EVENT_IND=0 THEN 1 ELSE 0 END AS OTHER_EVENT_IND
 FROM  {{ ref('DW_WRKFRC_ASG_EVENT_RSN_F') }} ASGEVTRSNL 
       LEFT OUTER JOIN {{ ref('DW_PERSON_D') }} PERL  ON ( ASGEVTRSNL.PERSON_ID = PERL.PERSON_ID ) 
       LEFT OUTER JOIN  {{ ref('DW_SERVICE_PERIOD_D') }} SPL  ON ( ASGEVTRSNL.PERIOD_OF_SERVICE_ID = SPL.PERIOD_OF_SERVICE_ID AND ASGEVTRSNL.LEGISLATION_CODE = SPL.LEGISLATION_CODE ) 
       LEFT OUTER JOIN  {{ ref('DW_WRKFRC_ASG_SUP_CHANGE_STAGE') }} SUPL  ON ( ASGEVTRSNL.ASSIGNMENT_ID = SUPL.ASSIGNMENT_ID AND (PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1) BETWEEN SUPL.EFFECTIVE_START_DATE AND SUPL.EFFECTIVE_END_DATE ) 
       LEFT OUTER JOIN  {{ ref('DW_WRKFRC_ASG_HDC_CHANGE_STAGE') }} HDCL  ON ( ASGEVTRSNL.ASSIGNMENT_ID = HDCL.ASSIGNMENT_ID AND (PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1) BETWEEN HDCL.EFFECTIVE_START_DATE AND HDCL.EFFECTIVE_END_DATE ) 
       LEFT OUTER JOIN  {{ ref('DW_WRKFRC_ASG_FTE_CHANGE_STAGE') }} FTEL  ON ( ASGEVTRSNL.ASSIGNMENT_ID = FTEL.ASSIGNMENT_ID AND (PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1) BETWEEN FTEL.EFFECTIVE_START_DATE AND FTEL.EFFECTIVE_END_DATE ) 
 WHERE  (ASGEVTRSNL.TERM_EVENT_IND=1 OR ASGEVTRSNL.JOB_CHANGE_IND =1 OR 
         ASGEVTRSNL.GRADE_CHANGE_IND =1 OR  ASGEVTRSNL.LOCATION_CHANGE_IND =1 OR 
         ASGEVTRSNL.POSITION_CHANGE_IND =1 OR ASGEVTRSNL.DEPARTMENT_CHANGE_IND =1 OR  
         ASGEVTRSNL.MANAGER_CHANGE_IND =1 OR ASGEVTRSNL.HEADCOUNT_CHANGE_IND =1 OR 
         ASGEVTRSNL.FTE_CHANGE_IND =1 OR ASGEVTRSNL.BUSINESS_UNIT_CHANGE_IND=1 OR 
         ASGEVTRSNL.FULL_PART_TIME_CHANGE_IND=1 OR ASGEVTRSNL.GLB_TRANSFER_OUT_IND=1 OR 
         ASGEVTRSNL.ACTION_TYPE_CODE IN ('EMPL_END_ASG','EMPL_END_PROBATION','EMPL_END_TEMP_ASG','EMPL_END_TERMS','ORA_EMPL_CANCEL_WR') 
         OR ASGEVTRSNL.ASG_END_OTHERS_IND=1 ) 
   AND PARSE_DATE('%Y-%m-%d',ASGEVTRSNL.EVENT_DATE)-1 >= PARSE_DATE('%Y-%m-%d','{{ var("VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE") }}')
