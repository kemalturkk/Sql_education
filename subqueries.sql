/* Products tablosundan Safety stock level verilerini çekmek istiyosun ama ortalamadan yüksek olmaları şartıyla bunları görmek istiyosun
şartı varsa eğer */

select SafetyStockLevel 
from dbo.DimProduct
where SafetyStockLevel >  (
Select  AVG(SafetyStockLevel) from dbo.DimProduct)

-----------------------------------------------------------------------

Select distinct DP.EnglishProductName , 
toplam = (Select SUM(SalesAmount) from dbo.FactInternetSales
where DP.ProductKey= dbo.FactInternetSales.ProductKey)

From dbo.DimProduct as DP
right join dbo.FactInternetSales as FIS on ( DP.ProductKey = FIS.ProductKey )

-----------------------------------------------------------------------

