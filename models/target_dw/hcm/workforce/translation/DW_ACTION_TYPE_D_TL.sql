 SELECT ACTIONTYPETRANSLATION.ACTIONTYPEID AS ACTION_TYPE_ID, 
 ACTIONTYPETRANSLATION.LANGUAGE AS LANGUAGE, 
 ACTIONTYPETRANSLATION.ACTIONTYPEID||'~'||ACTIONTYPETRANSLATION.LANGUAGE AS SOURCE_RECORD_ID, 
 ACTIONTYPETRANSLATION.ACTIONTYPESTRANSLATIONPEOMEANING AS ACTION_TYPE_NAME
 FROM {{ ref('stg_h_actionam_actiontypestranslationpvo') }} ActionTypeTranslation
 WHERE ACTIONTYPETRANSLATION.LANGUAGE='US'
