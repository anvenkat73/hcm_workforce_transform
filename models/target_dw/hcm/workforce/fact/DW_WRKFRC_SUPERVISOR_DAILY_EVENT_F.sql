 SELECT  ASG_EVT.MANAGER_ASSIGNMENT_ID AS MANAGER_ASSIGNMENT_ID        , 
  ASG_EVT.MANAGER_ID AS MANAGER_ID                   , 
  COALESCE(DW_MANAGER_DRILLDOWN.MANAGER_ASSIGNMENT_ID,-99999) AS DRILLDOWN_MANAGER_ASSIGNMENT_ID        , 
  COALESCE(DW_MANAGER_DRILLDOWN.MANAGER_ID,-99999) AS DRILLDOWN_MANAGER_ID                   , 
  ASG_EVT.EVENT_DATE AS EVENT_DATE                   , 
  ASG_EVT.LEVEL_DISTANCE AS LEVEL_DISTANCE               , 
  ASG_EVT.MANAGER_IND AS MANAGER_IND                  , 
  ASG_EVT.DEPARTMENT_ID AS DEPARTMENT_ID                , 
  ASG_EVT.JOB_ID AS JOB_ID                       , 
  ASG_EVT.JOB_FAMILY_ID AS JOB_FAMILY_ID                , 
  ASG_EVT.LOCATION_ID AS LOCATION_ID                  , 
  ASG_EVT.POSITION_ID AS POSITION_ID                  , 
  ASG_EVT.LEGAL_EMPLOYER_ID AS LEGAL_EMPLOYER_ID            , 
  ASG_EVT.BUSINESS_UNIT_ID AS BUSINESS_UNIT_ID             , 
  ASG_EVT.ASSIGNMENT_STATUS_TYPE_ID AS ASSIGNMENT_STATUS_TYPE_ID    , 
  ASG_EVT.WORKER_TYPE AS WORKER_TYPE                  , 
  ASG_EVT.WORKER_CATEGORY AS WORKER_CATEGORY              , 
  ASG_EVT.ASSIGNMENT_CATEGORY AS ASSIGNMENT_CATEGORY          , 
  ASG_EVT.LEGISLATION_CODE AS LEGISLATION_CODE             , 
  COALESCE(ASG_EVT.COUNTRY,'~NOVALUE~') AS COUNTRY                      , 
  ASG_EVT.SEX AS SEX                          , 
  ASG_EVT.MARITAL_STATUS AS MARITAL_STATUS               , 
  ASG_EVT.HIGHEST_EDUCATION_LEVEL AS HIGHEST_EDUCATION_LEVEL      , 
  ASG_EVT.ETHNICITY AS ETHNICITY                    , 
  ASG_EVT.RELIGION AS RELIGION                     , 
  ASG_EVT.DISABILITY_FLAG AS DISABILITY_FLAG              , 
  ASG_EVT.SYSTEM_PERSON_TYPE AS SYSTEM_PERSON_TYPE           , 
  ASG_EVT.PAY_SYSTEM_STATUS AS PAY_SYSTEM_STATUS            , 
  ASG_EVT.PER_SYSTEM_STATUS AS PER_SYSTEM_STATUS            , 
  TO_CHAR(ASG_EVT.MANAGER_ASSIGNMENT_ID)||'~'|| TO_CHAR((ASG_EVT.EVENT_DATE),'YYYYMMDD') AS SOURCE_RECORD_ID             , 
  SUM(ASG_EVT.HEADCOUNT) AS HEADCOUNT_NUMBER             , 
  SUM(ASG_EVT.FTE) AS FTE_NUMBER                   , 
  SUM( ASG_EVT.HIRE_EVENT_IND ) AS HIRE_EVENT_IND               , 
  SUM( ASG_EVT.REHIRE_EVENT_IND ) AS REHIRE_EVENT_IND             , 
  SUM( ASG_EVT.PROMOTION_EVENT_IND ) AS PROMOTION_EVENT_IND          , 
  SUM( ASG_EVT.TRANSFER_EVENT_IND ) AS TRANSFER_EVENT_IND           , 
  SUM( ASG_EVT.TERM_EVENT_IND ) AS TERM_EVENT_IND               , 
  SUM( ASG_EVT.VOL_TERM_EVENT_IND ) AS VOL_TERM_EVENT_IND           , 
  SUM( ASG_EVT.INVOL_TERM_EVENT_IND ) AS INVOL_TERM_EVENT_IND         , 
  SUM( ASG_EVT.GRADE_CHANGE_IND ) AS GRADE_CHANGE_IND             , 
  SUM( ASG_EVT.LOCATION_CHANGE_IND ) AS LOCATION_CHANGE_IND          , 
  SUM( ASG_EVT.POSITION_CHANGE_IND ) AS POSITION_CHANGE_IND          , 
  SUM( ASG_EVT.JOB_CHANGE_IND ) AS JOB_CHANGE_IND               , 
  SUM( ASG_EVT.HEADCOUNT_CHANGE_IND ) AS HEADCOUNT_CHANGE_IND         , 
  SUM( ASG_EVT.FTE_CHANGE_IND ) AS FTE_CHANGE_IND               , 
  SUM( ASG_EVT.MANAGER_CHANGE_IND ) AS MANAGER_CHANGE_IND           , 
  SUM( ASG_EVT.SALARY_CHANGE_IND ) AS SALARY_CHANGE_IND            , 
  SUM( ASG_EVT.LEAVE_MANAGER_CHANGE_IND ) AS LEAVE_MANAGER_CHANGE_IND     , 
  SUM( ASG_EVT.WEIGHTED_MANAGER_CHANGE_IND ) AS WEIGHTED_MANAGER_CHANGE_IND  
 FROM  {{ ref('DW_WRKFRC_SUPERVISOR_DAILY_EVENT_F_TEMP1') }} ASG_EVT LEFT OUTER JOIN {{ ref('DW_MANAGER_DN_DH') }} DW_MANAGER_DRILLDOWN  ON ( ASG_EVT.MANAGER_ASSIGNMENT_ID = DW_MANAGER_DRILLDOWN.ASSIGNMENT_ID AND ASG_EVT.EVENT_DATE BETWEEN DW_MANAGER_DRILLDOWN.EFFECTIVE_START_DATE AND DW_MANAGER_DRILLDOWN.EFFECTIVE_END_DATE AND DW_MANAGER_DRILLDOWN.PRIMARY_MANAGER_FLAG = 'Y' AND DW_MANAGER_DRILLDOWN.MANAGER_DISTANCE = 1)
 GROUP BY  ASG_EVT.MANAGER_ASSIGNMENT_ID, ASG_EVT.MANAGER_ID, COALESCE(DW_MANAGER_DRILLDOWN.MANAGER_ASSIGNMENT_ID,-99999), COALESCE(DW_MANAGER_DRILLDOWN.MANAGER_ID,-99999), ASG_EVT.EVENT_DATE, ASG_EVT.LEVEL_DISTANCE, ASG_EVT.MANAGER_IND, ASG_EVT.DEPARTMENT_ID, ASG_EVT.JOB_ID, ASG_EVT.JOB_FAMILY_ID, ASG_EVT.LOCATION_ID, ASG_EVT.POSITION_ID, ASG_EVT.LEGAL_EMPLOYER_ID, ASG_EVT.BUSINESS_UNIT_ID, ASG_EVT.ASSIGNMENT_STATUS_TYPE_ID, ASG_EVT.WORKER_TYPE, ASG_EVT.WORKER_CATEGORY, ASG_EVT.ASSIGNMENT_CATEGORY, ASG_EVT.LEGISLATION_CODE, COALESCE(ASG_EVT.COUNTRY,'~NOVALUE~'), ASG_EVT.SEX, ASG_EVT.MARITAL_STATUS, ASG_EVT.HIGHEST_EDUCATION_LEVEL, ASG_EVT.ETHNICITY, ASG_EVT.RELIGION, ASG_EVT.DISABILITY_FLAG, ASG_EVT.SYSTEM_PERSON_TYPE, ASG_EVT.PAY_SYSTEM_STATUS, ASG_EVT.PER_SYSTEM_STATUS, TO_CHAR(ASG_EVT.MANAGER_ASSIGNMENT_ID)||'~'|| TO_CHAR((ASG_EVT.EVENT_DATE),'YYYYMMDD')
