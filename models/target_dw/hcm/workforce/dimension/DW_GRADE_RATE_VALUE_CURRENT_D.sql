 SELECT GRDVL.RATE_VALUE_ID AS RATE_VALUE_ID, 
 GRDVL.SOURCE_RECORD_ID AS SOURCE_RECORD_ID, 
 GRDVL.RATE_ID AS RATE_ID, 
 GRDVL.RATE_OBJECT_TYPE AS RATE_OBJECT_TYPE, 
 GRDVL.RATE_OBJECT_ID AS RATE_OBJECT_ID, 
 GRDVL.MINIMUM AS MINIMUM, 
 GRDVL.MAXIMUM AS MAXIMUM, 
 GRDVL.MID_VALUE AS MID_VALUE, 
 GRDVL.LEGISLATION_CODE AS LEGISLATION_CODE
 FROM {{ ref('DW_GRADE_RATE_VALUE_D') }} GRDVL
 WHERE  CURRENT_DATE() BETWEEN PARSE_DATE('%Y-%m-%d',GRDVL.EFFECTIVE_START_DATE) AND PARSE_DATE('%Y-%m-%d',GRDVL.EFFECTIVE_END_DATE)
