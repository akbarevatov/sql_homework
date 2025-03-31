drop table if exists test_identity
create table test_identity(
	id int identity(1,1),
	name varchar(50)
)

insert into test_identity
select 'anna'
union all
select 'john'
union all
select 'adam'
union all
select 'levy'
union all
select 'josh'

select * from test_identity

-- DELETE --
delete from test_identity
select * from test_identity

-- TRUNCATE --
truncate table test_identity
select * from test_identity

-- DROP --
drop table test_identity
select * from test_identity -- raises error. because the table has been deleted


-- QUESTIONS --

/* 
1.
when new rows are inserted, identity column continues to store 
values starting from the last one when the DELETE operand is used.

2.
it starts from the beginning as declared when creating the table
for example, in table test_identity the identity column starts its
values from 1: -- id int identity(1, 1) --

3.
the table will be deleted entirely. nothing will be left, even the column names

*/