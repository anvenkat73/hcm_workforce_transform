with f_analyticsserviceam_keyflexstructureinstancespvo as ( 
      select 
               APPLICATIONID as APPLICATIONID,
               KEYFLEXFIELDCODE as KEYFLEXFIELDCODE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               STRUCTUREINSTANCECODE as STRUCTUREINSTANCECODE,
               STRUCTUREINSTANCENUMBER as STRUCTUREINSTANCENUMBER,
      from 'chrome-genre-298014.sakra_stage.f_analyticsserviceam_keyflexstructureinstancespvo'
)

select * from f_analyticsserviceam_keyflexstructureinstancespvo
