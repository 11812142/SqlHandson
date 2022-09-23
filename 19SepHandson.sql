create database Shopping
use [Shopping]
go
create table Customer
(
custid int primary key,
custname varchar(20),
city varchar(20),
state varchar(20)
)

create table Products
(
prodid int primary key,
prodname varchar(20),
unitprice int,
unitofMeasurement float,
QtyinStock int
)

create table sales_header
(
invno int primary key,
invdate int,
invamt float,
disPercent int
)

create table sales_detail
(
invno int,
custid int,
prodid int,
qtysold int
)


--drop table Customer1
--drop table Products1
--drop table sales_detail1
--drop table sales_header1
--drop table sales

create table sales
(invoice int primary key)


alter table sales_detail
add foreign key(invno) references sales(invoice)

alter table sales_detail
add foreign key(custid) references sales(invoice)

alter table sales_detail
add foreign key(prodid) references sales(invoice)

alter table sales_detail
drop column qtysold

alter table sales_detail
add Qty int

--alter column Qty Modify Quantity
--Execute sp_rename column Qty, Quantity

exec sp_rename 'Qty', 'Quantity';



