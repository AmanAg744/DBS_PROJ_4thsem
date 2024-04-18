
drop table buys;
drop table customer;
drop table artwork;
drop table artist;
drop table exhibition;
drop table gallery;





create table gallery(gid varchar(5) not null, location varchar(30), 
gname varchar(50) not null, primary key(gid));

create table exhibition(eid varchar(5) not null, enddate date not null, 
startdate date not null, gid varchar(5) not null, primary key(eid), 
foreign key(gid) references gallery on delete cascade);

create table artist(artistid varchar(5) not null, style varchar(30) not null, 
birthplace varchar(40), fname varchar(20) not null, lname varchar(20), eid varchar(5),
 gid varchar(5),primary key(artistid), foreign key(eid) references exhibition on delete cascade, 
foreign key(gid) references gallery on delete cascade);

create table artwork(artid varchar(5) not null, title varchar(30), price numeric(9) not null, 
year numeric(4), artistid varchar(5) not null, type_of_art varchar(30), eid varchar(5) not null, 
gid varchar(5) not null, primary key(artid), foreign key(artistid) references artist on delete cascade, 
foreign key(eid) references exhibition on delete cascade, foreign key(gid) references gallery on delete cascade);

create table customer(custid varchar(5) not null, gid  varchar(5) not null, 
fname varchar(30) not null, lname varchar(30), dob date, address varchar(30), phone numeric(10) not null, 
primary key(custid), foreign key(gid) references gallery on delete cascade);

create table buys(custid varchar(5) not null, artid varchar(5) not null, primary key(artid),
 foreign key(artid) references artwork on delete cascade, foreign key(custid) references customer on delete cascade);

