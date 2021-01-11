 SELECT SALARYPVO.SALARYID AS SALARY_ID, 
 CAST(SALARYPVO.SALARYID AS STRING) AS SOURCE_RECORD_ID, 
 SALARYPVO.SALARYPEOASSIGNMENTID AS ASSIGNMENT_ID, 
 SALARYPVO.SALARYPEOSALARYBASISID AS SALARY_BASIS_ID, 
 SALARYPVO.SALARYPEODATEFROM AS EFFECTIVE_START_DATE, 
 SALARYPVO.SALARYPEODATETO AS EFFECTIVE_END_DATE, 
 SALARYPVO.SALARYPEOSALARYAPPROVED AS SALARY_APPROVED, 
 COALESCE(SALARYPVO.SALARYPEOACTIONOCCURRENCEID,-99999) AS ACTION_OCCURRENCE_ID, 
 COALESCE(SALARYPVO.SALARYPEOACTIONID,-99999) AS ACTION_ID, 
 COALESCE(SALARYPVO.SALARYPEOACTIONREASONID,-99999) AS ACTION_REASON_ID, 
 SALARYPVO.SALARYPEOSALARYAMOUNT AS SALARY_AMOUNT, 
  COALESCE(ELEMENTTYPE.ELEMENTTYPEOUTPUTCURRENCYCODE,'~NOVALUE~') AS CURRENCY_CODE, 
 CASE WHEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') > PARSE_DATE('%Y-%m-%d', SALARYPVO.SALARYPEODATEFROM ) THEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') ELSE PARSE_DATE('%Y-%m-%d', SALARYPVO.SALARYPEODATEFROM) END  AS DW_DATE_FROM, 
 SALARYPVO.SALARYPEODATETO AS DW_DATE_TO, 
 CASE WHEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') > PARSE_DATE('%Y-%m-%d', SALARYPVO.SALARYPEODATEFROM)  THEN 1 ELSE 0 END AS DW_INITIAL_RECORD_IND
 FROM  {{ ref('stg_h_compensationam_salarypvo') }} SALARYPVO
       INNER JOIN {{ ref('stg_h_gradeam_salarybasispvo') }} SALARYBASISPVO  ON SALARYPVO.SALARYPEOSALARYBASISID=SALARYBASISPVO.SALARYBASISID 
       INNER JOIN  {{ ref('stg_h_hcmelementsetupam_originatingelement') }} ELEMENTTYPE  ON SALARYBASISPVO.SALARYBASISPEOELEMENTTYPEID=ELEMENTTYPE.ELEMENTTYPEID AND SALARYPVO.SALARYPEODATEFROM >=ELEMENTTYPE.EFFECTIVESTARTDATE AND SALARYPVO.SALARYPEODATEFROM <=ELEMENTTYPE.EFFECTIVEENDDATE 

