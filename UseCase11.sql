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

///usecase9

alter table AddressBookDB add Addressbookname varchar(20), type varchar(10)
update AddressBookDB set Addressbookname='book1', type='Friends' where city='namrup'
update AddressBookDB set Addressbookname='book2', type='Family' where city='tinsukia'
update AddressBookDB set Addressbookname='book4', type='Profession' where city='itanagar'

///usecase10

select count(type),type from AddressBookDB group by type

select * from AddressBookDB


insert into AddressBookDB values
('Nikita','Sharma','House no 212','Tinsukia','Assam',785575,'8748892361','nikita@gmail.com','book2','Friends');

create table Person
(
person_id int identity(1,1) primary key not null,
firstname varchar(50),
lastname varchar(50),
email varchar(50),
phone varchar(50),
);

select * from person
insert into Person values
('Ramesh','das','ramesh@gmail.com','8734562798');
alter table person drop column person_id
alter table person add person_id int identity(1,1) primary key not null;

create table Address
(
person_id int foreign key references person(person_id),
zip int primary key,
city varchar(50),
state varchar(50),
);

select * from address

create table Addressbook
(
book_id int primary key,
person_id int foreign key references person(person_id),
bookname varchar(50),
booktype varchar(50),
);

create table Person_Addressbook
(
person_id int foreign key references person(person_id),
book_id int foreign key references addressbook(book_id),
);