PROPERTY24 Practice questions 
SELECT TOP (100000) [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income] FROM [housing_data].[dbo].[HousingData]

Q1
SELECT * FROM [housing_data].[dbo].[HousingData]

Q2
SELECT CITY, PROVINCE, PROPERTY_PRICE FROM [housing_data].[dbo].[HousingData]

Q3
 SELECT DISTINCT PROVINCE FROM [housing_data].[dbo].[HousingData]

 Q4
 SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'GAUTENG'

 Q5
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROPERTY_PRICE< 1500000

 Q6
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE BEDROOMS > 3

 Q7
 SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PARKING > 2

 Q8
 SELECT* FROM [housing_data].[dbo].[HousingData] WHERE MONTHLY_REPAYMENT > 25000

 Q9
 SELECT * FROM [housing_data].[dbo].[HousingData] ORDER  BY PROPERTY_PRICE DESC 

 Q10
 SELECT * FROM [housing_data].[dbo].[HousingData] ORDER BY FLOOR_SIZE ASC

 Q11
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'GAUTENG' ORDER BY MONTHLY_REPAYMENT 

 Q12
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'WESTERN CAPE' AND  PROPERTY_PRICE < 3000000

 Q13
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'KWAZULU-NATAL' AND BEDROOMS >= 3

 Q14 
 SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'LIMPOPO' OR PROVINCE= 'FREE STATE' ORDER BY PROPERTY_PRICE

 Q15
 SELECT TOP (10) [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income] FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE DESC

 Q16
 SELECT TOP (5) [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income] FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE ASC

      Q17
      SELECT TOP (10) [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income] FROM [housing_data].[dbo].[HousingData] ORDER BY FLOOR_SIZE DESC

      Q18 
      SELECT * FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE DESC
      ANS= WESTERN CAPE

      Q19
      SELECT* FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE ASC
      ANS= TZANEEN, WHITE RIVER,HARTEBEESPORT

      Q20
      SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PROPERTY_PRICE> 4000000 ORDER BY PROPERTY_PRICE
      ANS= 32613