CREATE TABLE WorkLog (
    EmployeeID     INT,
    EmployeeName   VARCHAR(100),
    Department     VARCHAR(50),
    WorkDate       DATE,
    HoursWorked    INT,
    PRIMARY KEY (EmployeeID, WorkDate)
);


INSERT INTO WorkLog (EmployeeID, EmployeeName, Department, WorkDate, HoursWorked) VALUES
(1, 'Alice',   'HR',    '2024-03-01', 8),
(2, 'Bob',     'IT',    '2024-03-01', 9),
(3, 'Charlie', 'Sales', '2024-03-02', 7),
(1, 'Alice',   'HR',    '2024-03-03', 6),
(2, 'Bob',     'IT',    '2024-03-03', 8),
(3, 'Charlie', 'Sales', '2024-03-04', 9);



create view vw_TotalHoursWorked as
select EmployeeID, EmployeeName, Department,
	sum(hoursworked) as TotalHoursWorked
from worklog
group by employeeid, employeename, department;

create view vw_TotalHoursDepartment as
select department,
	sum(hoursworked) as TotalHoursDepartment
from worklog
group by department;

create view vw_AvgHoursDepartment as
select department,
	avg(hoursworked) as AvgHoursDepartment
from worklog
group by department;


select * from vw_TotalHoursWorked
select * from vw_TotalHoursDepartment
select * from vw_AvgHoursDepartment