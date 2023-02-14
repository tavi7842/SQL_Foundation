create table salespeople (Snum int primary key,Sname varchar(15),city varchar(15),mobile varchar(20));

create table customer(cid int,cname varchar(15),city varchar(15),rating int,snum int primary key,
    -> foreign key (snum) references salespeople(snum));
