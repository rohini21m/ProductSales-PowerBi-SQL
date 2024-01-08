--modified table
SELECT
c.customerkey AS CustomerKey,
   -- [GeographyKey],
      --[CustomerAlternateKey],
     -- ,[Title]
      c.firstName AS [First Name],
      --,[MiddleName]
      c.lastName AS [Last Name],
	  c.firstName +''+lastName AS [FullName],
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
    --  ,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
     -- ,[EmailAddress]
    --  ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
    -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
      --,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
     -- ,[Phone]
     c.datefirstpurchase AS DateFirstPurchase,
	
     -- ,[CommuteDistance]
	  g.city AS [CustomerCity] -- joined from Gepgraphy Table
  FROM 
   [AdventureWorksDW2022].[dbo].[DimCustomer]  AS c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[dimgeography] AS g ON g.geographykey= c.geographykey
  ORDER BY 
  CustomerKey ASC -- ordered list by customerKey
