--UC3: Ability to insert new contact into the addressBook
use addressBookServiceDB;
alter table addressBook
alter column email varchar(50);
select * from addressBook;
insert into addressBook(firstName, lastName, city, state, zipCode, phoneNumber,email)
values
		('Prem', 'Pranjal', 'Patna', 'Bihar', 123456, 8573315980, 'pp@gmail.com'),
		('Shubhrang', 'Dixit', 'Kanpur', 'UP',654123, 8295139520,'sd@gmail.com'),
		('Sample', 'Space', 'Random', 'Random2', 111111, 123454321, 'ss@gmail.com')
alter table addressBook
drop column srNo;