### Export Data From Excel
1. Open the Summary file provided by Data Vendor in Excel.
2. Click "File" in the menu bar and select "Save As"
3. From the "Format" drop down, select "Windows Comma Separated (.csv)"
4. Click "Save"

### Convert CSV Into SQL
The easiest way we have found to do this conversion is to import the CSV into a local MySQL database using SequelPro.

1. Click "File" > "Import"
2. Select the CSV file you created in the "Export Data From Excel" section above
3. Before clicking "Open", make sure that "Fields Enclosed by" has a value of "
4. In the "Table" drop down select "New table", and enter the name summary_county
5. Click the "Import" button

### Export Data From MySQL
1. In Sequel Pro, click the "Query" tab
2. Execute the following query `SELECT * FROM summary_county`
3. In the "Query Results" window shown below the query area, select all of the data, right click on it, and select "COPY AS SQL INSERT"

### Setup Table In PostgreSQL
If not data model table exists in your local PostgreSQL database you can use this table struct:

```
CREATE TABLE summary_county (
	FID text, 
GEOID10 text, 
 GeoID_Txt text, 
 NAMELSAD10 text, 
 State text, 
 county text, 
 TPop text, 
 Pop_U18 text, 
 Pop_O65 text, 
 Pop_AA text, 
 Pop_LA text, 
 Pop_NA text, 
 State_1 text, 
 County_1 text, 
 Ast_U18 text, 
 LSD_U18 text, 
 Ast_Emer text, 
 Hosp_O65 text, 
 Rdays_Ad text, 
 NAME text, 
 STUSPS text, 
 NAME_1 text, 
 GeoID text, 
 F2017_Esti text, 
 F2017_Est_ text, 
 Cancer_OR_ text, 
 C_Risk text, 
 R_Risk text, 
 Health_Ris text, 
 FID_12 text, 
 FID_12_13 text, 
 FID_1_1 text, 
 A_TPop text, 
 A_LatPop text, 
 A_AAPop text, 
 T_TPop text, 
 T_LatPop text, 
 T_AAPop text, 
 A_SqMi text, 
 Schools text, 
 MedFacil text, 
 OG_Facil text, 
 CoNameFull text, 
 TPopAll text, 
 Income text, 
 FID_1 text, 
 GeoID_1 text, 
 APop_U18 text, 
 APop_65_ text, 
 APop_NA text
)
```

### Preparing to Execute Insert From MySQL in PostgreSQL
With the "Export Data From MySQL" step 3 (COPY AS SQL INSERT), open a text editor like Atom and paste your copied statement

#### Update Insert Statements for PostgreSQL Compatibility
Replace all "Insert Into" statements with the following:
```
INSERT INTO "summary_county"("fid","geoid10","geoid_txt","namelsad10","state","county","tpop","pop_u18","pop_o65","pop_aa","pop_la","pop_na","state_1","county_1","ast_u18","lsd_u18","ast_emer","hosp_o65","rdays_ad","name","stusps","name_1","geoid","f2017_esti","f2017_est_","cancer_or_","c_risk","r_risk","health_ris","fid_12","fid_12_13","fid_1_1","a_tpop","a_latpop","a_aapop","t_tpop","t_latpop","t_aapop","a_sqmi","schools","medfacil","og_facil","conamefull","tpopall","income","fid_1","geoid_1","apop_u18","apop_65_","apop_na")
```

#### Make Sure Single Quotes are Escaped properly
MySQL escapes single quotes with `\'` which is incompatible with PostgreSQL. 

In Atom use a Find and Replace to replace all instances of `\'` with `''` (two single quotes).

### Import Your Data Into PostgreSQL
Copy the edited SQL Insert statement from Atom and Paste it into your PGCommander SQL Terminal tab and execute.

