 SELECT JOBFUNCTIONLOOKUP.LOOKUPCODE AS JOB_FUNCTION_CODE, 
 JOBFUNCTIONLOOKUP.LANGUAGE AS LANGUAGE, 
 JOBFUNCTIONLOOKUP.LOOKUPCODE||'~'||JOBFUNCTIONLOOKUP.LANGUAGE AS SOURCE_RECORD_ID, 
 JOBFUNCTIONLOOKUP.MEANING AS JOB_FUNCTION_NAME, 
 JOBFUNCTIONLOOKUP.DESCRIPTION AS JOB_FUNCTION_DESCRIPTION
 FROM {{ ref('stg_f_analyticsserviceam_lookupvaluestlpvo') }} JobFunctionLookup
 WHERE JOBFUNCTIONLOOKUP.LOOKUPTYPE='JOB_FUNCTION_CODE' AND JOBFUNCTIONLOOKUP.VIEWAPPLICATIONID=3 AND JOBFUNCTIONLOOKUP.LANGUAGE='US'
