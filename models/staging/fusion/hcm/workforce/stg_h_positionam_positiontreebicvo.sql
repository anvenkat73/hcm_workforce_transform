with h_positionam_positiontreebicvo as ( 
      select 
               ENTERPRISEID as ENTERPRISEID,
               DEP0PK1VALUE as DEP0PK1VALUE,
               DEP10PK1VALUE as DEP10PK1VALUE,
               DEP11PK1VALUE as DEP11PK1VALUE,
               DEP12PK1VALUE as DEP12PK1VALUE,
               DEP13PK1VALUE as DEP13PK1VALUE,
               DEP14PK1VALUE as DEP14PK1VALUE,
               DEP15PK1VALUE as DEP15PK1VALUE,
               DEP16PK1VALUE as DEP16PK1VALUE,
               DEP17PK1VALUE as DEP17PK1VALUE,
               DEP18PK1VALUE as DEP18PK1VALUE,
               DEP19PK1VALUE as DEP19PK1VALUE,
               DEP1PK1VALUE as DEP1PK1VALUE,
               DEP20PK1VALUE as DEP20PK1VALUE,
               DEP21PK1VALUE as DEP21PK1VALUE,
               DEP22PK1VALUE as DEP22PK1VALUE,
               DEP23PK1VALUE as DEP23PK1VALUE,
               DEP24PK1VALUE as DEP24PK1VALUE,
               DEP25PK1VALUE as DEP25PK1VALUE,
               DEP26PK1VALUE as DEP26PK1VALUE,
               DEP27PK1VALUE as DEP27PK1VALUE,
               DEP28PK1VALUE as DEP28PK1VALUE,
               DEP29PK1VALUE as DEP29PK1VALUE,
               DEP2PK1VALUE as DEP2PK1VALUE,
               DEP30PK1VALUE as DEP30PK1VALUE,
               DEP31PK1VALUE as DEP31PK1VALUE,
               DEP3PK1VALUE as DEP3PK1VALUE,
               DEP4PK1VALUE as DEP4PK1VALUE,
               DEP5PK1VALUE as DEP5PK1VALUE,
               DEP6PK1VALUE as DEP6PK1VALUE,
               DEP7PK1VALUE as DEP7PK1VALUE,
               DEP8PK1VALUE as DEP8PK1VALUE,
               DEP9PK1VALUE as DEP9PK1VALUE,
               DISTANCE as DISTANCE,
               LASTUPDATEDATE as LASTUPDATEDATE,
               TREECODE as TREECODE,
               TREESTRUCTURECODE as TREESTRUCTURECODE,
               TREEVERSIONID as TREEVERSIONID,
               FNDTREEVERSIONEFFDATEEOEFFECTIVEENDDATE as FNDTREEVERSIONEFFDATEEOEFFECTIVEENDDATE,
               FNDTREEVERSIONEFFDATEEOEFFECTIVESTARTDATE as FNDTREEVERSIONEFFDATEEOEFFECTIVESTARTDATE,
               FNDTREEVERSIONEFFDATEEOSTATUS as FNDTREEVERSIONEFFDATEEOSTATUS,
               FNDTREEEOLASTUPDATEDATE as FNDTREEEOLASTUPDATEDATE,
               FNDTREEVERSIONEFFDATEEOLASTUPDATEDATE as FNDTREEVERSIONEFFDATEEOLASTUPDATEDATE 
      from 'chrome-genre-298014.sakra_stage.h_positionam_positiontreebicvo'
)

select * from h_positionam_positiontreebicvo
