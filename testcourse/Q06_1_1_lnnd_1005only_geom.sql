CREATE TABLE "Q06_1_1_lnnd_1005geom" AS

SELECT 
  ln1.gid, 
  ln1.feature_cd, 
  ln1.extn_f_cd, 
  ln1.shp_node, 
  ln1.shp_nodecd, 
  ln1.rep_units, 
  ln1.rep_node1, 
  ln1.rep_node2, 
  ln1.rep_node3, 
  ln1.rep_node4, 
  ln1.rep_node5, 
  ln1.geom
FROM 
  public."Q05_1_1_lnnd_1005only" AS Q05, 
  public."1_1_lnnd_01" AS ln1
WHERE 
  Q05.gid = ln1.gid
;
