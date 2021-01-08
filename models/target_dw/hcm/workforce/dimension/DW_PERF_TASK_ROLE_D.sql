 SELECT TASKROLE.PROCESSTASKROLEID AS PROCESS_TASK_ROLE_ID, 
 TASKROLE.BUSINESSGROUPID AS BUSINESS_GROUP_ID, 
 TASKROLE.PROCESSTASKROLEID||'~'||TASKROLE.BUSINESSGROUPID AS SOURCE_RECORD_ID, 
 TASKROLE.PROCESSTASKROLEBPEOPROCESSFLOWID AS PROCESS_FLOW_ID, 
 TASKROLE.PROCESSTASKROLEBPEOTASKCODE AS TASK_CODE, 
 TASKROLE.PROCESSTASKROLEBPEOSEQUENCENUMBER AS SEQUENCE_NUMBER
 FROM {{ ref('stg_h_hcmperformancesetupam_processtaskrolepvo') }} TaskRole

