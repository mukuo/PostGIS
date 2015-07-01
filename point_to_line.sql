--gps_org_table_name:Original GPS Plot Data with "datetime" column
--'id' woudl be changable

SELECT id, ST_MakeLine(ordered_gps_table_name.the_geom) AS track_line
    FROM (
	SELECT id,"datetime", the_geom FROM gps_org_table_name ORDER BY id, "datetime") as ordered_gps_table_name
    		GROUP BY ordered_gps_table_name.id
    		ORDER BY ordered_gps_table_name.id
;