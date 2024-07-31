UPDATE [dbo].[tornados] 
SET mag = NULL
 WHERE mag = 'NA';
 
 UPDATE [dbo].[tornados] 
SET loss = 0
 WHERE loss = 'NA';
 
 SELECT * 
FROM [dbo].[tornados]
WHERE mag =3;


UPDATE [dbo].[tornados] 
SET MAG = 0 
WHERE mag is NULL;
