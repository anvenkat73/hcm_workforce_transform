 SELECT  GOALTASK.GOALACTIONID AS GOAL_ACTION_ID , 
  TO_CHAR(GOALTASK.GOALACTIONID) AS SOURCE_RECORD_ID , 
  GOALTASK.GOALACTIONPEOBUSINESSGROUPID AS BUSINESS_GROUP_ID , 
  GOALTASK.GOALACTIONPEOGOALID AS GOAL_ID , 
  GOALTASK.GOALACTIONPEOACTIONTYPECODE AS ACTION_TYPE_CODE , 
  GOALTASK.GOALACTIONPEOPRIORITYCODE AS PRIORITY_CODE , 
  GOALTASK.GOALACTIONPEOSTARTDATE AS START_DATE , 
  GOALTASK.GOALACTIONPEOTARGETCOMPLETIONDATE AS TARGET_COMPLETION_DATE , 
  GOALTASK.GOALACTIONPEOPERCENTCOMPLETECODE AS PERCENT_COMPLETE_CODE , 
  GOALTASK.GOALACTIONPEOSTATUSCODE AS STATUS_CODE , 
  GOALTASK.GOALACTIONPEOACTIONNAME AS ACTION_NAME 
 FROM {{ ref('stg_h_hcmgoalcoream_taskpvo') }} GOALTASK

