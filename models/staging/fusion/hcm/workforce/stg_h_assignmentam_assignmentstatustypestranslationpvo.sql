with h_assignmentam_assignmentstatustypestranslationpvo as ( 
      select 
               ASSIGNMENTSTATUSTYPEID as ASSIGNMENTSTATUSTYPEID,
               LANGUAGE as LANGUAGE,
               ASSIGNMENTSTATUSTRANSLATIONSOURCELANG as ASSIGNMENTSTATUSTRANSLATIONSOURCELANG,
               ASSIGNMENTSTATUSTRANSLATIONUSERSTATUS as ASSIGNMENTSTATUSTRANSLATIONUSERSTATUS,
               ASSIGNMENTSTATUSTRANSLATIONCREATIONDATE as ASSIGNMENTSTATUSTRANSLATIONCREATIONDATE,
               ASSIGNMENTSTATUSTRANSLATIONLASTUPDATEDATE as ASSIGNMENTSTATUSTRANSLATIONLASTUPDATEDATE,
      from 'chrome-genre-298014.sakra_stage.h_assignmentam_assignmentstatustypestranslationpvo'
)

select * from h_assignmentam_assignmentstatustypestranslationpvo
