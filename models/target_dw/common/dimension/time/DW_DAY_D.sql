SELECT CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)) as INT64) AS CAL_DAY_ID, 
 CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)) as INT64) AS SOURCE_RECORD_ID, 
 DAY.REPORTDATE AS CALENDAR_DATE, 
 DAY.DAYOFWEEK AS DAY_OF_WEEK, 
 DAY.DAYOFMONTH AS DAY_OF_MONTH, 
 DAY.DAYOFYEAR AS DAY_OF_YEAR, 
 PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)-1 AS DAY_AGO_DATE, 
 CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)) as INT64) -1 AS DAY_AGO_ID, 
FORMAT_DATE('%a' , PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)) AS DAY_CODE, 
FORMAT_DATE('%y%j' , PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))  AS JULIAN_DAY_NUMBER, 
 WEEK.CALWEEK AS CAL_WEEK_ID, 
 CALMONTH.CALMONTH AS CAL_MONTH_ID, 
 QTR.CALQUARTER AS CAL_QUARTER_ID, 
 YEAR.CALYEAR AS CAL_YEAR_ID, 
 CALMONTH.CALMONTHCODE AS CAL_MONTH_CODE, 
 QTR.CALQUARTERCODE AS CAL_QUARTER_CODE, 
 WEEK.CALWEEKCODE AS CAL_WEEK_CODE, 
 WEEK.CALWEEKSTARTDATE AS CAL_WEEK_START_DATE, 
 WEEK.CALWEEKENDDATE AS CAL_WEEK_END_DATE, 
 CALMONTH.CALMONTHSTARTDATE AS CAL_MONTH_START_DATE, 
 CALMONTH.CALMONTHENDDATE AS CAL_MONTH_END_DATE, 
 QTR.CALQTRSTARTDATE AS CAL_QUARTER_START_DATE, 
 QTR.CALQTRENDDATE AS CAL_QUARTER_END_DATE, 
 YEAR.CALYEARSTARTDATE AS CAL_YEAR_START_DATE, 
 YEAR.CALYEARENDDATE AS CAL_YEAR_END_DATE, 
 EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)) AS CAL_MONTH_NUMBER, 
 CASE WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(1,2,3,4,5,6) THEN 1 ELSE 2 END AS CAL_HALF_NUMBER, 
 CASE WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(1,2,3) THEN 1 WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(4,5,6) THEN 2 WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(7,8,9) THEN 3 ELSE 4 END AS CAL_QUARTER_NUMBER, 
 CASE WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(1,2,3,4) THEN 1 WHEN EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE))IN(5,6,7,8) THEN 2 ELSE 3 END AS CAL_TRIMESTER_NUMBER, 
 CAST(SUBSTR(CAST(WEEK.CALWEEK AS STRING), 5) AS INT64) AS CAL_WEEK_NUMBER, 
 CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHENDDATE)) as INT64)  AS CAL_MONTH_END_DATE_ID, 
  CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHSTARTDATE)) as INT64)  AS CAL_MONTH_START_DATE_ID, 
  CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', WEEK.CALWEEKENDDATE)) as INT64)   AS CAL_WEEK_END_DATE_ID, 
 CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', WEEK.CALWEEKSTARTDATE)) as INT64)  AS CAL_WEEK_START_DATE_ID, 
 CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', QTR.CALQTRSTARTDATE)) as INT64)  AS CAL_QUARTER_START_DATE_ID, 
CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', QTR.CALQTRENDDATE)) as INT64)  AS CAL_QUARTER_END_DATE_ID, 
CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', YEAR.CALYEARENDDATE)) as INT64)  AS CAL_YEAR_END_DATE_ID, 
CAST( FORMAT_DATE('%Y%m%d', PARSE_DATE('%Y-%m-%d', YEAR.CALYEARSTARTDATE)) as INT64)   AS CAL_YEAR_START_DATE_ID, 
 CASE WHEN DAY.REPORTDATE=WEEK.CALWEEKSTARTDATE THEN 'Y' ELSE 'N' END AS FIRST_DAY_CAL_WEEK_FLAG, 
 CASE WHEN DAY.REPORTDATE=WEEK.CALWEEKENDDATE THEN 'Y' ELSE 'N' END AS LAST_DAY_CAL_WEEK_FLAG, 
 CASE WHEN DAY.REPORTDATE=CALMONTH.CALMONTHSTARTDATE THEN 'Y' ELSE 'N' END AS FIRST_DAY_CAL_MONTH_FLAG, 
 CASE WHEN DAY.REPORTDATE=CALMONTH.CALMONTHENDDATE THEN 'Y' ELSE 'N' END AS LAST_DAY_CAL_MONTH_FLAG, 
 CASE WHEN DAY.REPORTDATE=QTR.CALQTRSTARTDATE THEN 'Y' ELSE 'N' END AS FIRST_DAY_CAL_QTR_FLAG, 
 CASE WHEN DAY.REPORTDATE=QTR.CALQTRENDDATE THEN 'Y' ELSE 'N' END AS LAST_DAY_CAL_QTR_FLAG, 
 CASE WHEN DAY.REPORTDATE=YEAR.CALYEARSTARTDATE THEN 'Y' ELSE 'N' END AS FIRST_DAY_CAL_YEAR_FLAG, 
 CASE WHEN DAY.REPORTDATE=YEAR.CALYEARENDDATE THEN 'Y' ELSE 'N' END AS LAST_DAY_CAL_YEAR_FLAG, 
 CASE WHEN PARSE_DATE('%Y-%m-%d', DAY.REPORTDATE)=CURRENT_DATE() THEN 'Current' ELSE null END as CURRENT_CAL_DAY_CODE,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', WEEK.CALWEEKSTARTDATE) and PARSE_DATE('%Y-%m-%d', WEEK.CALWEEKENDDATE)  THEN 'Current' ELSE null END as CURRENT_CAL_WEEK_CODE ,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHSTARTDATE) and PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHENDDATE)  THEN 'Current' ELSE null END as CURRENT_CAL_MONTH_CODE ,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', QTR.CALQTRSTARTDATE) and PARSE_DATE('%Y-%m-%d', QTR.CALQTRENDDATE)  THEN 'Current' ELSE null END as CURRENT_CAL_QTR_CODE,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', YEAR.CALYEARSTARTDATE) and PARSE_DATE('%Y-%m-%d', YEAR.CALYEARENDDATE)   THEN 'Current' ELSE null END as CURRENT_CAL_YEAR_CODE,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHSTARTDATE) and PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHENDDATE)  THEN (CURRENT_DATE() - 1) ELSE PARSE_DATE('%Y-%m-%d', CALMONTH.CALMONTHENDDATE)   END  as MONTH_END_OR_PRV_CRNT_DATE,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', QTR.CALQTRSTARTDATE) and PARSE_DATE('%Y-%m-%d', QTR.CALQTRENDDATE)  THEN (CURRENT_DATE() - 1) ELSE PARSE_DATE('%Y-%m-%d', QTR.CALQTRENDDATE) END as QUARTER_END_OR_PRV_CRNT_DATE,
CASE WHEN CURRENT_DATE() between PARSE_DATE('%Y-%m-%d', YEAR.CALYEARSTARTDATE) and PARSE_DATE('%Y-%m-%d', YEAR.CALYEARENDDATE)  THEN (CURRENT_DATE() - 1) ELSE PARSE_DATE('%Y-%m-%d', YEAR.CALYEARENDDATE) END as YEAR_END_OR_PRV_CRNT_DATE
 FROM  {{ ref('stg_h_gregoriancalendaram_fndcalday') }} DAY INNER JOIN {{ ref('stg_h_gregoriancalendaram_fndcalmonth') }} CALMONTH  ON DAY.REPORTDATE >=CALMONTH.CALMONTHSTARTDATE AND DAY.REPORTDATE<=CALMONTH.CALMONTHENDDATE 
       INNER JOIN  {{ ref('stg_h_gregoriancalendaram_fndcalquarter') }} QTR  ON DAY.REPORTDATE >=QTR.CALQTRSTARTDATE AND DAY.REPORTDATE<=QTR.CALQTRENDDATE 
       INNER JOIN  {{ ref('stg_h_gregoriancalendaram_fndcalweek') }} WEEK  ON DAY.REPORTDATE >=WEEK.CALWEEKSTARTDATE AND DAY.REPORTDATE<=WEEK.CALWEEKENDDATE 
       INNER JOIN  {{ ref('stg_h_gregoriancalendaram_fndcalyear') }} YEAR  ON DAY.REPORTDATE >=YEAR.CALYEARSTARTDATE AND DAY.REPORTDATE<=YEAR.CALYEARENDDATE

