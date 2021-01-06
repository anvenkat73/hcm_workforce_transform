with h_jobam_jobpvo as ( 
      select 
               JOBID as JOBID,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               JOBPEOACTIVESTATUS as JOBPEOACTIVESTATUS,
               JOBPEOACTIONOCCURRENCEID as JOBPEOACTIONOCCURRENCEID,
               JOBPEOAPPROVALAUTHORITY as JOBPEOAPPROVALAUTHORITY,
               JOBPEOBENCHMARKJOBFLAG as JOBPEOBENCHMARKJOBFLAG,
               JOBPEOBENCHMARKJOBID as JOBPEOBENCHMARKJOBID,
               JOBPEOBUSINESSGROUPID as JOBPEOBUSINESSGROUPID,
               JOBPEOCREATEDBY as JOBPEOCREATEDBY,
               JOBPEOCREATIONDATE as JOBPEOCREATIONDATE,
               JOBPEOFULLPARTTIME as JOBPEOFULLPARTTIME,
               JOBPEOJOBCODE as JOBPEOJOBCODE,
               JOBPEOJOBFAMILYID as JOBPEOJOBFAMILYID,
               JOBPEOJOBFUNCTIONCODE as JOBPEOJOBFUNCTIONCODE,
               JOBPEOLASTUPDATEDATE as JOBPEOLASTUPDATEDATE,
               JOBPEOLASTUPDATELOGIN as JOBPEOLASTUPDATELOGIN,
               JOBPEOLASTUPDATEDBY as JOBPEOLASTUPDATEDBY,
               JOBPEOMANAGERLEVEL as JOBPEOMANAGERLEVEL,
               JOBPEOMEDCHECKUPREQ as JOBPEOMEDCHECKUPREQ,
               JOBPEOOBJECTVERSIONNUMBER as JOBPEOOBJECTVERSIONNUMBER,
               JOBPEOPROGRESSIONJOBID as JOBPEOPROGRESSIONJOBID,
               JOBPEOREGULARTEMPORARY as JOBPEOREGULARTEMPORARY,
               JOBPEOSETID as JOBPEOSETID,
      from 'chrome-genre-298014.sakra_stage.h_jobam_jobpvo'
)

select * from h_jobam_jobpvo
