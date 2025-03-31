create table student(
	id int primary key,
	name varchar(50),
	classes int not null,
	tuition_per_class decimal(10,2) not null,
	total_tuition as (classes * tuition_per_class) persisted
);

insert into student(id, name, classes, tuition_per_class)
select 1,'class1', 4, 2000.00
union all
select 2,'class2', 2, 1500.00
union all
select 3,'class3', 3, 2500.00

select * from student
-- it works correctly --