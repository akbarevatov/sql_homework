-- create table with default value constraint for city column
create table customer(
	customer_id int primary key,
	name varchar(50),
	city varchar(50) constraint default_city default 'Unknown'
)

-- drop the default value constraint using alter table
alter table customer
drop constraint default_city;

-- add default value constraint for citys
alter table customer
add constraint default_city default 'Unknown' for city;