-- UC1
create Database AddressBookDatabase;
use AddressBookDatabase;
-- UC2
Create table Address
(
FirstName varchar(20),
lastName varchar(20),
Address varchar(20),
City varchar(10),
State varchar(20),
Zip varchar(6),
PhoneNumber varchar(10),
Email varchar(20)
);

select * from Address;

-- UC3
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Rakesh', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '8978778789', 'rakp@gmail.com'); 
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Suresh', 'Kumar', 'Buxar', 'Buxar', 'Maharastra', '802134', '6767576567', 'rarp@gmail.com'); 
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Mahesh', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '6597697789', 'radsp@gmail.com');
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Akash', 'Kumar', 'Buxar', 'Buxar', 'Karnataka', '802134', '8979698798', 'ffgd@gmail.com');  
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Ankit', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '8978788789', 'rakrep@gmail.com'); 
select * from Address;

-- UC4
alter table Address add primary key(firstName);
update Address set FirstName = 'Mukesh' where FirstName = 'Suresh';
update Address set State = 'Rajsthan' where FirstName = 'Mukesh';
update Address set Email = 'radsp@gmail.com' where FirstName = 'Mahesh';
update Address set City = 'Delhi' where FirstName = 'Ankit';
update Address set PhoneNumber = '7417697896' where FirstName = 'Akash';
Select * from Address;

-- UC5
delete from Address where FirstName = 'Mukesh';
select * from Address;

-- UC6
select * from Address where City = 'Buxar' or State = 'Bihar';

-- UC7
select Count(*) from Address group by City, State;

-- UC8
select * from Address where City = 'Buxar' order by FirstName ASC;

-- UC9
alter table Address Add Type varchar(10);
select * from Address;

update Address set Type = 'Profession' where FirstName = 'Rakesh';
update Address set Type = 'Friend' where FirstName = 'Mahesh';
update Address set Type = 'Family' where FirstName = 'Akash';
update Address set Type = 'Frienf' where FirstName = 'Ankit';
select * from Address;

-- UC10
select Count(*) from Address group by Type;

-- UC11
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('Sanjeev', 'Singh', 'Agra sector 7', 'UP', 'UP', '897987', '6987978979', 'ssanju@gmail.com', 'Friend');  
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('Abhishek', 'Sonu', '34 HSR layout', 'Bangalore', 'Karnataka', '560062', '4678689794', 'abhi@gmail.com', 'Family');
select * from Address