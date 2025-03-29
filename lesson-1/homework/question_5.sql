create table account(
	account_id int primary key,
	balance decimal(10,2) constraint check_balance check (balance>0),
	account_type varchar(8) constraint check_account_type check(account_type='Saving' or account_type='Checking')
	--constraint check_balance check(account.balance>0),
	--constraint check_account_type check(account.account_type='Saving' or account.account_type='Checking')
)
-- inserts the values without error
insert into account
select 2, 200.00, 'Checking'

-- raises error because of negative balance
insert into account
select 2, -100.00, 'Saving'

-- raises error because of invalid account_type
insert into account
select 3, 100.00, 'demo_account_type'