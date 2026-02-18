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
 SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PARKING >= 2

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
      select top 10* from [housing_data].[dbo].[HousingData] order by property_price desc

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
      
     more accurate
     
     select province, max(property price) as highest_price
     from [housing_data].[dbo].[HousingData] 
      group by province
      order by highest_price desc

      select province
      property price from [housing_data].[dbo].[HousingData] 
      order by property_price desc 

      Q19
      SELECT* FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE ASc
      ANS= TZANEEN, WHITE RIVER,HARTEBEESPORT

      select city, avg(property_price) as avg_price
      from [housing_data].[dbo].[HousingData]
      group by avg_price

      select top 10 property_id, city, property_price from [housing_data].[dbo].[HousingData]
      order by property_price asc

      Q20
      SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PROPERTY_PRICE> 4000000 ORDER BY PROPERTY_PRICE
      

      select*
      from [housing_data].[dbo].[HousingData]
      where property_price > 4000000
      order by min_gross_monthly_income asc