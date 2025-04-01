select distinct Category from Products

-----

select Category, max(Price) as MostExpensive
from Products
group by Category

-----

alter table Products
add InventoryStatus as
	iif(Stock = 0, 'Out of Stock',
		iif(Stock<10, 'Low Stock', 'In Stock'))

-----

select * from Products
order by Price desc
offset 5 rows