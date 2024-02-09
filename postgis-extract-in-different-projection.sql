-- Extracting geometry from Detroit Bikelane data in WGS84 / 4326 / https://epsg.io/4326
SELECT 
  gid, 
  objectid, 
  name, 
  type, 
  distance, 
  status, 
  ST_Transform(geom,4326) as geom 
FROM 
  detroit_bikelanes_3 
WHERE 
  type in ('INNER CIRCLE GREENWAY','SHARROW','GREENWAY')
