 SELECT  	PERSONLEGISLATIVE.PERSONLEGISLATIVEID AS PERSON_LEGISLATIVE_ID	 , 
 	PERSONLEGISLATIVE.EFFECTIVESTARTDATE AS EFFECTIVE_START_DATE	, 
 	PERSONLEGISLATIVE.EFFECTIVEENDDATE AS EFFECTIVE_END_DATE	, 
  	TO_CHAR(PERSONLEGISLATIVE.PERSONLEGISLATIVEID)||'~'||TO_CHAR(PERSONLEGISLATIVE.EFFECTIVESTARTDATE,'YYYYMMDD')||'~'||TO_CHAR(PERSONLEGISLATIVE.EFFECTIVEENDDATE,'YYYYMMDD') AS SOURCE_RECORD_ID	 , 
 	PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOPERSONID AS PERSON_ID	, 
 		PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOLEGISLATIONCODE AS LEGISLATION_CODE	, 
 		COALESCE(PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOSEX,'~NOVALUE~') AS SEX	, 
 		COALESCE(PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOMARITALSTATUS,'~NOVALUE~') AS MARITAL_STATUS	, 
 		PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOMARITALSTATUSDATE AS MARITAL_STATUS_DATE	, 
 		COALESCE(PERSONLEGISLATIVE.PERSONLEGISLATIVEINFODPEOHIGHESTEDUCATIONLEVEL,'~NOVALUE~') AS HIGHEST_EDUCATION_LEVEL	, 
 GREATEST(TO_DATE(SUBSTR('$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$',1,19),'YYYY-MM-DD HH24:MI:SS'),PERSONLEGISLATIVE.EFFECTIVESTARTDATE) AS DW_DATE_FROM, 
 PERSONLEGISLATIVE.EFFECTIVEENDDATE AS DW_DATE_TO, 
  CASE WHEN TO_DATE(SUBSTR('$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$',1,19),'YYYY-MM-DD HH24:MI:SS') > PERSONLEGISLATIVE.EFFECTIVESTARTDATE  THEN 1 ELSE 0 END AS DW_INITIAL_RECORD_IND
 FROM {{ ref('stg_h_personam_personlegislativeinfopvoviewall') }} PERSONLEGISLATIVE

