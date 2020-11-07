--UC8: retrieving entries sorted alphabetically by Person's name for a given city
select * from addressBook where city = 'Patna' order by firstName asc ;
select * from addressBook where state = 'Bihar' or city = 'Lucknow' order by firstName asc;