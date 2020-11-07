--UC10 : ability to get number of contacts by type
use addressBookServiceDB;
select * from addressBook;
select count(firstName) as 'Number of Friends in address book' from addressBook where contactType = 'family';
select count(firstName) as 'Number of Friends in address book' from addressBook where contactType = 'friends';
select contactType, count(*) as 'Number of Contacts' from addressBook group by contactType;
