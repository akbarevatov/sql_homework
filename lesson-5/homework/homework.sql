create table Employees(
	EmployeeID int,
	Name varchar(50),
	Department varchar(50),
	Salary decimal(10, 2),
	HireDate Date
)
INSERT INTO Employees (EmployeeID, Name, Department, Salary, HireDate)
VALUES 
(1, 'Aisha Khan', 'HR', 50000.00, '2020-01-15'),
(2, 'Ahmed Ali', 'IT', 75000.00, '2019-03-22'),
(3, 'Fatima Noor', 'Finance', 62000.00, '2021-07-01'),
(4, 'Zaid Malik', 'Marketing', 58000.00, '2018-11-12'),
(5, 'Hira Sheikh', 'IT', 80000.00, '2022-04-10'),
(6, 'Usman Tariq', 'Sales', 55000.00, '2020-06-25'),
(7, 'Maryam Raza', 'Finance', 67000.00, '2019-10-30'),
(8, 'Bilal Siddiqui', 'HR', 53000.00, '2021-02-18'),
(9, 'Noor Abbas', 'Marketing', 60000.00, '2023-01-05'),
(10, 'Saad Qureshi', 'Sales', 57000.00, '2022-09-14');


--- 1
select 
	*,
	rank() over(order by salary desc) as salary_rank
from Employees

--- 2
select
	salary_rank, count(*) as [count]
from (
	select rank() over(order by salary) as salary_rank
	from Employees
) as t
group by salary_rank
having count(*)>1

--- 3
select top 2 *,
	rank() over(order by salary desc) as salary_rank
from Employees
order by salary_rank

--- 4
select *
from (
	select *,rank() over(partition by department order by salary asc) as salary_rank
	from Employees
) as t
where salary_rank=1

--- 5
select 
	department,
	sum(salary)
from Employees
group by department

--- 6
select
	distinct department,
	sum(salary) over(partition by department) as total_salary
from Employees

--- 7
select
	distinct department,
	cast(avg(salary) over(partition by department) as decimal(10,2)) as average_salary
from Employees

--- 8
select
	*,
	abs(cast(avg(salary) over(partition by department)-salary as decimal(10,2))) as [difference]
from Employees

--- 9
select
	*,
	cast(avg(salary) over(order by EmployeeID rows between 1 preceding and 1 following) as decimal(10,2)) as average
from Employees

--- 10
select
	distinct sum(salary) over()
from (
	select 
		salary,
		rank() over(order by hiredate desc) as date_rank
	from Employees) as t
where date_rank <=3

select * from Employees
order by hiredate desc

--- 11
select
	*,
	sum(salary) over(order by employeeid) as total
from Employees

--- 12
select
	*,
	max(salary) over(order by employeeid rows between 2 preceding and 2 following) as max_salary
from Employees

--- 13
select
	*,
	cast(salary * 100 /sum(salary) over(partition by department) as decimal(10,2)) as contribution
from Employees