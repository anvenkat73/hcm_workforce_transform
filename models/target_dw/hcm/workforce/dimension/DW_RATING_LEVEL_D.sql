 SELECT RLEVPVO.RATINGLEVELBPEORATINGLEVELID AS RATING_LEVEL_ID, 
 RLEVPVO.RATINGLEVELBPEORATINGMODELID AS RATING_MODEL_ID, 
 COALESCE(RCATPVO.RATINGCATEGORIESBPEOCATEGORYID,-99999) AS CATEGORY_ID, 
 TO_CHAR(RLEVPVO.RATINGLEVELBPEORATINGLEVELID) ||'~'|| TO_CHAR(RLEVPVO.RATINGLEVELBPEORATINGMODELID) ||'~'||TO_CHAR(COALESCE(RCATPVO.RATINGCATEGORIESBPEOCATEGORYID,-99999)) AS SOURCE_RECORD_ID, 
 RLEVPVO.RATINGLEVELBPEORATINGLEVELCODE AS RATING_LEVEL_CODE, 
 MODPVO.RATINGMODELBPEORATINGMODELCODE AS RATING_MODEL_CODE, 
 RLEVPVO.RATINGLEVELBPEONUMERICRATING AS NUMERIC_RATING
 FROM  {{ ref('stg_h_hcmprofilecontentlibraryam_ratinglevelfirstpvo') }} RLevPVO INNER JOIN {{ ref('stg_h_hcmprofilecontentlibraryam_ratingmodelfirstpvo') }} ModPVO  ON (RLEVPVO.RATINGLEVELBPEORATINGMODELID=MODPVO.RATINGMODELBPEORATINGMODELID AND RLEVPVO.RATINGLEVELBPEOBUSINESSGROUPID=MODPVO.RATINGMODELBPEOBUSINESSGROUPID) LEFT OUTER JOIN  {{ REF('STG_H_HCMPROFILECONTENTLIBRARYAM_RATINGCATEGORIESFIRSTPVO') }} RCATPVO  ON 	(RLEVPVO.RATINGLEVELBPEORATINGMODELID=RCATPVO.RATINGCATEGORIESBPEORATINGMODELID AND RLEVPVO.RATINGLEVELBPEOBUSINESSGROUPID=RCATPVO.RATINGCATEGORIESBPEOBUSINESSGROUPID AND RLEVPVO.RATINGLEVELBPEONUMERICRATING BETWEEN RCATPVO.RATINGCATEGORIESBPEOLOWERBOUNDARY AND RCATPVO.RATINGCATEGORIESBPEOUPPERBOUNDARY) 

