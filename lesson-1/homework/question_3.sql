drop table if exists orders;
create table orders(
	order_id int,
	customer_name varchar(50),
	order_date date,
	constraint primary_key_order_id primary key(order_id)
);
alter table orders
drop constraint primary_key_order_id;

alter table orders
add constraint primary_key_order_id primary key(order_id);
