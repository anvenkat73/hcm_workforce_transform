 SELECT RLPVO.RATINGLEVELTRANSLATIONPEORATINGLEVELID AS RATING_LEVEL_ID, 
 MLPVO.RATINGMODELTRANSLATIONPEORATINGMODELID AS RATING_MODEL_ID, 
 COALESCE(CLPVO.RATINGCATEGORIESTRANSLATIONPEOCATEGORYID,-99999) AS CATEGORY_ID, 
 RLPVO.LANGUAGE AS LANGUAGE, 
 CAST(RLPVO.RATINGLEVELTRANSLATIONPEORATINGLEVELID AS STRING)||'~'||CAST(MLPVO.RATINGMODELTRANSLATIONPEORATINGMODELID AS STRING)||'~'||CAST(COALESCE(CLPVO.RATINGCATEGORIESTRANSLATIONPEOCATEGORYID,-99999) AS STRING) AS SOURCE_RECORD_ID, 
 RLPVO.RATINGLEVELTRANSLATIONPEORATINGDESCRIPTION AS RATING_LEVEL_NAME, 
 RLPVO.RATINGLEVELTRANSLATIONPEOREVIEWRATINGDESCR AS RATING_LEVEL_DESCRIPTION, 
 RLPVO.RATINGLEVELTRANSLATIONPEORATINGSHORTDESCR AS RATING_LEVEL_SHORT_DESCRIPTION, 
 MLPVO.RATINGMODELTRANSLATIONPEORATINGNAME AS MODEL_NAME, 
 MLPVO.RATINGMODELTRANSLATIONPEORATINGDESCRIPTION AS MODEL_DESCRIPTION, 
 CLPVO.RATINGCATEGORIESTRANSLATIONPEOCATEGORYNAME AS CATEGORY_NAME, 
 CLPVO.RATINGCATEGORIESTRANSLATIONPEOCATEGORYDESCRIPTION AS CATEGORY_DESCRIPTION
 FROM  {{ ref('stg_h_hcmprofilecontentlibraryam_ratinglevelfirstpvo') }} RPVO 
  LEFT OUTER JOIN {{ ref('stg_h_hcmprofilecontentlibraryam_ratinglevelfirstlangpvo') }} RLPVO  ON (RPVO.RATINGLEVELBPEORATINGLEVELID=RLPVO.RATINGLEVELTRANSLATIONPEORATINGLEVELID AND RPVO.RATINGLEVELBPEOBUSINESSGROUPID=RLPVO.RATINGLEVELTRANSLATIONPEOBUSINESSGROUPID) 
  LEFT OUTER JOIN  {{ ref('stg_h_hcmprofilecontentlibraryam_ratingmodelfirstlangpvo') }} MLPVO  ON 	(RPVO.RATINGLEVELBPEORATINGMODELID=MLPVO.RATINGMODELTRANSLATIONPEORATINGMODELID AND RPVO.RATINGLEVELBPEOBUSINESSGROUPID=MLPVO.RATINGMODELTRANSLATIONPEOBUSINESSGROUPID AND RLPVO.RATINGLEVELTRANSLATIONPEOBUSINESSGROUPID=MLPVO.RATINGMODELTRANSLATIONPEOBUSINESSGROUPID AND RLPVO.LANGUAGE=MLPVO.LANGUAGE AND RLPVO.SOURCELANG=MLPVO.SOURCELANG) 
  LEFT OUTER JOIN  {{ ref('stg_h_hcmprofilecontentlibraryam_ratingcategoriesfirstpvo') }} CPVO  ON 	((RPVO.RATINGLEVELBPEORATINGMODELID=CPVO.RATINGCATEGORIESBPEORATINGMODELID AND RPVO.RATINGLEVELBPEOBUSINESSGROUPID=CPVO.RATINGCATEGORIESBPEOBUSINESSGROUPID AND RPVO.RATINGLEVELBPEONUMERICRATING BETWEEN CPVO.RATINGCATEGORIESBPEOLOWERBOUNDARY AND CPVO.RATINGCATEGORIESBPEOUPPERBOUNDARY)) 
  LEFT OUTER JOIN  {{ ref('stg_h_hcmprofilecontentlibraryam_ratingcategoriesfirstlangpvo') }} CLPVO  ON (CPVO.RATINGCATEGORIESBPEOCATEGORYID=CLPVO.RATINGCATEGORIESTRANSLATIONPEOCATEGORYID AND CPVO.RATINGCATEGORIESBPEOBUSINESSGROUPID=CLPVO.RATINGCATEGORIESTRANSLATIONPEOBUSINESSGROUPID AND RLPVO.LANGUAGE=CLPVO.RATINGCATEGORIESTRANSLATIONPEOLANGUAGE AND RLPVO.SOURCELANG=CLPVO.SOURCELANG AND RLPVO.RatingLevelTranslationPEOBusinessGroupId=CLPVO.RatingCategoriesTranslationPEOBusinessGroupId) 
 WHERE RLPVO.LANGUAGE='US' AND NOT EXISTS (SELECT NULL FROM {{ ref('stg_h_hcmprofilecontentlibraryam_ratinglevelfirstpvo') }}  RLEVPVO1 WHERE RLEVPVO1.RATINGLEVELBPEORATINGLEVELID = RPVO.RATINGLEVELBPEORATINGLEVELID AND RLEVPVO1.RATINGLEVELBPEOBUSINESSGROUPID <> RPVO.RATINGLEVELBPEOBUSINESSGROUPID)
