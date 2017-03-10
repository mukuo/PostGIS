CREATE VIEW "Q11_1_1_rdnd_vs_lnnd_master_count" AS

SELECT 
  Q10.gid, 
  Q10.feature_cd, 
  Q10.extn_f_cd, 
  Q10.shp_node, 
  Q10.shp_nodecd,
  COUNT(Q10.gid) AS max_count
FROM 
  public."Q10_1_1_rdnd_vs_lnnd_master" AS Q10 
GROUP BY
  Q10.gid, 
  Q10.feature_cd, 
  Q10.extn_f_cd, 
  Q10.shp_node, 
  Q10.shp_nodecd
 ORDER BY
  Q10.gid 
;
