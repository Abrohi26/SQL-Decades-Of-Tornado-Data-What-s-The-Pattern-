# SQL-Decades-Of-Tornado-Data-What-s-The-Pattern-
The first step is to clean the Tornado.CSV File I downloaded from Kaggle 
After looking through the file I noticed that the "Mag" columns had Null values. 
Using "Microsoft SQL Server" I changed the NULL Values to "NA" using this Query 
UPDATE [dbo].[tornados] 
SET mag = NULL
 WHERE mag = 'NA';
I then double-checked the data for the NULL values and saw I had 756 rows where the magnitude was "NA"  
I then started filtering for 
The Bulk of the "NA" took place from 2016 to 2022.
By looking at the trend it’s safe to assume the NULL values are 0’s on the scale.
