CREATE VIEW "Q14_1_1_rdnd_vs_not_referd_list" AS

SELECT 
  Q13.gid, 
  Q13.feature_cd, 
  Q13.extn_f_cd, 
  Q13.shp_node, 
  Q13.shp_nodecd, 
  Q13.referd_count, 
  Q11.max_count
FROM 
  public."Q13_1_1_rdnd_vs_not_referd_lnnd_count" AS Q13
   LEFT JOIN public."Q11_1_1_rdnd_vs_lnnd_master_count" AS Q11
    ON Q13.gid = Q11.gid
     AND Q13.shp_node = Q11.shp_node
     AND Q13.referd_count = Q11.max_count
;
