with h_managerhierarchyam_managerhierarchydnpvolinemanager as ( 
      select 
               ASSIGNMENTID as ASSIGNMENTID,
               BUSINESSGROUPID as BUSINESSGROUPID,
               CREATEDBY as CREATEDBY,
               CREATIONDATE as CREATIONDATE,
               EFFECTIVEENDDATE as EFFECTIVEENDDATE,
               EFFECTIVESTARTDATE as EFFECTIVESTARTDATE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               LASTUPDATEDBY as LASTUPDATEDBY,
               MANAGERASSIGNMENTID as MANAGERASSIGNMENTID,
               MANAGERID as MANAGERID,
               MANAGERLEVEL as MANAGERLEVEL,
               MANAGERTYPE as MANAGERTYPE,
               PERSONID as PERSONID,
               PRIMARYASSIGNMENTFLAG as PRIMARYASSIGNMENTFLAG,
               PRIMARYMANAGERFLAG as PRIMARYMANAGERFLAG 
      from 'chrome-genre-298014.sakra_stage.h_managerhierarchyam_managerhierarchydnpvolinemanager'
)

select * from h_managerhierarchyam_managerhierarchydnpvolinemanager
