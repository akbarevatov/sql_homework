create table invoice(
	invoice_id int identity,
	amount decimal(10,2)
)

-- insert 5 rows without invoice_id
insert into invoice
select 123.45
union all
select 234.56
union all
select 345.67
union all
select 456.78
union all
select 567.89

-- enable indentity_insert to manually insert a row
set identity_insert invoice on

insert into invoice(invoice_id, amount)
select 100, null

select * from invoice