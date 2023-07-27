SELECT DateFirstPurchase 
  FROM [AdventureWorksDW2014].[dbo].[DimCustomer] where 
  YEAR(DateFirstPurchase) = '2012' 
  and 
  MONTH(DateFirstPurchase) = '10'
  and
  DAY(DateFirstPurchase) = '09'
----------------------------------------------
  Select *
  from [dbo].[FactInternetSales] where
  YEAR(OrderDate) = '2012' 
  and
  Month(OrderDate) between '6' and '8'
----------------------------------------------
    Select sum(SalesAmount) as 'satış miktarı'
  from [dbo].[FactInternetSales] where
  YEAR(OrderDate) = '2012' 
  and
  Month(OrderDate) between '6' and '8'

    Select AVG(SalesAmount) as 'satışların ortalaması'
  from [dbo].[FactInternetSales] where
  YEAR(OrderDate) = '2012' 
  and
  Month(OrderDate) between '6' and '8'
