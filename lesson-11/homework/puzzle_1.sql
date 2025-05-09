CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);
go
INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 5000),
(2, 'Bob', 'IT', 7000),
(3, 'Charlie', 'Sales', 6000),
(4, 'David', 'HR', 5500),
(5, 'Emma', 'IT', 7200);


-- swap departments --  HR → IT → Sales → HR

update employees
set department = case 
	when department = 'HR' then 'IT'
	when department = 'IT' then 'Sales'
	when department = 'Sales' then 'HR'
end

drop table if exists #EmployeeTransfers

select * 
into #EmployeeTransfers
from employees

select * from #EmployeeTransfers