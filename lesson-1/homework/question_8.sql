create table books(
	book_id int identity primary key,
	title varchar(100) not null constraint check_title check(title != ''),
	price decimal(10,2) not null constraint check_price check(price>0),
	genre varchar(50) constraint default_denre default 'Unknown'
)

-- inserts the data without any error, inserts the default value for the genre
insert into books(title, price)
select 'Harry Potter', 9.99;

-- ignores empty or null title
insert into books(title, price, genre)
select '', 12.49, 'Tragedy'

-- ignores non-positive price
insert into books(title, price)
select 'The Great Gatsby', 0


select * from books;