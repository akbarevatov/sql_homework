drop table if exists student;
create table student(
	id int,
	name varchar(50),
	age int
);

alter table student
	add check(id is not null)

--insert into stdent(id, name, age)
--select null, 'john', 18     
--raises error, because id cannot be null
insert into student(id,name, age)
select 1,'adam', 31

select * from student;