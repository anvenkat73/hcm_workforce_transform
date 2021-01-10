 SELECT JOBFAMILYPVO.JOBFAMILYID AS JOB_FAMILY_ID, 
 JOBFAMILYPVO.EFFECTIVESTARTDATE AS EFFECTIVE_START_DATE, 
 JOBFAMILYPVO.EFFECTIVEENDDATE AS EFFECTIVE_END_DATE, 
 CAST(JOBFAMILYPVO.JOBFAMILYID AS STRING)||'~'|| FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', JOBFAMILYPVO.EFFECTIVESTARTDATE))||'~'||FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', JOBFAMILYPVO.EFFECTIVEENDDATE)) AS SOURCE_RECORD_ID, 
 JOBFAMILYPVO.JOBFAMILYPEOBUSINESSGROUPID AS BUSINESS_GROUP_ID, 
 JOBFAMILYPVO.JOBFAMILYPEOACTIVESTATUS AS ACTIVE_STATUS, 
 JOBFAMILYPVO.JOBFAMILYCODE AS JOB_FAMILY_CODE
 FROM {{ ref('stg_h_jobam_jobfamilypvo') }} JOBFAMILYPVO

