## Find the Feature Server
http://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer

## Find the Layers on the Feature Server
Locate the layer you wish to extract and click it.

<img width="603" alt="screen shot 2017-10-17 at 11 04 36 am" src="https://user-images.githubusercontent.com/569351/31672594-036d4bfe-b32b-11e7-82be-f6f256ba1946.png">

## Make Note of Fields You Want to Extract
On the same Feature Server Layer page, you can make note of the fields you want to query. Save these for the next step.

## Can I query?
If querying is enabled it will be available at the bottom of the page as a blue "query" link.

If no query link is available, you will not be able to extract the data.

<img width="869" alt="screen shot 2017-10-17 at 11 05 21 am" src="https://user-images.githubusercontent.com/569351/31672657-28a4b7f4-b32b-11e7-96fc-99ed5a526ba9.png">

<img width="676" alt="screen shot 2017-10-17 at 11 06 02 am" src="https://user-images.githubusercontent.com/569351/31672671-312f1b76-b32b-11e7-96b4-02214ed4e934.png">

## Querying Your Results
Create the query as you wish to export the data (i.e., WHERE, Fields, Include Geometry, Format) and click "Query GET"

For our example link above, we chose to extract the following fields:

```
OBJECTID,SUB_PROJECT_ID,ROUTE_NUMBER,SEGMENT_NUMBER,ROUTE_CODE,ROUTE_NAME,SEGMENT_FROM,SEGMENT_TO,EXISTING_FACILITY,RECOMMENDED_FACILITY,CREATED_BY,CREATED_DATE,MODIFIED_BY,MODIFIED_DATE,STREET_SEGMENT_ID,BICYCLE_FACILITIES_ID,BICYCLE_PLAN_ID,SYMBOL_LEVEL,LEVEL_OF_COMFORT
```

<img width="549" alt="screen shot 2017-10-17 at 11 08 02 am" src="https://user-images.githubusercontent.com/569351/31672820-8927c63e-b32b-11e7-9142-2a0f3b29ad3b.png">

## Download Your Results
After clicking the "Query GET" button you should be presented with a GeoJSON file.

http://services.arcgis.com/0L95CJ0VTaxqcmED/ArcGIS/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer/0/query?where=1+%3D+1&objectIds=&time=&geometry=&geometryType=esriGeometryPolyline&inSR=&spatialRel=esriSpatialRelIntersects&resultType=none&distance=0.0&units=esriSRUnit_Meter&returnGeodetic=false&outFields=OBJECTID%2CSUB_PROJECT_ID%2CROUTE_NUMBER%2CSEGMENT_NUMBER%2CROUTE_CODE%2CROUTE_NAME%2CSEGMENT_FROM%2CSEGMENT_TO%2CEXISTING_FACILITY%2CRECOMMENDED_FACILITY%2CCREATED_BY%2CCREATED_DATE%2CMODIFIED_BY%2CMODIFIED_DATE%2CSTREET_SEGMENT_ID%2CBICYCLE_FACILITIES_ID%2CBICYCLE_PLAN_ID%2CSYMBOL_LEVEL%2CLEVEL_OF_COMFORT&returnGeometry=true&multipatchOption=xyFootprint&maxAllowableOffset=&geometryPrecision=&outSR=&datumTransformation=&returnIdsOnly=false&returnCountOnly=false&returnExtentOnly=false&returnDistinctValues=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&having=&resultOffset=&resultRecordCount=&returnZ=false&returnM=false&returnExceededLimitFeatures=true&quantizationParameters=&sqlFormat=standard&f=pgeojson&token=

## Troubleshooting
In the example above, 1==1 is not a valid parameter and results in an error.

You have to change it to 1 = 1.
