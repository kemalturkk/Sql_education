/* inner join*/
/* A Kesişim B */

select DC.FirstName , SUM(FIS.SalesAmount) as 'satış miktarı', DCR.CurrencyName
from [dbo].[FactInternetSales] as FIS
Inner join [dbo].[DimCustomer] as DC on (FIS.CustomerKey = DC.CustomerKey)
inner join [dbo].[DimCurrency] as DCR on (DCR.CurrencyKey =FIS.CurrencyKey)
Group by DC.FirstName , DCR.CurrencyName

-------------------------------------------------------------
/*Left Join:
A birleşim A kesişim B 

Left join, sol tablodaki (ilk belirtilen tablo) tüm satırları ve sağ tablodaki (ikinci belirtilen tablo) eşleşen satırları döndüren bir birleştirme türüdür. Eğer sağ taraftaki tabloda eşleşen bir değer yoksa, sonuçta o tablonun alanları için NULL değeri döner.
Örneğin, left join ile "Employees" tablosunu "Departments" tablosuyla birleştirdiğimizde tüm çalışanları ve eşleşen departmanları alırız:

employee_id | employee_name | department_id
-------------------------------------------
1           | John Doe      | 101
2           | Jane Smith    | 102
3           | Bob Johnson   | 101
4           | Alice Lee     | 103


department_id | department_name
-------------------------------
101           | IT
102           | HR
*/
/* inner join*/
SELECT Employees.employee_id, Employees.employee_name, Departments.department_name
FROM Employees
INNER JOIN Departments ON Employees.department_id = Departments.department_id;
/* sonuç*/

/*
employee_id | employee_name | department_name
---------------------------------------------
1           | John Doe      | IT
2           | Jane Smith    | HR
3           | Bob Johnson   | IT
*/

/* left join */
SELECT Employees.employee_id, Employees.employee_name, Departments.department_name
FROM Employees
LEFT JOIN Departments ON Employees.department_id = Departments.department_id;

/* sonuç */

/*
employee_id | employee_name | department_name
---------------------------------------------
1           | John Doe      | IT
2           | Jane Smith    | HR
3           | Bob Johnson   | IT
4           | Alice Lee     | NULL
*/



-----------------------------------------------------------
/* full outer join : A birleşim B */
/* Cross Join A kartezyen B */

----------------------------------------------------------

Select Distinct ProductKey
From [dbo].[FactInternetSales] 
where OrderDate > '2013-01-01'
except
Select Distinct ProductKey 
From [dbo].[FactInternetSales]
Where OrderDate < '2013-01-01'
----------------------------------------------------------

Select Distinct ProductKey
From [dbo].[FactInternetSales] 
where OrderDate > '2013-01-01'
except
Select Distinct ProductKey 
From [dbo].[FactInternetSales]
Where OrderDate < '2013-01-01'

-----------------------------------------------------

Select Distinct ProductKey
From [dbo].[FactInternetSales] 
where OrderDate > '2013-01-01'
intersect
Select Distinct ProductKey 
From [dbo].[FactInternetSales]
Where OrderDate < '2013-01-01'


-----------------------------------------------------

Select Distinct ProductKey
From [dbo].[FactInternetSales] 
where OrderDate > '2013-01-01'
union all
Select Distinct ProductKey 
From [dbo].[FactInternetSales]
Where OrderDate < '2013-01-01'









