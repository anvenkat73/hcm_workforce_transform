with h_actionam_actiontypestranslationpvo as ( 
      select 
               ACTIONTYPEID as ACTIONTYPEID,
               LANGUAGE as LANGUAGE,
               ACTIONTYPESTRANSLATIONPEOSOURCELANG as ACTIONTYPESTRANSLATIONPEOSOURCELANG,
               ACTIONTYPESTRANSLATIONPEOMEANING as ACTIONTYPESTRANSLATIONPEOMEANING,
               ACTIONTYPESTRANSLATIONPEOCREATIONDATE as ACTIONTYPESTRANSLATIONPEOCREATIONDATE,
               ACTIONTYPESTRANSLATIONPEOLASTUPDATEDATE as ACTIONTYPESTRANSLATIONPEOLASTUPDATEDATE,
      from 'chrome-genre-298014.sakra_stage.h_actionam_actiontypestranslationpvo'
)

select * from h_actionam_actiontypestranslationpvo
