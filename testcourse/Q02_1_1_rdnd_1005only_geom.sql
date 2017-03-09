CREATE VIEW "Q02_1_1_rdnd_1005geom" AS

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
  public."Q01_1_1_rdnd_1005only" AS Q01, 
  public."1_1_rdnd_01" AS rn1
WHERE 
  Q01.gid = rn1.gid
;
