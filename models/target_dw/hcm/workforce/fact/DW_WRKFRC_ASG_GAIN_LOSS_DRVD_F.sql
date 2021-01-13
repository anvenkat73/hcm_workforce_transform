 SELECT  ERFLS.ASSIGNMENT_ID AS ASSIGNMENT_ID , 
 SUPL.EFFECTIVE_START_DATE AS EVENT_DATE, 
 99998 AS EVENT_ID, 
 -1 AS NET_GAIN_LOSS_IND, 
  CAST(ERFLS.ASSIGNMENT_ID AS STRING)||'~'||FORMAT_DATE('%Y%m%d',SUPL.EFFECTIVE_START_DATE)||'~'||'99998'||'~'||'-1' AS SOURCE_RECORD_ID , 
 0 AS GAIN_IND, 
 1 AS LOSS_IND, 
 SUPL.EFFECTIVE_START_DATE-1 AS GAIN_LOSS_DATE, 
 NULL AS ACTION_TYPE_CODE, 
 -99999 AS ACTION_ID, 
 -99999 AS ACTION_REASON_ID, 
 NULL AS ACTION_META_REASON_CODE, 
 ERFLS.JOB_ID AS JOB_ID, 
 ERFLS.DEPARTMENT_ID AS DEPARTMENT_ID, 
 ERFLS.PERSON_ID AS PERSON_ID, 
 ERFLS.LOCATION_ID AS LOCATION_ID, 
 ERFLS.POSITION_ID AS POSITION_ID, 
 ERFLS.GRADE_ID AS GRADE_ID, 
 ERFLS.SUPERVISOR_ASSIGNMENT_ID AS SUPERVISOR_ASG_ID, 
 ERFLS.SUPERVISOR_ID AS SUPERVISOR_ID, 
 ERFLS.LEGAL_EMPLOYER_ID AS LEGAL_EMPLOYER_ID, 
 ERFLS.BUSINESS_UNIT_ID AS BUSINESS_UNIT_ID, 
 ERFLS.REPORTING_ESTABLISHMENT_ID AS REPORTING_ESTABLISHMENT_ID, 
 ERFLS.PERIOD_OF_SERVICE_ID AS PERIOD_OF_SERVICE_ID, 
 ERFLS.PERSON_TYPE_ID AS PERSON_TYPE_ID, 
 ERFLS.SYSTEM_PERSON_TYPE AS SYSTEM_PERSON_TYPE, 
 ERFLS.WORKER_TYPE AS WORKER_TYPE, 
 ERFLS.LEGISLATION_CODE AS LEGISLATION_CODE, 
 ERFLS.ASSIGNMENT_CATEGORY AS ASSIGNMENT_CATEGORY, 
 ERFLS.ASSIGNMENT_STATUS_TYPE_ID AS ASSIGNMENT_STATUS_TYPE_ID, 
 ERFLS.PAY_SYSTEM_STATUS AS PAY_SYSTEM_STATUS, 
 ERFLS.PER_SYSTEM_STATUS AS PER_SYSTEM_STATUS, 
 ERFLS.WORKER_CATEGORY AS WORKER_CATEGORY, 
 ERFLS.FULL_PART_TIME_FLAG AS FULL_PART_TIME_FLAG, 
  TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ERFLS.EVENT_DATE) , PARSE_DATE('%Y-%m-%d',PERLS.DATE_OF_BIRTH) , MONTH)  / 12) AS AGE_IN_YEARS , 
  CASE WHEN SPLS.ACTUAL_TERMINATION_DATE IS NOT NULL AND SPLS.ACTUAL_TERMINATION_DATE <= ERFLS.EVENT_DATE  THEN TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',SPLS.ACTUAL_TERMINATION_DATE ), PARSE_DATE('%Y-%m-%d',SPLS.DATE_START), MONTH)/12)   ELSE TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ERFLS.EVENT_DATE) , PARSE_DATE('%Y-%m-%d',SPLS.DATE_START), MONTH)/12)   END AS TENURE_IN_YEARS  , 
  TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ERFLS.EVENT_DATE) , PARSE_DATE('%Y-%m-%d',PERLS.DATE_OF_BIRTH), MONTH)) AS AGE_IN_MONTHS              , 
  CASE WHEN SPLS.ACTUAL_TERMINATION_DATE IS NOT NULL AND SPLS.ACTUAL_TERMINATION_DATE <= ERFLS.EVENT_DATE  THEN TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',SPLS.ACTUAL_TERMINATION_DATE ), PARSE_DATE('%Y-%m-%d',SPLS.DATE_START), MONTH))   ELSE TRUNC(DATE_DIFF(PARSE_DATE('%Y-%m-%d',ERFLS.EVENT_DATE) , PARSE_DATE('%Y-%m-%d',SPLS.DATE_START), MONTH))   END AS TENURE_IN_MONTHS           , 
 ERFLS.ASSIGNMENT_NUMBER AS ASSIGNMENT_NUMBER, 
 ERFLS.ASSIGNMENT_NAME AS ASSIGNMENT_NAME , 
 ERFLS.PRIMARY_FLAG AS PRIMARY_FLAG, 
 ERFLS.PRIMARY_ASSIGNMENT_FLAG AS PRIMARY_ASSIGNMENT_FLAG, 
 ERFLS.HEADCOUNT AS EVENT_HEADCOUNT, 
 ERFLS.FTE AS EVENT_FTE, 
 1 AS EVENT_ASG_COUNT, 
  0 AS JOB_GAIN_LOSS_IND, 
  NULL AS FROM_JOB_ID, 
  NULL AS TO_JOB_ID, 
 0 AS GRADE_GAIN_LOSS_IND, 
 NULL AS FROM_GRADE_ID, 
 NULL AS TO_GRADE_ID, 
 0 AS LOCATION_GAIN_LOSS_IND, 
 NULL AS FROM_LOCATION_ID, 
 NULL AS TO_LOCATION_ID, 
 0 AS POSITION_GAIN_LOSS_IND, 
 NULL AS FROM_POSITION_ID, 
 NULL AS TO_POSITION_ID, 
 0 AS DEPARTMENT_GAIN_LOSS_IND, 
 NULL AS FROM_DEPARTMENT_ID, 
 NULL AS TO_DEPARTMENT_ID, 
 1 AS SUPERVISOR_GAIN_LOSS_IND, 
 ERFLS.SUPERVISOR_ASSIGNMENT_ID AS FROM_SUPERVISOR_ASG_ID, 
 -99999 AS TO_SUPERVISOR_ASG_ID, 
 ERFLS.SUPERVISOR_ID AS FROM_SUPERVISOR_PERSON_ID, 
 -99999 AS TO_SUPERVISOR_PERSON_ID, 
 0 AS BUSINESS_UNIT_GAIN_LOSS_IND, 
 NULL AS FROM_BUSINESS_UNIT_ID, 
 NULL AS TO_BUSINESS_UNIT_ID, 
 0 AS FULL_PART_TIME_GAIN_LOSS_IND, 
 NULL AS FROM_FULL_PART_TIME_FLAG, 
 NULL AS TO_FULL_PART_TIME_FLAG, 
 0 AS HIRE_EVENT_IND, 
 0 AS REHIRE_EVENT_IND, 
 0 AS TERM_EVENT_IND, 
 0 AS GLB_TRANSFER_IN_IND, 
 0 AS GLB_TRANSFER_OUT_IND, 
 0 AS GLB_TEMP_TRANSFER_IN_IND, 
 0 AS GLB_TEMP_TRANSFER_OUT_IND, 
 0 AS TRANSFER_EVENT_IND, 
 0 AS PROMOTION_EVENT_IND, 
 0 AS REORG_EVENT_IND, 
 0 AS OTHER_EVENT_IND
 FROM  {{ ref('DW_WRKFRC_ASG_SUP_CHANGE_STAGE') }} SUPL 
     INNER JOIN {{ ref('DW_WRKFRC_ASG_EVENT_RSN_F') }} ERFLS  ON (SUPL.ASSIGNMENT_ID = ERFLS.ASSIGNMENT_ID AND (SUPL.EFFECTIVE_START_DATE-1) BETWEEN PARSE_DATE('%Y-%m-%d',ERFLS.EVENT_DATE) AND PARSE_DATE('%Y-%m-%d',ERFLS.NEXT_EVENT_DATE) AND ERFLS.DAY_FINAL_CHANGE_FLAG = 'Y') 
     LEFT OUTER JOIN  {{ ref('DW_PERSON_D') }} PERLS  ON ( ERFLS.PERSON_ID = PERLS.PERSON_ID ) 
     LEFT OUTER JOIN  {{ ref('DW_SERVICE_PERIOD_D') }} SPLS  ON ( ERFLS.PERIOD_OF_SERVICE_ID = SPLS.PERIOD_OF_SERVICE_ID AND ERFLS.LEGISLATION_CODE = SPLS.LEGISLATION_CODE ) 
 WHERE  SUPL.MANAGER_ASSIGNMENT_ID=-99999 AND SUPL.MANAGER_CHANGE_IND=1
