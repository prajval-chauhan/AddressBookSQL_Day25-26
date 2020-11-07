--UC5: Deleting a person from the addressBook table
use addressBookServiceDB;
delete from addressBook where firstName = 'Edited';
select * from addressBook;