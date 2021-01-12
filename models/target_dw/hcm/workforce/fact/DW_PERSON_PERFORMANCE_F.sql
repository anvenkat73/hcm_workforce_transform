 SELECT PERFMNCVO.PROFILEITEMID AS PROFILE_ITEM_ID, 
 CAST(PERFMNCVO.PROFILEITEMID AS STRING) AS SOURCE_RECORD_ID, 
 COALESCE(PERSNVO.PROFILEBPEOPERSONID,-99999) AS PERSON_ID, 
 COALESCE(PERFMNCVO.RATINGLEVELID1,-99999) AS RATING_LEVEL_ID, 
 PERFMNCVO.DATEFROM AS DATE_FROM, 
 COALESCE(PARSE_DATE('%Y-%m-%d',PERFMNCVO.DATETO),DATE('4712-12-31')) AS DATE_TO, 
 CASE WHEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') > PARSE_DATE('%Y-%m-%d', PERFMNCVO.DATEFROM ) THEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') ELSE PARSE_DATE('%Y-%m-%d', PERFMNCVO.DATEFROM) END AS DW_DATE_FROM,
 COALESCE(PARSE_DATE('%Y-%m-%d',PERFMNCVO.DATETO),DATE('4712-12-31')) AS DW_DATE_TO, 
 CASE WHEN PARSE_DATE('%Y-%m-%d', '$VAR_PARAM_GLOBAL_INITIAL_EXTRACT_DATE$') > PARSE_DATE('%Y-%m-%d', PERFMNCVO.DATEFROM)  THEN 1 ELSE 0 END AS DW_INITIAL_RECORD_IND
 FROM  {{ ref('stg_h_c_personprofileperformanceratingpvoprofileitemref') }} PerfmncVO INNER JOIN {{ ref('stg_h_hcmprofilecoream_personprofileitempvo') }} PersnVO  ON PERFMNCVO.PROFILEID=PERSNVO.PROFILEBPEOPROFILEID 
 WHERE  PERFMNCVO.CONTENTTYPEID=125 AND  PERFMNCVO.ITEMNUMBER2 IS NULL
