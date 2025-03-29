create table book(
	book_id int identity(1,1) constraint primary_key_books primary key,
	title varchar(100),
	author varchar(50),
	published_year int
)

create table member(
	member_id int identity(1,1) constraint primary_key_member primary key,
	name varchar(50),
	email varchar(30),
	phone_number varchar(20)
)

create table loan(
	loan_id int identity(1,1) constraint primary_key_loan primary key,
	book_id int constraint foreign_key_loan_book_id foreign key references book(book_id),
	member_id int constraint foreign_key_loan_member_id foreign key references member(member_id),
	loan_date date,
	return_date date constraint default_return_date default 'Not returned yet',
	constraint unique_loan_date_book_id unique(loan_date, book_id)
)

-- all the constraints are created with their custom names, so that they can be deleted any time needed

--insert values
insert into book
select 'Title1', 'Author1', 2012
union all
select 'Title2', 'Author2', 2008;

insert into member
select 'Member1', 'member1@example.com', '123456789'
union all
select 'Member2', 'member2@example.com', '987654321';

insert into loan(book_id, member_id, loan_date)
select 1, 2, '2025-03-29';