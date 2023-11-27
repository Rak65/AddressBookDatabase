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
alter table Address add Id int not null auto_increment primary key;
desc Address;

select * from Address;

-- UC3
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Rakesh', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '8978778789', 'rakp@gmail.com'); 
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Suresh', 'Kumar', 'Buxar', 'Buxar', 'Maharastra', '802134', '6767576567', 'rarp@gmail.com'); 
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Mahesh', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '6597697789', 'radsp@gmail.com');
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Akash', 'Kumar', 'Buxar', 'Buxar', 'Karnataka', '802134', '8979698798', 'ffgd@gmail.com');  
insert into Address(FirstName,lastName,Address,City,State,Zip,PhoneNumber,Email) values('Ankit', 'Kumar', 'Buxar', 'Buxar', 'Bihar', '802134', '8978788789', 'rakrep@gmail.com'); 
select * from Address;

-- UC4
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
select City, State, Count(*) as NumberOfPerson from Address group by City, State;

-- UC8
select * from Address where City = 'Buxar' order by FirstName ASC;

-- UC9
alter table Address Add Type varchar(10);
alter table Address drop column Type;
CREATE TABLE Type (
    Type_Id int NOT NULL,
    Id int not null,
    PRIMARY KEY (Type_Id),
    FOREIGN KEY (Id) REFERENCES Address(Id)
);
alter table Type add column TypeName varchar(20) not null;
select * from Type;

insert into Type values(10,1,'Profession');
insert into Type values(20,2,'Family');
insert into Type values(30,3,'Friend');
insert into Type values(40,4,'Profession');
insert into Type values(50,5,'Friend');
insert into Type values(60,3,'Friend');

select * from Address;
select * from Type;

-- UC10
select TypeName,Count(*) as TypeCount from Type group by TypeName;

-- UC11
insert into Type values(70,5,'Friend');
insert into Type values(80,3,'Friend'); 
select * from Address;
select * from Type;