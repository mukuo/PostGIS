﻿CREATE VIEW "Q10_1_1_rdnd_vs_lnnd_master" AS

SELECT * FROM
(
SELECT 
  Q01.gid, 
  Q01.feature_cd, 
  Q01.extn_f_cd, 
  Q01.shp_node, 
  Q01.shp_nodecd, 
  ln1.shp_node AS shp_node_ln1,
  ln2.shp_node AS shp_node_ln2
FROM 
  public."Q01_1_1_rdnd_1005only" AS Q01 
 LEFT JOIN
  public."1_1_lnnd_01" AS ln1
   ON left(Q01.shp_node,11) = left(ln1.shp_node,11)
 LEFT JOIN  
  public."2_4_lnnd_01" AS ln2
   ON left(Q01.shp_node,11) = left(ln2.shp_node,11)
 ) AS T

GROUP BY
  T.gid, 
  T.feature_cd, 
  T.extn_f_cd, 
  T.shp_node, 
  T.shp_nodecd, 
  T.shp_node_ln1,
  T.shp_node_ln2
 ORDER BY
  T.gid 
;
