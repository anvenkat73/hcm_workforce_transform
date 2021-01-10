 SELECT  DISTINCT  GLFISCALPERIODPVO.FISCALPERIODSETNAME AS FISCAL_PERIOD_SET_NAME , 
  GLFISCALPERIODPVO.FISCALPERIODTYPE AS FISCAL_PERIOD_TYPE , 
  '~No Value~' AS FISCAL_PERIOD_NAME , 
  -99999 AS FISCAL_DAY_DATE_ID , 
  GLFISCALPERIODPVO.FISCALPERIODSETNAME||'~'||GLFISCALPERIODPVO.FISCALPERIODTYPE||'~'||CAST('~No Value~' AS STRING)||'~'||CAST(-99999 AS STRING) AS SOURCE_RECORD_ID , 
   '~NOVALUE~' AS FISCAL_PERIOD_SORT_KEY , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_DAY_DATE , 
  '~NOVALUE~' AS FISCAL_DAY_CODE , 
  '~NOVALUE~' AS ADJUSTMENT_PERIOD_FLAG , 
  -99999 AS FISCAL_PERIOD_NUMBER , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_PERIOD_START_DATE , 
  -99999 AS FISCAL_PERIOD_START_DATE_ID , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_PERIOD_END_DATE , 
  -99999 AS FISCAL_PERIOD_END_DATE_ID , 
  -99999 AS FISCAL_QUARTER_NUMBER , 
  '~NOVALUE~' AS FISCAL_QUARTER_CODE , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_QUARTER_START_DATE , 
  -99999 AS FISCAL_QUARTER_START_DATE_ID , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_QUARTER_END_DATE , 
  -99999 AS FISCAL_QUARTER_END_DATE_ID , 
  -99999 AS FISCAL_HALF_NUMBER , 
  -99999 AS FISCAL_YEAR_NUMBER , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_YEAR_START_DATE , 
  -99999 AS FISCAL_YEAR_START_DATE_ID , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_YEAR_END_DATE , 
  -99999 AS FISCAL_YEAR_END_DATE_ID , 
  -99999 AS FISCAL_YEAR_TOTAL_WEEKS , 
  -99999 AS FISCAL_YEAR_TOTAL_DAYS , 
  -99999 AS FISCAL_DAY_OF_YEAR , 
  -99999 AS FISCAL_DAY_OF_QUARTER , 
  -99999 AS FISCAL_DAY_OF_PERIOD , 
  '~NOVALUE~' AS FIRST_DAY_FISCAL_PERIOD_FLAG , 
  '~NOVALUE~' AS FIRST_DAY_FISCAL_QUARTER_FLAG , 
  '~NOVALUE~' AS FIRST_DAY_FISCAL_YEAR_FLAG , 
  '~NOVALUE~' AS LAST_DAY_FISCAL_PERIOD_FLAG , 
  '~NOVALUE~' AS LAST_DAY_FISCAL_QUARTER_FLAG , 
  '~NOVALUE~' AS LAST_DAY_FISCAL_YEAR_FLAG , 
  -99999 AS FISCAL_WEEK_NUMBER , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_WEEK_START_DATE , 
  -99999 AS FISCAL_WEEK_START_DATE_ID , 
  TIMESTAMP('1901-01-01 00:00:00.0','YYYY-MM-DD HH24:MI:SS.FF9') AS FISCAL_WEEK_END_DATE , 
  -99999 AS FISCAL_WEEK_END_DATE_ID , 
  '~NOVALUE~' AS FIRST_DAY_FISCAL_WEEK_FLAG , 
  '~NOVALUE~' AS LAST_DAY_FISCAL_WEEK_FLAG , 
  -99999 AS FISCAL_DAY_OF_WEEK , 
  '~NOVALUE~' AS CURRENT_FISCAL_DAY_CODE , 
  '~NOVALUE~' AS CURRENT_FISCAL_WEEK_CODE , 
  '~NOVALUE~' AS CURRENT_FISCAL_PERIOD_CODE , 
  '~NOVALUE~' AS CURRENT_FISCAL_QUARTER_CODE , 
  '~NOVALUE~' AS CURRENT_FISCAL_YEAR_CODE 
 FROM {{ ref('stg_f_finglcalaccam_glfiscalperiodpvo') }} GLFiscalPeriodPVO

