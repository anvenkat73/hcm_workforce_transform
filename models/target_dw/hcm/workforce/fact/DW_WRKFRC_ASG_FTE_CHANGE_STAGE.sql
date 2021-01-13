 SELECT  COALESCE(ASG_FTE.ASSIGN_WORK_MEASURE_ID,FL_FTE.ASSIGNMENT_ID) AS ASSIGN_WORK_MEASURE_ID , 
  COALESCE(PARSE_DATE('%Y-%m-%d',ASG_FTE.EFFECTIVE_START_DATE),FL_FTE.EFFECTIVE_START_DATE) AS EFFECTIVE_START_DATE   , 
  FL_FTE.EFFECTIVE_END_DATE AS EFFECTIVE_END_DATE     , 
  CAST(COALESCE(ASG_FTE.ASSIGN_WORK_MEASURE_ID,FL_FTE.ASSIGNMENT_ID) AS STRING)||'~'|| FORMAT_DATE('%Y%m%d',COALESCE(PARSE_DATE('%Y-%m-%d',ASG_FTE.EFFECTIVE_START_DATE),FL_FTE.EFFECTIVE_START_DATE))||'~'||FORMAT_DATE('%Y%m%d',FL_FTE.EFFECTIVE_END_DATE) AS SOURCE_RECORD_ID       , 
  FL_FTE.ASSIGNMENT_ID AS ASSIGNMENT_ID          , 
  ASG_FTE.ACTION_OCCURRENCE_ID AS ACTION_OCCURRENCE_ID   , 
  ASG_FTE.FTE AS FTE                    , 
  0 AS FTE_CHANGE_IND         , 
  -99999 AS PREVIOUS_FTE           
 FROM  {{ ref('DW_WRKFRC_FTE_FL_DT_STAGE') }} FL_FTE 
      LEFT OUTER JOIN {{ ref('DW_WRKFRC_ASG_FTE_F') }} ASG_FTE  ON (FL_FTE.ASSIGNMENT_ID=ASG_FTE.ASSIGNMENT_ID AND FL_FTE.EFFECTIVE_START_DATE=PARSE_DATE('%Y-%m-%d',ASG_FTE.EFFECTIVE_START_DATE))

