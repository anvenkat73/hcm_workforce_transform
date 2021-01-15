 SELECT  GLF.ASSIGNMENT_ID AS ASSIGNMENT_ID                   , 
  CFDNDH.LEVEL20_REPORTEE_ASSIGNMENT_ID AS REPORTEE_ASSIGNMENT_ID          , 
  GLF.EVENT_DATE AS EVENT_DATE                      , 
  GLF.NET_GAIN_LOSS_IND AS NET_GAIN_LOSS_IND               , 
  CAST(GLF.ASSIGNMENT_ID AS STRING)||'~'||CAST(CFDNDH.LEVEL20_REPORTEE_ASSIGNMENT_ID AS STRING)||'~'||FORMAT_DATE('%Y%m%d',  PARSE_DATE('%Y-%m-%d',GLF.EVENT_DATE))||'~'||CAST(GLF.NET_GAIN_LOSS_IND AS STRING) AS SOURCE_RECORD_ID                , 
  GLF.GAIN_LOSS_DATE AS GAIN_LOSS_DATE                  , 
  MGR_STG.MANAGER_ASSIGNMENT_ID AS REPORTEE_MANAGER_ASSIGNMENT_ID  
 FROM  {{ ref('DW_WRKFRC_GAIN_LOSS_ASG_F') }} GLF 
    INNER JOIN {{ ref('DW_MANAGER_REPORTEES_CF_DN_DH') }} CFDNDH  ON GLF.ASSIGNMENT_ID = CFDNDH.MANAGER_ASSIGNMENT_ID 
    AND PARSE_DATE('%Y-%m-%d',GLF.EVENT_DATE) - 1 BETWEEN CFDNDH.EFFECTIVE_START_DATE AND CFDNDH.EFFECTIVE_END_DATE AND ( GLF.SUPERVISOR_GAIN_LOSS_IND = 1 
    AND GLF.HIRE_EVENT_IND <> 1 AND GLF.REHIRE_EVENT_IND <> 1 AND GLF.TERM_EVENT_IND <> 1 
    AND GLF.GLB_TRANSFER_IN_IND <> 1 AND GLF.GLB_TRANSFER_OUT_IND <> 1) 
    AND CFDNDH.MANAGER_DISTANCE<>0 INNER JOIN  {{ ref('DW_WRKFRC_ASG_SUP_CHANGE_STAGE') }} MGR_STG  ON CFDNDH.LEVEL20_REPORTEE_ASSIGNMENT_ID = MGR_STG.ASSIGNMENT_ID 
    AND PARSE_DATE('%Y-%m-%d',GLF.EVENT_DATE) - 1 BETWEEN MGR_STG.EFFECTIVE_START_DATE AND MGR_STG.EFFECTIVE_END_DATE

