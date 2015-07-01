BEGIN

--mmm:integer by meter
SELECT ST_Buffer(Geography(ST_Transform(tbl_name.the_geom,4326)),mmm) FROM tbl_name;

--Retransfer to geometry type
ST_GeomFromText(ST_AsText(GEOGRAPHY));

COMMIT;