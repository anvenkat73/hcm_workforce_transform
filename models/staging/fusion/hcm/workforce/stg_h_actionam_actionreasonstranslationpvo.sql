with h_actionam_actionreasonstranslationpvo as ( 
      select 
               ACTIONREASONID as ACTIONREASONID,
               LANGUAGE as LANGUAGE,
               ACTIONREASONSTRANSLATIONPEOSOURCELANG as ACTIONREASONSTRANSLATIONPEOSOURCELANG,
               ACTIONREASONSTRANSLATIONPEOACTIONREASON as ACTIONREASONSTRANSLATIONPEOACTIONREASON,
               ACTIONREASONSTRANSLATIONPEOCREATIONDATE as ACTIONREASONSTRANSLATIONPEOCREATIONDATE,
               ACTIONREASONSTRANSLATIONPEOLASTUPDATEDATE as ACTIONREASONSTRANSLATIONPEOLASTUPDATEDATE 
      from `chrome-genre-298014.sakra_stage.h_actionam_actionreasonstranslationpvo`
)

select * from h_actionam_actionreasonstranslationpvo
