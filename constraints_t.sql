CONSTRAINTS:
1) NOT NULL:
2) UNIQUE:
3) CHECK: 
4) PRIMARY KEY:
5) FOREIGN KEY:

CREATE TABLE disease(id int not null,
d_name varchar(20) not null,patient_name varchar(20) unique,
symptoms varchar(20), medicine_id int primary key);
select * from disease;

INSERT INTO disease values(1,'dengue', 'obama', 'viralfever', 6001);
INSERT INTO disease values(2,'covid', 'prem', 'cough', 6002);
INSERT INTO disease values(3,'malaria', 'ajay', 'fever', 6003);
INSERT INTO disease values(4,'cancer', 'arun', 'hairfall', 6004);
INSERT INTO disease values(5,'typhod', 'harshitha', 'sick', 6005);

/*
CREATE TABLE hospital(id int not null,
h_name varchar(20), loc varchar(20), medicine_id int,
*/







CREATE TABLE football(id int not null,
f_club varchar(20), manager varchar(20),
no_of_players int, club_id int, primary key(club_id,manager));

select * from football;

insert into football values(1,'BFC','vijaymalya',15,3001);
insert into football values(2,'chennaifc','vijay',16,3002);
insert into football values(3,'kfc','prasanna',12,3001);
insert into football values(4,'gfc','haji',15,3003);


CREATE TABLE cricket(id int not null,c_team varchar(20),
captain varchar(20), team_id int);
select * from cricket;
INSERT INTO cricket values(1,'India','Rohit', 201);
insert into cricket values(2,'RCB','faf',202);
insert into cricket values(3,'MI','pandya',203);
insert into cricket values(4,'dc','pant',203);

alter table cricket add constraint team_id_pk primary key(team_id);
drop table cricket;





CREATE TABLE olympics(id int not null,
organised_by varchar(20), guest varchar(20),
country varchar(30), no_of_medals int,
team_id int);

INSERT INTO olympics values(1,'paris','ronaldo',
'portugal', 10, 601);
INSERT INTO olympics values(2,'tokyo','messi',
'argentina', 9, 601);
select * from olympics;

ALTER TABLE olympics add constraint team_id_pk
primary key(team_id);




CREATE TABLE bmtc(id int, b_source varchar(20),
b_destination varchar(20), bus_no int primary key);

insert into bmtc values(1,'rajajinagar','kbs',252);
insert into bmtc values(2,'krpuram','hoskote',250);
insert into bmtc values(3,'pattanagere','kbs',401);

select * from bmtc;

ALTER TABLE bmtc drop primary key;



CREATE 4 tables 5 columns 
insert 5 data for each table.
Apply constraints unique, check, primary key: 
1) while creating table.
a) add constraint.
2) After creating table.
a) add constraint using alter 
b) drop constraint using alter
3) after inserting data.
a) add constraint using alter
b) drop constraint using alter.



create table chocolates(id int not null,c_name varchar(20),c_cost int,c_id int primary key,c_batchno int);
ALTER TABLE chocolates add constraint name_uni unique(c_name);
ALTER TABLE chocolates drop  primary key;
INSERT INTO chocolates values(1,'munch',10,1200,2379);
INSERT INTO chocolates values(2,'Dairymilk',5,1201,2439);
INSERT INTO chocolates values(3,'Kitkat',20,1202,2899);
INSERT INTO chocolates values(4,'Milkybar',15,1203,2455);
INSERT INTO chocolates values(5,'Perk',30,1204,2675);
ALTER TABLE chocolates add constraint cost_check check(c_cost>5);
ALTER TABLE chocolates drop constraint unique;

CREATE TABLE apartment(id int not null,a_name varchar(50) unique,a_location varchar(50),
a_prize bigint,no_of_flat int);
ALTER TABLE apartment add constraint prize_check check(a_prize>100000);
ALTER TABLE apartment drop constraint prize_check;
INSERT INTO apartment values(1,'Ashraya','8th mile',6500000,120);
INSERT INTO apartment values(2,'RamaChandra','Nelamangala',7800000,250);
INSERT INTO apartment values(3,'Vajra','Yeshwanthpura',7000000,200);
INSERT INTO apartment values(4,'Gudu','Malleshwaram',1000000,300);
INSERT INTO apartment values(5,'Swathi','RR nagara',16500000,400);
ALTER TABLE apartment add constraint location_pk primary key(a_location);
alter table apartment drop index a_name;

