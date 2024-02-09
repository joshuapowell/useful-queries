```
ogr2ogr
  -f GeoJSON output.geojson "PG:host=localhost dbname=database_name user=username"
  -sql "SELECT * FROM \"TABLE_NAME\""
```
