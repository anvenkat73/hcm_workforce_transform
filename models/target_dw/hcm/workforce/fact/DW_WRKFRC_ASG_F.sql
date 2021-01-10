 SELECT  ASGPVO.ASSIGNMENTID AS ASSIGNMENT_ID , 
  ASGPVO.EFFECTIVESTARTDATE AS EFFECTIVE_START_DATE , 
  ASGPVO.EFFECTIVEENDDATE AS EFFECTIVE_END_DATE , 
  ASGPVO.EFFECTIVESEQUENCE AS EFFECTIVE_SEQUENCE , 
  ASGPVO.EFFECTIVELATESTCHANGE AS EFFECTIVE_LATEST_CHANGE , 
 ASGPVO.ASSIGNMENTID||'~'||TO_CHAR(ASGPVO.EFFECTIVESTARTDATE,'YYYYMMDD')||'~'||TO_CHAR(ASGPVO.EFFECTIVEENDDATE,'YYYYMMDD') ||'~'||ASGPVO.EFFECTIVESEQUENCE||'~'||ASGPVO.EFFECTIVELATESTCHANGE AS SOURCE_RECORD_ID , 
  COALESCE(ASGPVO.ASSIGNMENTPEOORGANIZATIONID,-99999) AS DEPARTMENT_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOESTABLISHMENTID,-99999) AS REPORTING_ESTABLISHMENT_ID , 
  COALESCE(ASGPVO.ASSIGNMENTPEOJOBID,-99999) AS JOB_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOLOCATIONID,-99999) AS LOCATION_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOPOSITIONID,-99999) AS POSITION_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOGRADEID,-99999) AS GRADE_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOLEGALENTITYID ,-99999) AS LEGAL_EMPLOYER_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOBUSINESSUNITID ,-99999) AS BUSINESS_UNIT_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOPERIODOFSERVICEID ,-99999) AS PERIOD_OF_SERVICE_ID, 
 ASGPVO.ASSIGNMENTPEOPERSONID AS PERSON_ID, 
  COALESCE(ASGPVO.ASSIGNMENTPEOACTIONOCCURRENCEID ,-99999) AS ACTION_OCCURRENCE_ID, 
  COALESCE(AOPVO.ACTIONOCCURRENCESPEOACTIONID ,-99999) AS ACTION_ID , 
  COALESCE(AOPVO.ACTIONOCCURRENCESPEOACTIONREASONID ,-99999) AS ACTION_REASON_ID, 
 COALESCE(ASGPVO.ASSIGNMENTPEOPERSONTYPEID ,-99999) AS PERSON_TYPE_ID, 
 ASGPVO.ASSIGNMENTPEOASSIGNMENTSTATUSTYPEID AS ASSIGNMENT_STATUS_TYPE_ID, 
 ASGPVO.ASSIGNMENTPEOBUSINESSGROUPID AS BUSINESS_GROUP_ID, 
 COALESCE(ASGPVO.ASSIGNMENTPEOSYSTEMPERSONTYPE,'~NOVALUE~') AS SYSTEM_PERSON_TYPE, 
 ASGPVO.ASSIGNMENTPEOPRIMARYFLAG AS PRIMARY_FLAG, 
 ASGPVO.ASSIGNMENTPEOPRIMARYASSIGNMENTFLAG AS PRIMARY_ASSIGNMENT_FLAG, 
 ASGPVO.ASSIGNMENTPEOMANAGERFLAG AS MANAGER_FLAG, 
 ASGPVO.ASSIGNMENTPEOASSIGNMENTNUMBER AS ASSIGNMENT_NUMBER, 
 ASGPVO.ASSIGNMENTPEOASSIGNMENTNAME AS ASSIGNMENT_NAME, 
 ASGPVO.ASSIGNMENTPEOLABOURUNIONMEMBERFLAG AS LABOUR_UNION_MEMBER_FLAG, 
 ASGPVO.ASSIGNMENTPEOASSIGNMENTTYPE AS WORKER_TYPE, 
 COALESCE(ASGPVO.ASSIGNMENTPEOEMPLOYEECATEGORY,'~NOVALUE~') AS WORKER_CATEGORY, 
 COALESCE(ASGPVO.ASSIGNMENTPEOEMPLOYMENTCATEGORY,'~NOVALUE~') AS ASSIGNMENT_CATEGORY, 
 ASGPVO.ASSIGNMENTPEOLEGISLATIONCODE AS LEGISLATION_CODE, 
  COALESCE(ASGPVO.ASSIGNMENTPEOHOURLYSALARIEDCODE,'~NOVALUE~') AS HOURLY_SALARIED_CODE, 
  COALESCE(ASGSTPVO.ASSIGNMENTSTATUSTYPESPEOPAYSYSTEMSTATUS,'~NOVALUE~') AS PAY_SYSTEM_STATUS, 
  COALESCE(ASGSTPVO.ASSIGNMENTSTATUSTYPESPEOPERSYSTEMSTATUS,'~NOVALUE~') AS PER_SYSTEM_STATUS, 
 ASGPVO.ASSIGNMENTPEONORMALHOURS AS NORMAL_HOURS, 
 ASGPVO.ASSIGNMENTPEORETIREMENTAGE AS RETIREMENT_AGE, 
 COALESCE(ASGPVO.ASSIGNMENTPEORETIREMENTDATE,TO_DATE(SUBSTR('1901-01-01 00:00:00.0',1,19),'YYYY-MM-DD HH24:MI:SS')) AS RETIREMENT_DATE, 
 GREATEST(TO_DATE(SUBSTR('$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$',1,19),'YYYY-MM-DD HH24:MI:SS'),ASGPVO.EFFECTIVESTARTDATE) AS DW_DATE_FROM, 
 ASGPVO.EFFECTIVEENDDATE AS DW_DATE_TO, 
  CASE WHEN TO_DATE(SUBSTR('$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$',1,19),'YYYY-MM-DD HH24:MI:SS') > ASGPVO.EFFECTIVESTARTDATE  THEN 1 ELSE 0 END AS DW_INITIAL_RECORD_IND, 
  COALESCE(ASGPVO.ASSIGNMENTPEOFULLPARTTIME,'~NOVALUE~') AS FULL_PART_TIME_FLAG , 
  COALESCE(ASGPVO.ASSIGNMENTPEOPERMANENTTEMPORARYFLAG,'~NOVALUE~') AS PERMANENT_TEMPORARY_FLAG 
 FROM  {{ ref('stg_h_assignmentam_assignmentpvo') }} ASGPVO INNER JOIN {{ ref('stg_h_assignmentam_assignmentstatustypespvo') }} ASGSTPVO  ON ASGPVO.ASSIGNMENTPEOASSIGNMENTSTATUSTYPEID=ASGSTPVO.ASSIGNMENTSTATUSTYPEID LEFT OUTER JOIN  {{ ref('stg_h_actionam_actionoccurrencespvo') }} AOPVO  ON ASGPVO.ASSIGNMENTPEOACTIONOCCURRENCEID=AOPVO.ACTIONOCCURRENCEID 
 WHERE ASGPVO.ASSIGNMENTPEOASSIGNMENTTYPE IN ('E','C','N','P')
