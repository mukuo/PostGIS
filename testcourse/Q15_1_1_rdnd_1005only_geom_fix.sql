CREATE TABLE "Q15_1_1_rdnd_1005only_geom_fix" AS

SELECT 
  rn1.gid, 
  rn1.feature_cd, 
  rn1.extn_f_cd, 
  rn1.shp_node, 
  rn1.shp_nodecd, 
  rn1.rep_units, 
  rn1.rep_node1, 
  rn1.rep_node2, 
  rn1.rep_node3, 
  rn1.rep_node4, 
  rn1.rep_node5, 
  rn1.geom
FROM 
  public."Q14_1_1_rdnd_vs_not_referd_list" AS Q14, 
  public."1_1_rdnd_01" AS rn1
WHERE 
  Q14.gid = rn1.gid
;
