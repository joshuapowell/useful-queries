```
ogr2ogr
  -f GeoJSON output.geojson "PG:host=localhost dbname=local_threatmap_data_validation user=joshuapowell"
  -sql "SELECT * FROM \"TABLE_NAME\""
```
