Create database TestDB




Create Table Customers
(CustomerID char(5) not Null,
Companyname varchar(40) not null,
contactname char(30),
address varchar(60),
city char(15),
phone char(24),
fax char(24)
)


Create Table orders
( orderid Integer not null,
customerid char(5) not null,
orderdate date,
shippeddate date,
freight money,
shipname varchar(40),
shipaddress varchar(60),
quantity integer
)


Alter table orders
add shipregion integer


Alter table orders
Alter column shipregion char(8)


alter table orders
drop column shipregion


Drop table orders
Drop table customers


create table customers
(customerid char(5) not null, 
constraint CustomersPK primary key clustered (customerid),
Companyname varchar(40) not null,
contactname char(30),
address varchar(60),
city char(15),
phone char(24),
fax char(24)
)


Create Table orders
( orderid Integer not null,
constraint OrdersPK primary key clustered (orderid),
customerid char(5) not null,
constraint customersFK foreign key (customerid) references customers (customerId),
orderdate date,
shippeddate date,
freight money,
shipname varchar(40),
shipaddress varchar(60),
quantity integer
)


alter table orders
add constraint QuantityLimit 
check (quantity between 1 and 30)


alter table customers
drop constraint customerspk
--You cannot drop the primary key because it is involved in a foreign key relationship.