 SELECT PAYGRD.GRADE_ID AS GRADE_ID, 
 PAYGRD.SOURCE_RECORD_ID AS SOURCE_RECORD_ID, 
 PAYGRD.ACTIVE_STATUS AS ACTIVE_STATUS, 
 PAYGRD.GRADE_CODE AS GRADE_CODE, 
 PAYGRD.GRADE_TYPE AS GRADE_TYPE
 FROM {{ ref('DW_PAY_GRADE_D') }} PAYGRD
WHERE  CURRENT_DATE() BETWEEN PARSE_DATE('%Y-%m-%d',PAYGRD.EFFECTIVE_START_DATE) AND PARSE_DATE('%Y-%m-%d',PAYGRD.EFFECTIVE_END_DATE)

 
