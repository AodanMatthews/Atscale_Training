CREATE SCHEMA as_adventure;

CREATE TABLE as_adventure.datecustom (pk_date TIMESTAMP, datekey BIGINT, year TIMESTAMP, year_name VARCHAR(255), month TIMESTAMP, month_name VARCHAR(255), date_name VARCHAR(255), half_year TIMESTAMP, half_year_name VARCHAR(255), quarter TIMESTAMP, quarter_name VARCHAR(255), week TIMESTAMP, week_name VARCHAR(255), day_of_year BIGINT, day_of_year_name VARCHAR(255), day_of_half_year BIGINT, day_of_half_year_name VARCHAR(255), day_of_quarter BIGINT, day_of_quarter_name VARCHAR(255), day_of_month BIGINT, day_of_month_name VARCHAR(255), day_of_week BIGINT, day_of_week_name VARCHAR(255), week_of_year BIGINT, week_of_year_name VARCHAR(255), month_of_year BIGINT, month_of_year_name VARCHAR(255), month_of_half_year BIGINT, month_of_half_year_name VARCHAR(255), month_of_quarter BIGINT, month_of_quarter_name VARCHAR(255), quarter_of_year BIGINT, quarter_of_year_name VARCHAR(255), quarter_of_half_year BIGINT, quarter_of_half_year_name VARCHAR(255), half_year_of_year BIGINT, half_year_of_year_name VARCHAR(255), ReportIng Year TIMESTAMP, ReportIng Year_name VARCHAR(255), ReportIng Half Year TIMESTAMP, ReportIng Half Year_name VARCHAR(255), reporting_quarter TIMESTAMP, reporting_quarter_name VARCHAR(255), reporting_month TIMESTAMP, reporting_month_name VARCHAR(255), reporting_month_name2 VARCHAR(255), reporting_week TIMESTAMP, reporting_week_name VARCHAR(255), reporting_day TIMESTAMP, reporting_day_name VARCHAR(255), reporting_day_of_year BIGINT, reporting_day_of_year_name VARCHAR(255), reporting_day_of_half_year BIGINT, reporting_day_of_half_year_name VARCHAR(255), reporting_day_of_quarter BIGINT, reporting_day_of_quarter_name VARCHAR(255), reporting_day_of_month BIGINT, reporting_day_of_month_name VARCHAR(255), reporting_day_of_week BIGINT, reporting_day_of_week_name VARCHAR(255), reporting_week_of_year BIGINT, reporting_week_of_year_name VARCHAR(255), reporting_week_of_half_year BIGINT, reporting_week_of_half_year_name VARCHAR(255), reporting_week_of_quarter BIGINT, reporting_week_of_quarter_name VARCHAR(255), reporting_week_of_month BIGINT, reporting_week_of_month_name VARCHAR(255), reporting_month_of_year BIGINT, reporting_month_of_year_name VARCHAR(255), reporting_month_of_half_year BIGINT, reporting_month_of_half_year_name VARCHAR(255), reporting_month_of_quarter BIGINT, reporting_month_of_quarter_name VARCHAR(255), reporting_quarter_of_year BIGINT, reporting_quarter_of_year_name VARCHAR(255), reporting_quarter_of_half_year BIGINT, reporting_quarter_of_half_year_name VARCHAR(255), ReportIng Half Year_of_year BIGINT, ReportIng Half Year_of_year_name VARCHAR(255), iso_8601_year TIMESTAMP, iso_8601_year_name VARCHAR(255), iso_8601_week TIMESTAMP, iso_8601_week_name VARCHAR(255), iso_8601_day TIMESTAMP, iso_8601_day_name VARCHAR(255), iso_8601_day_of_year BIGINT, iso_8601_day_of_year_name VARCHAR(255), iso_8601_day_of_week BIGINT, iso_8601_day_of_week_name VARCHAR(255), iso_8601_week_of_year BIGINT, iso_8601_week_of_year_name_reporting_day_ctl VARCHAR(255), reporting_day_lykey TIMESTAMP, reporting_week_ctl TIMESTAMP, reporting_week_lykey TIMESTAMP, reporting_month_lykey TIMESTAMP, reporting_quarter_lykey TIMESTAMP, ReportIng Half Year_lykey TIMESTAMP, ReportIng Year_lykey TIMESTAMP);
COPY as_adventure.datecustom FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.datecustom.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dim_geo_city (geographykey BIGINT, city VARCHAR(255), statekey VARCHAR(255), citystatekey VARCHAR(255));
COPY as_adventure.dim_geo_city FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_city.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dim_geo_country (country VARCHAR(255));
COPY as_adventure.dim_geo_country FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_country.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dim_geo_postalcode (geographykey BIGINT, postalcode VARCHAR(255), country VARCHAR(255), countrypostalcode VARCHAR(255));
COPY as_adventure.dim_geo_postalcode FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_postalcode.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dim_geo_state (statekey VARCHAR(255), state VARCHAR(255), country VARCHAR(255));
COPY as_adventure.dim_geo_state FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dim_geo_state.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimcurrency (currencykey BIGINT, currencyalternatekey VARCHAR(255), currencyname VARCHAR(255));
COPY as_adventure.dimcurrency FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimcurrency.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimcustomer (customerkey BIGINT, geographykey BIGINT, firstname VARCHAR(255), lastname VARCHAR(255), gender VARCHAR(255), datefirstpurchase VARCHAR(255), occupation VARCHAR(255), fullname VARCHAR(255));
COPY as_adventure.dimcustomer FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimcustomer.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimgender (genderkey VARCHAR(255), gendername VARCHAR(255));
COPY as_adventure.dimgender FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimgender.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimgeography (geographykey BIGINT, city VARCHAR(255), stateprovincename VARCHAR(255), englishcountryregionname VARCHAR(255), postalcode VARCHAR(255));
COPY as_adventure.dimgeography FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimgeography.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimorder (salesordernumber VARCHAR(255), salesorderlinenumber BIGINT, ordername VARCHAR(255), linename VARCHAR(255), type VARCHAR(255), currencykey BIGINT, currency_name VARCHAR(255), ordernumberlinekey VARCHAR(255));
COPY as_adventure.dimorder FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimorder.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.dimproduct (productkey BIGINT, englishproductname VARCHAR(255), listprice FLOAT, startdate VARCHAR(255), productsubcategorykey BIGINT, productline VARCHAR(255), productsubcategoryname VARCHAR(255));
COPY as_adventure.dimproduct FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.dimproduct.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;

CREATE TABLE as_adventure.factinternetsales (salesordernumber VARCHAR(255), salesorderlinenumber BIGINT, sales_reasons VARCHAR(255), productkey BIGINT, product_info VARCHAR(255), orderdatekey BIGINT, customerkey BIGINT, orderquantity BIGINT, unitprice FLOAT, salesamount FLOAT, taxamt FLOAT, orderdate VARCHAR(255), shipdatekey BIGINT, currencykey BIGINT);
COPY as_adventure.factinternetsales FROM 's3://atscaletutorialdata/tutorial-data/as_adventure/as_adventure_table_AS_ADVENTURE.factinternetsales.csv' CREDENTIALS 'aws_access_key_id=<aws_access_key_id>;aws_secret_access_key=<aws_secret_access_key>;token=<token>' REGION 'us-west-1' CSV DELIMITER '\t' NULL AS '(null)' IGNOREHEADER AS 1;
