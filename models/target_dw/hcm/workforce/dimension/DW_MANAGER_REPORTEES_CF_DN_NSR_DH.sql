 SELECT  RCFDN.MANAGER_ASSIGNMENT_ID AS MANAGER_ASSIGNMENT_ID , 
  RCFDN.LEVEL20_REPORTEE_ASSIGNMENT_ID AS LEVEL20_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.EFFECTIVE_START_DATE AS EFFECTIVE_START_DATE , 
  RCFDN.EFFECTIVE_END_DATE AS EFFECTIVE_END_DATE , 
  RCFDN.MANAGER_TYPE AS MANAGER_TYPE , 
 RCFDN.SOURCE_RECORD_ID AS SOURCE_RECORD_ID, 
  RCFDN.MANAGER_ID AS MANAGER_ID , 
  RCFDN.LEVEL20_REPORTEE_PERSON_ID AS LEVEL20_REPORTEE_PERSON_ID , 
  RCFDN.MANAGER_DISTANCE AS MANAGER_DISTANCE , 
  RCFDN.LEVEL1_REPORTEE_PERSON_ID AS LEVEL1_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL1_REPORTEE_ASSIGNMENT_ID AS LEVEL1_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL2_REPORTEE_PERSON_ID AS LEVEL2_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL2_REPORTEE_ASSIGNMENT_ID AS LEVEL2_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL3_REPORTEE_PERSON_ID AS LEVEL3_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL3_REPORTEE_ASSIGNMENT_ID AS LEVEL3_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL4_REPORTEE_PERSON_ID AS LEVEL4_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL4_REPORTEE_ASSIGNMENT_ID AS LEVEL4_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL5_REPORTEE_PERSON_ID AS LEVEL5_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL5_REPORTEE_ASSIGNMENT_ID AS LEVEL5_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL6_REPORTEE_PERSON_ID AS LEVEL6_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL6_REPORTEE_ASSIGNMENT_ID AS LEVEL6_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL7_REPORTEE_PERSON_ID AS LEVEL7_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL7_REPORTEE_ASSIGNMENT_ID AS LEVEL7_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL8_REPORTEE_PERSON_ID AS LEVEL8_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL8_REPORTEE_ASSIGNMENT_ID AS LEVEL8_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL9_REPORTEE_PERSON_ID AS LEVEL9_REPORTEE_PERSON_ID      , 
  RCFDN.LEVEL9_REPORTEE_ASSIGNMENT_ID AS LEVEL9_REPORTEE_ASSIGNMENT_ID  , 
  RCFDN.LEVEL10_REPORTEE_PERSON_ID AS LEVEL10_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL10_REPORTEE_ASSIGNMENT_ID AS LEVEL10_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL11_REPORTEE_PERSON_ID AS LEVEL11_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL11_REPORTEE_ASSIGNMENT_ID AS LEVEL11_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL12_REPORTEE_PERSON_ID AS LEVEL12_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL12_REPORTEE_ASSIGNMENT_ID AS LEVEL12_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL13_REPORTEE_PERSON_ID AS LEVEL13_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL13_REPORTEE_ASSIGNMENT_ID AS LEVEL13_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL14_REPORTEE_PERSON_ID AS LEVEL14_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL14_REPORTEE_ASSIGNMENT_ID AS LEVEL14_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL15_REPORTEE_PERSON_ID AS LEVEL15_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL15_REPORTEE_ASSIGNMENT_ID AS LEVEL15_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL16_REPORTEE_PERSON_ID AS LEVEL16_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL16_REPORTEE_ASSIGNMENT_ID AS LEVEL16_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL17_REPORTEE_PERSON_ID AS LEVEL17_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL17_REPORTEE_ASSIGNMENT_ID AS LEVEL17_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL18_REPORTEE_PERSON_ID AS LEVEL18_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL18_REPORTEE_ASSIGNMENT_ID AS LEVEL18_REPORTEE_ASSIGNMENT_ID , 
  RCFDN.LEVEL19_REPORTEE_PERSON_ID AS LEVEL19_REPORTEE_PERSON_ID     , 
  RCFDN.LEVEL19_REPORTEE_ASSIGNMENT_ID AS LEVEL19_REPORTEE_ASSIGNMENT_ID , 
 RCFDN.DW_DATE_FROM AS DW_DATE_FROM, 
 RCFDN.DW_DATE_TO AS DW_DATE_TO, 
  RCFDN.DW_INITIAL_RECORD_IND AS DW_INITIAL_RECORD_IND
 FROM {{ ref('DW_MANAGER_REPORTEES_CF_DN_DH') }} RCFDN
 WHERE  MANAGER_DISTANCE <> 0
