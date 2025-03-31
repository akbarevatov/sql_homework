create table worker(
	id int primary key,
	name varchar(50)
)

bulk insert worker
from 'C:\Users\User\Documents\GitHub\sql_homework\lesson-2\worker.csv'
with(
	firstrow=2,
	fieldterminator=',',
	rowterminator='\n'
)
select * from worker
-- the query is working properly --