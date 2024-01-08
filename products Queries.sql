--modified products table
SELECT 
p.[ProductKey],
      p.[ProductAlternateKey] AS ProductItemCode,
      p.[ProductSubcategoryKey] AS SubCategory,
   --   ,[WeightUnitMeasureCode]
   --   ,[SizeUnitMeasureCode]
      p.[EnglishProductName] AS [Product Name],
    --  ,[SpanishProductName]
    --  ,[FrenchProductName]
      --[StandardCost]
     -- ,[FinishedGoodsFlag]
     p.[Color] AS [Product Color],
     -- ,[SafetyStockLevel]
      --[ReorderPoint],
      --[ListPrice],
     p.[Size] AS [Product Size],
     -- ,[SizeRange]
   --   ,[Weight]
   --   ,[DaysToManufacture]
      p.[ProductLine] as [Product Line],
      --[DealerPrice], 
     -- [Class],
     -- [Style],
     p.[ModelName] AS [Product Model Name],
    --  ,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
    --  ,[FrenchDescription]
    --  ,[ChineseDescription]
     -- ,[ArabicDescription]
     -- ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
    --  ,[TurkishDescription]
      --[StartDate],
     -- [EndDate],
    ISNULL(p.Status, 'Outdated') AS [Product Status]
 
 
   FROM 
   [AdventureWorksDW2022].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] AS S ON p.ProductKey=S.ProductCategoryKey
  Order BY p.ProductKey  ASC