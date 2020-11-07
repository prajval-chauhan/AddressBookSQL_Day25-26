--UC9: Ability to identify address book with name and type
use addressBookServiceDB;
alter table addressBook add contactType varchar(50);
update addressBook set contactType = 'friends' where lastName != 'Space';
update addressBook set contactType = 'family' where lastName = 'Space';
alter table addressBook add addressBookName varchar(50) not null default 'AddressBook1';
select * from addressBook;
