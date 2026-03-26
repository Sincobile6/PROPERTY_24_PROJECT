--PROPERTY24 SQL PRACTICE QUESTIONS

--1. Display all properties in the database.

SELECT * FROM [housing_data].[dbo].[HousingData]

--2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.

SELECT CITY, PROVINCE, PROPERTY_PRICE FROM [housing_data].[dbo].[HousingData]

--3. List all distinct provinces in the table.

SELECT DISTINCT PROVINCE FROM [housing_data].[dbo].[HousingData]

--4. Find all properties located in Gauteng.

SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'GAUTENG'

--5. Show properties priced under R1,500,000.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROPERTY_PRICE< 1500000

--6. List properties with more than 3 bedrooms.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE BEDROOMS > 3

--7. Find properties with parking for at least 2 cars.

SELECT* FROM [housing_data].[dbo].[HousingData] WHERE PARKING >= 2

--8. Show properties where the monthly repayment is greater than R25,000.

SELECT* FROM [housing_data].[dbo].[HousingData] WHERE MONTHLY_REPAYMENT > 25000

--9. Show all properties ordered by property price from highest to lowest.

SELECT * FROM [housing_data].[dbo].[HousingData] ORDER  BY PROPERTY_PRICE DESC 

--10. List properties ordered by floor size from smallest to largest.

SELECT * FROM [housing_data].[dbo].[HousingData] ORDER BY FLOOR_SIZE ASC

--11. Show Gauteng properties ordered by monthly repayment.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'GAUTENG' ORDER BY MONTHLY_REPAYMENT 

--12. Find Western Cape properties priced below R3,000,000.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'WESTERN CAPE' AND  PROPERTY_PRICE < 3000000

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'KWAZULU-NATAL' AND BEDROOMS >= 3

--14. Find properties in Limpopo or Free State ordered by property price.

SELECT * FROM [housing_data].[dbo].[HousingData] WHERE PROVINCE= 'LIMPOPO' OR PROVINCE= 'FREE STATE' ORDER BY PROPERTY_PRICE

--15. Show the 10 most expensive properties.

 select top 10* from [housing_data].[dbo].[HousingData] order by property_price desc

--16. Show the 5 cheapest properties.

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

--17. Show the top 10 properties with the largest floor size.

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

--18. Which province appears to have the highest priced properties?
SELECT * FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE DESC
      --ANS= WESTERN CAPE
      
     more accurate
     
     select province, max(property price) as highest_price
     from [housing_data].[dbo].[HousingData] 
      group by province
      order by highest_price desc

      select province
      property price from [housing_data].[dbo].[HousingData] 
      order by property_price desc 
--19. Which cities appear to have the most affordable housing?

SELECT* FROM [housing_data].[dbo].[HousingData] ORDER BY PROPERTY_PRICE ASc
      --ANS= TZANEEN, WHITE RIVER,HARTEBEESPORT

      select city, avg(property_price) as avg_price
      from [housing_data].[dbo].[HousingData]
      group by avg_price

      select top 10 property_id, city, property_price from [housing_data].[dbo].[HousingData]
      order by property_price asc

--20. What minimum income is typically required for properties priced above R4,000,000?
 
  select*
      from [housing_data].[dbo].[HousingData]
      where property_price > 4000000
      order by min_gross_monthly_income asc
     

 