with h_assignmentam_assignmentpvo as ( 
      select 
               ASSIGNMENTID as ASSIGNMENTID,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               EFFECTIVELATESTCHANGE as EFFECTIVELATESTCHANGE,
               EFFECTIVESEQUENCE as EFFECTIVESEQUENCE,
               ASSIGNMENTPEOACTIONOCCURRENCEID as ASSIGNMENTPEOACTIONOCCURRENCEID,
               ASSIGNMENTPEOASSIGNMENTSTATUSTYPE as ASSIGNMENTPEOASSIGNMENTSTATUSTYPE,
               ASSIGNMENTPEOASSIGNMENTSTATUSTYPEID as ASSIGNMENTPEOASSIGNMENTSTATUSTYPEID,
               ASSIGNMENTPEOASSIGNMENTTYPE as ASSIGNMENTPEOASSIGNMENTTYPE,
               ASSIGNMENTPEOBUSINESSGROUPID as ASSIGNMENTPEOBUSINESSGROUPID,
               ASSIGNMENTPEOBUSINESSUNITID as ASSIGNMENTPEOBUSINESSUNITID,
               ASSIGNMENTPEOCREATEDBY as ASSIGNMENTPEOCREATEDBY,
               ASSIGNMENTPEOCREATIONDATE as ASSIGNMENTPEOCREATIONDATE,
               ASSIGNMENTPEOEMPLOYEECATEGORY as ASSIGNMENTPEOEMPLOYEECATEGORY,
               ASSIGNMENTPEOEMPLOYMENTCATEGORY as ASSIGNMENTPEOEMPLOYMENTCATEGORY,
               ASSIGNMENTPEOESTABLISHMENTID as ASSIGNMENTPEOESTABLISHMENTID,
               ASSIGNMENTPEOGRADEID as ASSIGNMENTPEOGRADEID,
               ASSIGNMENTPEOHOURLYSALARIEDCODE as ASSIGNMENTPEOHOURLYSALARIEDCODE,
               ASSIGNMENTPEOJOBID as ASSIGNMENTPEOJOBID,
               ASSIGNMENTPEOLABOURUNIONMEMBERFLAG as ASSIGNMENTPEOLABOURUNIONMEMBERFLAG,
               ASSIGNMENTPEOLASTUPDATEDATE as ASSIGNMENTPEOLASTUPDATEDATE,
               ASSIGNMENTPEOLASTUPDATELOGIN as ASSIGNMENTPEOLASTUPDATELOGIN,
               ASSIGNMENTPEOLASTUPDATEDBY as ASSIGNMENTPEOLASTUPDATEDBY,
               ASSIGNMENTPEOLEGALENTITYID as ASSIGNMENTPEOLEGALENTITYID,
               ASSIGNMENTPEOLEGISLATIONCODE as ASSIGNMENTPEOLEGISLATIONCODE,
               ASSIGNMENTPEOLOCATIONID as ASSIGNMENTPEOLOCATIONID,
               ASSIGNMENTPEOMANAGERFLAG as ASSIGNMENTPEOMANAGERFLAG,
               ASSIGNMENTPEONORMALHOURS as ASSIGNMENTPEONORMALHOURS,
               ASSIGNMENTPEOORGANIZATIONID as ASSIGNMENTPEOORGANIZATIONID,
               ASSIGNMENTPEOPERIODOFSERVICEID as ASSIGNMENTPEOPERIODOFSERVICEID,
               ASSIGNMENTPEOPERSONID as ASSIGNMENTPEOPERSONID,
               ASSIGNMENTPEOPERSONTYPEID as ASSIGNMENTPEOPERSONTYPEID,
               ASSIGNMENTPEOPOSITIONID as ASSIGNMENTPEOPOSITIONID,
               ASSIGNMENTPEOPRIMARYASSIGNMENTFLAG as ASSIGNMENTPEOPRIMARYASSIGNMENTFLAG,
               ASSIGNMENTPEOPRIMARYFLAG as ASSIGNMENTPEOPRIMARYFLAG,
               ASSIGNMENTPEOPRIMARYWORKRELATIONFLAG as ASSIGNMENTPEOPRIMARYWORKRELATIONFLAG,
               ASSIGNMENTPEOPRIMARYWORKTERMSFLAG as ASSIGNMENTPEOPRIMARYWORKTERMSFLAG,
               ASSIGNMENTPEOREASONCODE as ASSIGNMENTPEOREASONCODE,
               ASSIGNMENTPEORETIREMENTAGE as ASSIGNMENTPEORETIREMENTAGE,
               ASSIGNMENTPEORETIREMENTDATE as ASSIGNMENTPEORETIREMENTDATE,
               ASSIGNMENTPEOSYSTEMPERSONTYPE as ASSIGNMENTPEOSYSTEMPERSONTYPE,
               ASSIGNMENTPEOWORKTERMSASSIGNMENTID as ASSIGNMENTPEOWORKTERMSASSIGNMENTID,
               ASSIGNMENTPEOSENIORITYBASIS as ASSIGNMENTPEOSENIORITYBASIS,
               ASSIGNMENTPEOASSIGNMENTNUMBER as ASSIGNMENTPEOASSIGNMENTNUMBER,
               ASSIGNMENTPEOASSIGNMENTNAME as ASSIGNMENTPEOASSIGNMENTNAME,
               ASSIGNMENTPEOFULLPARTTIME as ASSIGNMENTPEOFULLPARTTIME,
               ASSIGNMENTPEOPERMANENTTEMPORARYFLAG as ASSIGNMENTPEOPERMANENTTEMPORARYFLAG 
      from 'chrome-genre-298014.sakra_stage.h_assignmentam_assignmentpvo'
)

select * from h_assignmentam_assignmentpvo
