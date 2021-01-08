 SELECT JOBPVO.JOBID AS JOB_ID, 
 JOBPVO.EFFECTIVESTARTDATE AS EFFECTIVE_START_DATE, 
 JOBPVO.EFFECTIVEENDDATE AS EFFECTIVE_END_DATE, 
 TO_CHAR(JOBPVO.JOBID) ||'~'|| TO_CHAR(JOBPVO.EFFECTIVESTARTDATE,'YYYYMMDD') ||'~'||TO_CHAR(JOBPVO.EFFECTIVEENDDATE,'YYYYMMDD') AS SOURCE_RECORD_ID, 
 JOBPVO.JOBPEOJOBCODE AS JOB_CODE, 
 COALESCE(JOBPVO.JOBPEOJOBFAMILYID,-99999) AS JOB_FAMILY_ID, 
 JOBPVO.JOBPEOACTIVESTATUS AS ACTIVE_STATUS, 
 COALESCE(JOBPVO.JOBPEOMANAGERLEVEL,'~NOVALUE~') AS MANAGER_LEVEL, 
 COALESCE(JOBPVO.JOBPEOMEDCHECKUPREQ,'~NOVALUE~') AS MED_CHECKUP_REQ, 
 COALESCE(JOBPVO.JOBPEOJOBFUNCTIONCODE,'~NOVALUE~') AS JOB_FUNCTION_CODE, 
 COALESCE(JOBPVO.JOBPEOPROGRESSIONJOBID,-99999) AS PROGRESSION_JOB_ID
 FROM {{ ref('stg_h_jobam_jobpvo') }} JobPVO

