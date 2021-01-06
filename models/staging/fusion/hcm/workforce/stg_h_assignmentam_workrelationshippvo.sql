with h_assignmentam_workrelationshippvo as ( 
      select 
               PERIODOFSERVICEID as PERIODOFSERVICEID,
               WORKRELATIONSHIPPEOBUSINESSGROUPID as WORKRELATIONSHIPPEOBUSINESSGROUPID,
               WORKRELATIONSHIPPEOPERSONID as WORKRELATIONSHIPPEOPERSONID,
               WORKRELATIONSHIPPEOLEGISLATIONCODE as WORKRELATIONSHIPPEOLEGISLATIONCODE,
               WORKRELATIONSHIPPEODATESTART as WORKRELATIONSHIPPEODATESTART,
               WORKRELATIONSHIPPEOACTUALTERMINATIONDATE as WORKRELATIONSHIPPEOACTUALTERMINATIONDATE,
               WORKRELATIONSHIPPEOLASTWORKINGDATE as WORKRELATIONSHIPPEOLASTWORKINGDATE,
               WORKRELATIONSHIPPEONOTIFIEDTERMINATIONDATE as WORKRELATIONSHIPPEONOTIFIEDTERMINATIONDATE,
               WORKRELATIONSHIPPEOPROJECTEDTERMINATIONDATE as WORKRELATIONSHIPPEOPROJECTEDTERMINATIONDATE,
               WORKRELATIONSHIPPEOPRIMARYFLAG as WORKRELATIONSHIPPEOPRIMARYFLAG,
               WORKRELATIONSHIPPEOLASTUPDATELOGIN as WORKRELATIONSHIPPEOLASTUPDATELOGIN,
               WORKRELATIONSHIPPEOCREATEDBY as WORKRELATIONSHIPPEOCREATEDBY,
               WORKRELATIONSHIPPEOCREATIONDATE as WORKRELATIONSHIPPEOCREATIONDATE,
               WORKRELATIONSHIPPEOLASTUPDATEDATE as WORKRELATIONSHIPPEOLASTUPDATEDATE,
               WORKRELATIONSHIPPEOLASTUPDATEDBY as WORKRELATIONSHIPPEOLASTUPDATEDBY,
      from 'chrome-genre-298014.sakra_stage.h_assignmentam_workrelationshippvo'
)

select * from h_assignmentam_workrelationshippvo
