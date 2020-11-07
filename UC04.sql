--UC4 : editing an entry in the table
use addressBookServiceDB;
update addressBook set firstName = 'Edited' where firstName = 'Sample';
select * from addressBook;