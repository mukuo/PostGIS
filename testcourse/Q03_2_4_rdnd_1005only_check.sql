CREATE VIEW "Q03_2_4_rdnd_1005only" AS

SELECT 
  rn2.gid, 
  rn2.feature_cd, 
  rn2.extn_f_cd, 
  rn2.shp_node, 
  rn2.shp_nodecd, 
/*rn2.rep_units, 
  rn2.rep_node1, 
  rn2.rep_node2, 
  rn2.rep_node3, 
  rn2.rep_node4, 
  rn2.rep_node5,*/ 
  rl1.gid AS rl1gid,
  rl1.shp_node1 AS rl1node1,
  rl1.shp_node2 AS rl1node2,
  rl2.gid AS rl2gid,
  rl2.shp_node1 AS rl2node1,
  rl2.shp_node2 AS rl2node2,
  c112.shp_node AS c112node, 
  c115.shp_node AS c115node, 
  c123.shp_node1 AS c123node1, 
  c123.shp_node2 AS c123node2, 
  c151.shp_node1 AS c151node1, 
  c151.shp_node2 AS c151node2, 
  c1611.shp_node1 AS c1611node1, 
  c1612.shp_node1 AS c1612node1,

  c211.shp_node AS c211node,
  c212.shp_node AS c212node,
  c214.shp_node AS c214node,
  c222.shp_node1 AS c222node1,
  c222.shp_node2 AS c222node2, 
  c223.shp_node1 AS c223node1,
  c223.shp_node2 AS c223node2, 
  c224.shp_node1 AS c224node1, 
  c224.shp_node2 AS c224node2, 
  c226r.shp_node1 AS c226rnode1,
  c226r.shp_node2 AS c226rnode2,
  c226r.shp_node11 AS c226rnode11,
  c226r.shp_node21 AS c226rnode21,
  c226rc.shp_node1 AS c226rcnode1,
  c226rc.shp_node2 AS c226rcnode2,
  c226rc.shp_node11 AS c226rcnode11,
  c226rc.shp_node21 AS c226rcnode21,
  c226s.shp_node1 AS c226snode1,
  c226s.shp_node2 AS c226snode2,
  c251.shp_node1 AS c251node1,
  c251.shp_node2 AS c251node2,
  c2611.shp_node1 AS c2611node1,
  c2612.shp_node1 AS c2612node1
  
FROM 
  public."2_4_rdnd_01" AS rn2 

 LEFT JOIN
  public."1_1_rlnk_01" AS rl1 ON (rn2.shp_node=rl1.shp_node1 OR rn2.shp_node=rl1.shp_node2)
 LEFT JOIN
  public."2_4_rlnk_01" AS rl2 ON (rn2.shp_node=rl2.shp_node1 OR rn2.shp_node=rl2.shp_node2)
 LEFT JOIN
  public.csv_1_1_1002_01 AS c112 ON rn2.shp_node=c112.shp_node 
 LEFT JOIN
  public.csv_1_1_1005_01 AS c115 ON rn2.shp_node=c115.shp_node 
 LEFT JOIN
  public.csv_1_1_2003_01 AS c123 ON (rn2.shp_node=c123.shp_node1 OR rn2.shp_node=c123.shp_node2)
 LEFT JOIN
  public.csv_1_1_5001_drm AS c151 ON (rn2.shp_node=c151.shp_node1 OR rn2.shp_node=c151.shp_node2)
 LEFT JOIN
  public.csv_1_1_6001_1_01 AS c1611 ON rn2.shp_node=c1611.shp_node1
 LEFT JOIN
  public.csv_1_1_6001_2_01 AS c1612 ON rn2.shp_node=c1612.shp_node1 

 LEFT JOIN
  public.csv_2_4_1001_01 AS c211 ON rn2.shp_node=c211.shp_node
 LEFT JOIN
  public.csv_2_4_1002_01 AS c212 ON rn2.shp_node=c212.shp_node  
 LEFT JOIN
  public.csv_2_4_1004_01 AS c214 ON rn2.shp_node=c214.shp_node  
 LEFT JOIN
  public.csv_2_4_2002_02 AS c222 ON (rn2.shp_node=c222.shp_node1 OR rn2.shp_node=c222.shp_node2)
 LEFT JOIN
  public.csv_2_4_2003_01 AS c223 ON (rn2.shp_node=c223.shp_node1 OR rn2.shp_node=c223.shp_node2)
 LEFT JOIN
  public.csv_2_4_2004_01 AS c224 ON (rn2.shp_node=c224.shp_node1 OR rn2.shp_node=c224.shp_node2)  
 LEFT JOIN
  public.csv_2_4_2006_r AS c226r ON (rn2.shp_node=c226r.shp_node1 OR rn2.shp_node=c226r.shp_node2 OR rn2.shp_node=c226r.shp_node11 OR rn2.shp_node=c226r.shp_node21)   
 LEFT JOIN
  public.csv_2_4_2006_rc AS c226rc ON (rn2.shp_node=c226rc.shp_node1 OR rn2.shp_node=c226rc.shp_node2 OR rn2.shp_node=c226rc.shp_node11 OR rn2.shp_node=c226rc.shp_node21)   
 LEFT JOIN
  public.csv_2_4_2006_s AS c226s ON (rn2.shp_node=c226s.shp_node1 OR rn2.shp_node=c226s.shp_node2)  
 LEFT JOIN
  public.csv_2_4_5001_drm AS c251 ON (rn2.shp_node=c251.shp_node1 OR rn2.shp_node=c251.shp_node2)
 LEFT JOIN
  public.csv_2_4_6001_1_01 AS c2611 ON rn2.shp_node=c2611.shp_node1
 LEFT JOIN
  public.csv_2_4_6001_2_01 AS c2612 ON rn2.shp_node=c2612.shp_node1 

  
WHERE
  c115.shp_node IS NOT NULL
  AND 
   (rl1.gid IS NULL
     AND rl2.gid IS NULL
     AND c112.shp_node IS NULL
     AND c123.shp_node1 IS NULL 
     AND c123.shp_node2 IS NULL 
     AND c151.shp_node1 IS NULL 
     AND c151.shp_node2 IS NULL 
     AND c1611.shp_node1 IS NULL 
     AND c1612.shp_node1 IS NULL

     AND c211.shp_node IS NULL
     AND c212.shp_node IS NULL
     AND c214.shp_node IS NULL
     AND c222.shp_node1 IS NULL 
     AND c222.shp_node2 IS NULL 
     AND c223.shp_node1 IS NULL 
     AND c223.shp_node2 IS NULL 
     AND c224.shp_node1 IS NULL 
     AND c224.shp_node2 IS NULL 
     AND c226r.shp_node1 IS NULL 
     AND c226r.shp_node2 IS NULL 
     AND c226r.shp_node11 IS NULL 
     AND c226r.shp_node21 IS NULL 
     AND c226rc.shp_node1 IS NULL 
     AND c226rc.shp_node2 IS NULL 
     AND c226rc.shp_node11 IS NULL 
     AND c226rc.shp_node21 IS NULL
     AND c226s.shp_node1 IS NULL 
     AND c226s.shp_node2 IS NULL  
     AND c251.shp_node1 IS NULL 
     AND c251.shp_node2 IS NULL 
     AND c2611.shp_node1 IS NULL 
     AND c2612.shp_node1 IS NULL
   )
;
