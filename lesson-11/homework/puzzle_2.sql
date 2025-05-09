

CREATE TABLE Orders_DB1 (
    OrderID       INT         PRIMARY KEY,
    CustomerName  VARCHAR(100) NOT NULL,
    Product       VARCHAR(100) NOT NULL,
    Quantity      INT          NOT NULL
);

INSERT INTO Orders_DB1 (OrderID, CustomerName, Product, Quantity) VALUES
(101, 'Alice',   'Laptop',  1),
(102, 'Bob',     'Phone',   2),
(103, 'Charlie', 'Tablet',  1),
(104, 'David',   'Monitor', 1);



CREATE TABLE Orders_DB2 (
    OrderID       INT         PRIMARY KEY,
    CustomerName  VARCHAR(100) NOT NULL,
    Product       VARCHAR(100) NOT NULL,
    Quantity      INT          NOT NULL
);

INSERT INTO Orders_DB2 (OrderID, CustomerName, Product, Quantity) VALUES
(101, 'Alice',   'Laptop', 1),
(103, 'Charlie', 'Tablet', 1);


--- declare table variable
declare @MissingOrders table (
	OrderID       INT         PRIMARY KEY,
    CustomerName  VARCHAR(100) NOT NULL,
    Product       VARCHAR(100) NOT NULL,
    Quantity      INT          NOT NULL
)
--- insert the missing orders into table variable
insert into @MissingOrders
select t1.* from Orders_DB1 t1
left join Orders_DB2 t2
on t1.OrderID = t2.OrderID
where t2.orderid is null

select * from @MissingOrders