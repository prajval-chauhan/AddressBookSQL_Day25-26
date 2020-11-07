--UC11: ability to add person to both friends and family
use addressBookServiceDB;
insert into addressBook(firstName, lastName, city, state, zipCode, phoneNumber,email, contactType, addressBookName)
values
		('Prem', 'Pranjal', 'Patna', 'Bihar', 123456, 8573315980, 'pp@gmail.com', 'family', 'AddressBook1');
select * from addressBook where firstName = 'Prem';