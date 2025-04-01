
select * from Orders
where OrderDate between '2023-01-01' and '2023-12-31'

-----
alter table Orders
add OrderStatus as
case
	when Status='Shipped' or Status='Delivered' then 'Completed'
	when Status='Pending' then 'Pending'
	when Status='Cancelled' then 'Cancelled'
end;

-----

select OrderStatus, count(*) as TotalOrders, sum(TotalAmount) as TotalRevenue
from Orders

group by OrderStatus
having sum(TotalAmount)>5000
order by TotalRevenue desc



-----










