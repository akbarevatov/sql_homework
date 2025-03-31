create table data_types_demo(
	id INT PRIMARY KEY,  
	name VARCHAR(100),  
	email NVARCHAR(MAX),  
	age SMALLINT,  
	salary DECIMAL(10,2),  
	is_active BIT,  
	created_at DATETIME DEFAULT GETDATE(),  
	updated_at DATETIME,  
	birth_date DATE,  
	login_time TIME,  
	profile_image VARBINARY(MAX),  
	metadata NVARCHAR(MAX)
)

insert into data_types_demo
values
(1, 'Ali Khan', 'ali.khan@example.com', 30, 55000.75, 1, GETDATE(), NULL, '1994-05-15', '08:30:00', NULL, '{"role": "admin", "department": "IT"}'),  
(2, 'Fatima Noor', 'fatima.noor@example.com', 27, 48000.50, 1, GETDATE(), GETDATE(), '1997-09-22', '09:15:00', NULL, '{"role": "analyst", "department": "Finance"}'),  
(3, 'Ahmed Ali', 'ahmed.ali@example.com', 35, 62000.00, 0, GETDATE(), NULL, '1989-11-30', '07:45:00', NULL, '{"role": "manager", "department": "HR"}');

select * from data_types_demo