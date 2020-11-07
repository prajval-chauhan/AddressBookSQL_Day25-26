--UC12 : Refactoring the code 
use addressBookServiceDB;
create table contact(contactID int not null, firstName varchar(50) not null, lastName varchar(50) not null, emailID varchar(50) not null, mobileNo varchar(50) not null,pinCode int not null, type varchar(50)not null, abName varchar(50) not null, constraint person primary key (contactID, type));
insert into contact(contactID, firstName, lastName, emailID, mobileNo, pinCode, type, abName)values
	(1, 'Prem', 'Pranjal', 'pp@gmail.com', 8193012025,100008, 'Friends', 'AddressBook ONE'),
	(2, 'Shubhrang', 'Dixit', 'pc@gmail.com', 9874563210, 123456, 'Family', 'AddressBook ONE'),
	(2, 'Shubhrang', 'Dixit', 'pc@gmail.com', 9874563210, 123456, 'Friends', 'AddressBook ONE'),
	(3, 'ABC', 'Space', 'abc@gmail.com', 1234567890, 987456, 'Work', 'AddressBook TWO'),
	(4, 'XYZ', 'Space', 'xyz@gmail.com', 6541239870, 987456, 'Work', 'AddressBook TWO');

create table address (city varchar(50) not null, state varchar(50) not null, pinCode int not null primary key);
insert into address(city, state, pinCode)values
	('Delhi', 'Delhi', 100008),
	('Kolkata', 'West Bengal', 123456),
	('Banglore', 'Karnataka', 987456);

create table type (contactType varchar(50) primary key not null);
insert into type(contactType)values
	('Friends'),
	('Family'),
	('Work');

create table addressBookName(abName varchar(50) primary key);
insert into addressBookName(abName) values
	('AddressBook ONE'),
	('AddressBook TWO');

select * from addressBookName;
select * from type;
select * from address;
select * from contact;

alter table contact 
add foreign key(pinCode) references address(pinCode);
alter table contact 
add foreign key(type) references type(contactType);
alter table contact 
add foreign key(abName) references addressBookName(abName);

select contact.contactID,contact.firstName,contact.lastName,contact.mobileNo, contact.emailID, contact.type, contact.abName, contact.pinCode, address.city, address.state
from contact, address
where contact.pinCode = address.pinCode
and abName = 'AddressBook ONE';


select contact.contactID,contact.firstName,contact.lastName,contact.mobileNo, contact.emailID, contact.type, contact.abName, contact.pinCode, address.city, address.state
from contact, address
where contact.pinCode = address.pinCode
and address.state = 'Delhi';

select contact.contactID,contact.firstName,contact.lastName,contact.mobileNo, contact.emailID, contact.type, contact.abName, contact.pinCode, address.city, address.state
from contact, address
where contact.pinCode = address.pinCode
and address.city = 'Banglore';

