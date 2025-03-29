-- create table category with a primary key
create table category(
	category_id int primary key,
	categor_name varchar(50)
)
-- create table item with a foreign key referencing to the primary key of the table category
create table item(
	item_id int primary key,
	item_name varchar(50),
	category_id int,
	constraint foreign_key_item foreign key (category_id) references category(category_id)
)
-- drop the foreign key using alter table
alter table item
drop constraint foreign_key_item;
-- add the foreign key using alter table
alter table item
add constraint foreign_key foreign key (category_id) references category(category_id)