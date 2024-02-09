### Convert the Shapefile (SHP) to PostgreSQL (SQL) Format
```
shp2pgsql -s 4326 ~/MY_SHAPEFILE_NAME.shp TABLE_NAME postgres > TABLE_NAME.sql
```

### Import SQL File into PostgreSQL
```
psql -d DATABASE_NAME -U postgres -p 5432 -f TABLE_NAME.sql
```
