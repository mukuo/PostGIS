SELECT t.*

INTO
 R001_1_RDND_01_Work

FROM
(
SELECT 
  "R001_1_RDND_01".gid, 
  "R001_1_RDND_01"."Feature_CD", 
  "R001_1_RDND_01"."Shp_Node", 
  "R001_1_RDND_01"."Shp_NodeCD", 
  "R001_1_RDND_01"."Rep_Node", 
  "R001_1_RDND_01".the_geom, 
  r001_1_2007r_01."Elevation1" AS "Elevation" 
FROM 
  public."R001_1_RDND_01", public.r001_1_2007r_01 
WHERE 
  "R001_1_RDND_01"."Shp_Node" = r001_1_2007r_01."Shp_Node1"

UNION

SELECT 
  "R001_1_RDND_01".gid, 
  "R001_1_RDND_01"."Feature_CD", 
  "R001_1_RDND_01"."Shp_Node", 
  "R001_1_RDND_01"."Shp_NodeCD", 
  "R001_1_RDND_01"."Rep_Node", 
  "R001_1_RDND_01".the_geom, 
  r001_1_2007s_01."Elevation1" AS "Elevation" 
FROM 
  public."R001_1_RDND_01", public.r001_1_2007s_01 
WHERE 
  "R001_1_RDND_01"."Shp_Node" = r001_1_2007s_01."Shp_Node1"

UNION

SELECT 
  "R001_1_RDND_01".gid, 
  "R001_1_RDND_01"."Feature_CD", 
  "R001_1_RDND_01"."Shp_Node", 
  "R001_1_RDND_01"."Shp_NodeCD", 
  "R001_1_RDND_01"."Rep_Node", 
  "R001_1_RDND_01".the_geom, 
  r001_1_2007r_01."Elevation2" AS "Elevation" 
FROM 
  public."R001_1_RDND_01", public.r001_1_2007r_01
WHERE 
  "R001_1_RDND_01"."Shp_Node" = r001_1_2007r_01."Shp_Node2"

UNION

SELECT 
  "R001_1_RDND_01".gid, 
  "R001_1_RDND_01"."Feature_CD", 
  "R001_1_RDND_01"."Shp_Node", 
  "R001_1_RDND_01"."Shp_NodeCD", 
  "R001_1_RDND_01"."Rep_Node", 
  "R001_1_RDND_01".the_geom, 
  r001_1_2007s_01."Elevation2" AS "Elevation" 
FROM 
  public."R001_1_RDND_01", public.r001_1_2007s_01
WHERE 
  "R001_1_RDND_01"."Shp_Node" = r001_1_2007s_01."Shp_Node2"
) AS t
;
