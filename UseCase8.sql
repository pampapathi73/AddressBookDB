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

/// usecase3

select * from AddressBookDB 

insert into AddressBookDB values
('Ram','Sharma','House no 34','Tinsukia','Assam',786675,'8745923061','ramsharma@gmail.com'),
('Niha','Das','House no 12','Namrup','Assam',786623,'9934567234','nihadas@gmail.com'),
('Prakash','Dev','house no 9','Itanagar','Arunachal pradesh',873456,'8795678657','prakash@yahoo.com');


///usecase4

update AddressBookDB set city='Nirjuli' where firstname='Prakash'

select * from AddressBookDB


///usecase5


delete from AddressBookDB where firstname='Ram'
select * from AddressBookDB

///UseCase6

select * from AddressBookDB where city='Namrup'
select * from AddressBookDB where state='assam'

///Usecase7

select count(city) as 'count' from AddressBookDB where city='namrup'
select count(firstname) as 'count' from AddressBookDB where state='assam'


select count(city) as 'count' from AddressBookDB group by city
select count(firstname) as 'count' from AddressBookDB group by state

select * from AddressBookDB

///usecase8

select * from AddressBookDB where city='namrup' order by (firstname)