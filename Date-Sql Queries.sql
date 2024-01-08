-- cleaning table & selecting only few columns--
SELECT [DateKey] 
      ,[FullDateAlternateKey] AS Date,
     -- ,[DayNumberOfWeek] 
      [EnglishDayNameOfWeek] AS Day,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] As WeekNr,
      [EnglishMonthName] As Month,
	  LEFT([EnglishMonthName],3) As MonthShort,
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      [MonthNumberOfYear] As MonthNr,
      [CalendarQuarter] As Quarter,
      [CalendarYear] As Year
    --  ,[CalendarSemester]
     --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear>=2019;
