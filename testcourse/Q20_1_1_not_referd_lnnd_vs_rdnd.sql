CREATE VIEW "Q20_1_1_not_referd_lnnd_vs_rdnd" AS

SELECT * FROM
(
SELECT 
  ln1.gid, 
  ln1.feature_cd, 
  ln1.extn_f_cd, 
  ln1.shp_node, 
  ln1.shp_nodecd, 
  Q14.shp_node AS shp_node_rn1
FROM 
  public."Q14_1_1_rdnd_vs_not_referd_list" AS Q14 
 LEFT JOIN
  public."Q05_1_1_lnnd_1005only" AS ln1
   ON left(Q14.shp_node,11) = left(ln1.shp_node,11)
 LEFT JOIN  
  public."Q07_2_4_lnnd_1005only" AS ln2
   ON left(Q14.shp_node,11) = left(ln2.shp_node,11)
 ) AS T

GROUP BY
  T.gid, 
  T.feature_cd, 
  T.extn_f_cd, 
  T.shp_node, 
  T.shp_nodecd, 
  T.shp_node_rn1
 ORDER BY
  T.gid 
;
