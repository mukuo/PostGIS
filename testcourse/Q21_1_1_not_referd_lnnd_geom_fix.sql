CREATE TABLE "Q21_1_1_not_referd_lnnd_geom_fix" AS

SELECT 
  ln1.gid, 
  ln1.feature_cd, 
  ln1.extn_f_cd, 
  ln1.shp_node, 
  ln1.shp_nodecd, 
  ln1.geom
FROM 
  public."Q20_1_1_not_referd_lnnd_vs_rdnd" AS Q20, 
  public."1_1_lnnd_01" AS ln1
WHERE 
  Q20.gid = ln1.gid
;
