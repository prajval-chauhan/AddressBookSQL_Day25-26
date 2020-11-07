--UC6: ability to retrieve records by giving a state name or a city name 
use addressBookServiceDB;
select * from addressBook where city = 'Patna';
select * from addressBook where state = 'UP';