CREATE TABLE salon(id int not null,salon_name varchar(50) unique,salon_offer_per int,salon_profit bigint,salon_location varchar(20));
ALTER TABLE salon add constraint pro_check check(salon_profit>1000);
ALTER TABLE salon drop index salon_name ;
INSERT INTO salon values(1,'perimeter',90,2000,'Nelamangala');
INSERT INTO salon values(2,'spin',30,2500,'Yeswanthpur');
INSERT INTO salon values(3,'golden touch',50,3000,'Malleshwaram');
INSERT INTO salon values(4,'unisex salon',35,3500,'Rajajinagar');
INSERT INTO salon values(5,'feather',20,2100,'RRnagar');
ALTER TABLE salon add constraint offer_pk primary key(salon_offer_per);
DESC salon
ALTER TABLE salon DROP constraint pro_check;


CREATE TABLE library(id int not null,lib_name varchar(30) primary key,librarian_name varchar(20),librarian_age int,librarian_salary int);
ALTER TABLE library add constraint age_check check(librarian_age>21);
ALTER TABLE library DROP primary key;
INSERT INTO library values(1,'Swapna books','Swapna',25,10000);
INSERT INTO library values(2,'Prabha books','Gayathri',22,20000);
INSERT INTO library values(3,'Bloomspring books','Shila',23,22000);
INSERT INTO library values(4,'City books','Rohith',22,12000);
INSERT INTO library values(5,'Saraswathi books','Akash',26,15000);
ALTER TABLE library add constraint salary_uni unique(librarian_salary);
ALTER TABLE library drop constraint age_check;





desc apartment;

foreign key:

CREATE TABLE bank_details(id int not null, b_name varchar(20),
b_ifsc varchar(20), bank_id int,b_loc varchar(20),
primary key(bank_id));

SELECT * FROM bank_details;
INSERT INTO bank_details values(1,'SBI','SBIN0012', 2001, 'Rajajinagar');
INSERT INTO bank_details values(2,'HDFC','HDFC0023', 2002, 'BTM');
INSERT INTO bank_details values(3,'axis','AXLIN3001', 2003, 'vijaynagar');
INSERT INTO bank_details values(4,'icici','ICICIN3300', 2004, 'rrnagar');
INSERT INTO bank_details values(5,'canara','CNRN00600', 2005, 'krpuram');

create table cust_details(id int not null,
c_name varchar(20), c_bank_id int, 
c_loc varchar(20),foreign key(c_bank_id) references
bank_details(bank_id));

select * from bank_details; primary key
SELECT * FROM cust_details; foreign key, primary key
loan_details --- foreign key primary key
insurance details --- foreign key primary key

INSERT INTO cust_details values(1,'kamlesh',2005,'rtnagar');
INSERT INTO cust_details values(2,'amitha',2001,'btm');
INSERT INTO cust_details values(3,'Hazi',2005,'btm');

CREATE TABLE college(id int not null,
c_name varchar(20), college_id int, college_loc varchar(20),
primary key(college_id));
SELECT * FROM college;

INSERT INTO college values(1,'atria', 401, 'hebbala');
INSERT INTO college values(2,'bgmit', 402, 'mudhol');
INSERT INTO college values(3,'mce', 403, 'hassan');
INSERT INTO college values(4,'pesit', 404, 'smg');
INSERT INTO college values(5,'xworkz', 405, 'rajajinagar');

create table branch(id int not null, b_name varchar(20),
college_id int,hod varchar(20),
foreign key(college_id) references college(college_id) on delete cascade on update cascade);
select * from branch;
select * from college;

insert into branch values(1,'ec', 401,'kamlesh');
insert into branch values(2,'cs', 403,'arjun');
insert into branch values(3,'is', 404,'prasanna');
insert into branch values(4,'ei', 402,'arun');
insert into branch values(5,'java', 405,'om');

delete from college where id = 1;

update college set college_id = 406 where id = 5;






default:

create table movies(id int, m_name varchar(20),
m_actor varchar(20), m_director varchar(20),
m_language varchar(20) default 'kannada');

INSERT INTO movies(id,m_name,m_actor,m_director)
values (1,'jackie','puneeth','kamlesh');

insert into movies values(2,'mungarumale','ganesh','sachin','karunadu',600)
select * from movies;

alter table movies add column ticket_price int default 500;




upsert:


















