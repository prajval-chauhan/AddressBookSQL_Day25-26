--UC7: ability to get the size of the address book by city or the state
use addressBookServiceDB;
insert into addressBook(firstName, lastName, city, state, zipCode, phoneNumber,email)
values
		('Sample', 'Space', 'Patna', 'Bihar', 111111, 123454321, 'ss@gmail.com'),
		('Samasdaaple', 'Space', 'Kanpur', 'UP', 111111, 123454321, 'ss@gmail.com'),
		('Saadample', 'Space', 'Lucknow', 'UP', 111111, 123454321, 'ss@gmail.com');
select * from addressBook;
select count(city) as 'Number of persons in Patna' from  addressBook where city = 'Patna';
select count(state) as 'Number of persons in UP' from  addressBook where state = 'UP';