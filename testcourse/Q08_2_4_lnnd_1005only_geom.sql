CREATE TABLE "Q08_2_4_lnnd_1005geom" AS

SELECT 
  ln2.gid, 
  ln2.feature_cd, 
  ln2.extn_f_cd, 
  ln2.shp_node, 
  ln2.shp_nodecd, 
  ln2.rep_units, 
  ln2.rep_node1, 
  ln2.rep_node2, 
  ln2.rep_node3, 
  ln2.rep_node4, 
  ln2.rep_node5, 
  ln2.geom
FROM 
  public."Q07_2_4_lnnd_1005only" AS Q07, 
  public."2_4_lnnd_01" AS ln2
WHERE 
  Q07.gid = ln2.gid
;
