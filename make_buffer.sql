BEGIN

--mmm:integer by meter
SELECTÅ@ST_Buffer(Geography(ST_Transform(tbl_name.the_geom,4326)),mmm) FROM tbl;

--Retransfer to geometry type
ST_GeomFromText(ST_AsText(GEOGRAPHY));

COMMIT;