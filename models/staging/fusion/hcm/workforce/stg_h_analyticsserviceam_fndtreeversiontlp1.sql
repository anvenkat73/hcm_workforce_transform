with h_analyticsserviceam_fndtreeversiontlp1 as ( 
      select 
               DESCRIPTION as DESCRIPTION,
               ENTERPRISEID as ENTERPRISEID,
               LANGUAGE as LANGUAGE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               TREECODE as TREECODE,
               TREESTRUCTURECODE as TREESTRUCTURECODE,
               TREEVERSIONID as TREEVERSIONID,
               TREEVERSIONNAME as TREEVERSIONNAME,
               VERSIONCOMMENT as VERSIONCOMMENT 
      from `chrome-genre-298014.sakra_stage.h_analyticsserviceam_fndtreeversiontlp1`
)

select * from h_analyticsserviceam_fndtreeversiontlp1
