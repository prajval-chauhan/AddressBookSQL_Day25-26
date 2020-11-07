--UC2 : creating a table for address book
use addressBookServiceDB;
create table addressBook 
(
	srNo int identity(1,1),
	firstName varchar(50) not null,
	lastName varchar (50) not null,
	city varchar(50) not null,
	state varchar(50) not null,
	zipCode int not null,
	phoneNumber bigint not null,
	email varchar not null
);
select * from addressBook;