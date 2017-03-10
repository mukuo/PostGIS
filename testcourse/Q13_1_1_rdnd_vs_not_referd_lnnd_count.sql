CREATE VIEW "Q13_1_1_rdnd_vs_not_referd_lnnd_count" AS

SELECT 
  Q12.gid, 
  Q12.feature_cd, 
  Q12.extn_f_cd, 
  Q12.shp_node, 
  Q12.shp_nodecd,
  COUNT(Q12.gid) AS referd_count
FROM 
  public."Q12_1_1_rdnd_vs_not_referd_lnnd" AS Q12 
GROUP BY
  Q12.gid, 
  Q12.feature_cd, 
  Q12.extn_f_cd, 
  Q12.shp_node, 
  Q12.shp_nodecd
 ORDER BY
  Q12.gid 
;
