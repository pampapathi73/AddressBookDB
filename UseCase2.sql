create database Address_Book_ServiceDB
select * from sys.databases;
use Address_Book_ServiceDB

///usecase2

create table AddressBookDB
(
firstname varchar(20) not null,
lastname varchar(20) not null,
address varchar(20) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int not null,
phoneNumber varchar(12) not null,
email varchar(20)	not null,
);
