CREATE VIEW "Q04_2_4_rdnd_1005geom" AS

SELECT 
  rn2.gid, 
  rn2.feature_cd, 
  rn2.extn_f_cd, 
  rn2.shp_node, 
  rn2.shp_nodecd, 
  rn2.rep_units, 
  rn2.rep_node1, 
  rn2.rep_node2, 
  rn2.rep_node3, 
  rn2.rep_node4, 
  rn2.rep_node5, 
  rn2.geom
FROM 
  public."Q03_2_4_rdnd_1005only" AS Q03, 
  public."2_4_rdnd_01" AS rn2
WHERE 
  Q03.gid = rn2.gid
;
