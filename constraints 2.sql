use constraints
create table temple_info(id int not null,temple_name varchar(20) not null,location varchar(20),funds bigint,prasada_cost int,archane_cost int,
temple_pincode bigint,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint location_uni unique(location),constraint prasada_check check(prasada_cost>50),
constraint idno_check check(id>0));
select * from temple_info
DESC temple_info
INSERT INTO temple_info VALUES(1,'Narayana temple','Nelamangala',50000,60,20,562123,now(),'Narayan',now(),'Nani');
INSERT INTO temple_info VALUES(2,'Anjeneya temple','Mangalore',150000,65,15,560023,now(),'Swami',now(),'Ajar');
INSERT INTO temple_info VALUES(3,'Panchamukhi temple','Kunigal',23000,90,37,562122,now(),'Ramajuna',now(),'Ganga');
INSERT INTO temple_info VALUES(4,'Lakshminarashimha','Kamsandra',70000,100,20,560023,now(),'Sathi',now(),'Savithri');
INSERT INTO temple_info VALUES(5,'Narayanaswamy','Kolar',30000,55,20,562100,now(),'Navami',now(),'Poojari');
INSERT INTO temple_info VALUES(6,'Lakshmi temple','Colony',25000,70,30,560101,now(),'Lakshmi',now(),'Roopa');
INSERT INTO temple_info VALUES(7,'Circle maramma','Malleswaram',290000,56,30,560151,now(),'Maruthi',now(),'Naga');
INSERT INTO temple_info VALUES(8,'Ram mandir','Bashyam circle',400000,65,35,560045,now(),'Renuka',now(),'Sham');
INSERT INTO temple_info VALUES(9,'Ganesha temple','TB stop',15000,60,39,562123,now(),'Devi',now(),'Darshan');
INSERT INTO temple_info VALUES(10,'Galianjinaya temple','Binamangala',2000,52,30,560101,now(),'Shloka',now(),'Sri');
INSERT INTO temple_info VALUES(11,'Chikkanswamy temple','Magdi',24000,70,30,5604561,now(),'Arthi',now(),'Deepa');
INSERT INTO temple_info VALUES(12,'SriLakshmi temple','Nursery',25000,70,30,560101,now(),'Lakshmi',now(),'Roopa');
INSERT INTO temple_info VALUES(13,'Shanimathma','Navarang',85000,80,35,560061,now(),'Pallavi',now(),'Praveen');
INSERT INTO temple_info VALUES(14,'gubekalama','KBD',76000,75,67,562009,now(),'Padma',now(),'Nanavam');
INSERT INTO temple_info VALUES(15,'Chamundi','Mysore',745000,90,100,5590781,now(),'Maruthi',now(),'Remo');
INSERT INTO temple_info VALUES(16,'Ganapa temple','Dasanpura',805000,80,33,5611223,now(),'Ramya',now(),'Dilip');
INSERT INTO temple_info VALUES(17,'Ganagama temple','Dasarali',22000,99,65,560001,now(),'Loki',now(),'Lambo');
INSERT INTO temple_info VALUES(18,'Parvathi temple','Kuvempu nagara',67000,88,30,560501,now(),'Sham',now(),'Sundar');
INSERT INTO temple_info VALUES(19,'Shiva temple','Bypass',20000,90,39,5621231,now(),'Kiran',now(),'Swathi');
INSERT INTO temple_info VALUES(20,'Subramanya temple','Hesragatta',349000,80,40,560023,now(),'Elisa',now(),'Imbram');
ALTER TABLE temple_info modify id int;
ALTER TABLE temple_info add constraint name_uni unique(temple_name);
ALTER TABLE temple_info add constraint pincode_check check(temple_pincode>1000);
ALTER TABLE temple_info add constraint funds_check check(funds>500 );

create table market_info(id int not null,location varchar(50) not null,no_items int,area bigint,
item_cost int,market_time datetime,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint location_uni unique(location),constraint cost_chk check(item_cost>20),
constraint items_check check(no_items>0));
select * from market_info
DESC market_info
INSERT INTO market_info VALUES(1,'Majestic',40,20000,30,'2024-07-24 6:12:8',now(),'Daku',now(),'Pinku');
INSERT INTO market_info VALUES(2,'KR Market',50,50000,35,'2024-08-24 5:30:59',now(),'Chiru',now(),'Dhiru');
INSERT INTO market_info VALUES(3,'Yeswanthpura',100,420000,60,'2024-08-12 8:12:8',now(),'Pari',now(),'Sawmi');
INSERT INTO market_info VALUES(4,'Nelamangala',90,233000,40,'2024-08-20 12:12:12',now(),'Sanjana',now(),'Rama');
INSERT INTO market_info VALUES(5,'Petebidhi',55,134000,60,'2024-08-2 11:00:8',now(),'Raju',now(),'Manju');
INSERT INTO market_info VALUES(6,'RRnagara',78,156000,90,'2024-08-30 10:22:38',now(),'Prajwal',now(),'Ragini');
INSERT INTO market_info VALUES(7,'Ramnagara',50,260000,38,'2024-09-3 3:5:6',now(),'adhi',now(),'Aramba');
INSERT INTO market_info VALUES(8,'Malleshwaram',49,35000,50,'2024-08-14 5:12:38',now(),'Anjali',now(),'Pranjali');
INSERT INTO market_info VALUES(9,'Hassan',90,890000,90,'2024-08-4 2:32:23',now(),'Daku',now(),'Pinku');
INSERT INTO market_info VALUES(10,'Raichur',80,660000,80,'2024-08-21 8:10:28',now(),'Deepu',now(),'Ramu');
INSERT INTO market_info VALUES(11,'Jaipur',45,770000,60,'2024-08-08 6:12:8',now(),'Bhoomitha',now(),'Savitha');
INSERT INTO market_info VALUES(12,'Jammu',40,20000,30,'2024-07-24 6:12:8',now(),'Zumba',now(),'Zimba');
INSERT INTO market_info VALUES(13,'Kashmir',40,20000,30,'2024-07-24 6:12:8',now(),'Ganga',now(),'Gangadara');
INSERT INTO market_info VALUES(14,'Kolar',40,20000,30,'2024-07-24 6:12:8',now(),'Sathu',now(),'Panthu');
INSERT INTO market_info VALUES(15,'Legere',40,20000,30,'2024-07-24 6:12:8',now(),'Charan',now(),'Charanya');
INSERT INTO market_info VALUES(16,'Govardhan',40,20000,30,'2024-07-24 6:12:8',now(),'Harshitha',now(),'Harshitha');
INSERT INTO market_info VALUES(17,'Ramnagar',40,20000,30,'2024-07-24 6:12:8',now(),'Jeevan',now(),'Kavana');
INSERT INTO market_info VALUES(18,'Haveri',40,20000,30,'2024-07-24 6:12:8',now(),'Laxmi',now(),'Lakshmi');
INSERT INTO market_info VALUES(19,'Solur',40,20000,30,'2024-07-24 6:12:8',now(),'Bashu',now(),'Noor');
INSERT INTO market_info VALUES(20,'Singapur',40,20000,30,'2024-07-24 6:12:8',now(),'Vasu',now(),'Veera');
ALTER TABLE market_info modify id int;
commit
ALTER TABLE market_info add constraint id_uniq unique(id);
ALTER TABLE market_info add constraint area_check check(area>100);
ALTER TABLE market_info add constraint id_check check(id>0);


create table metro_info(id int not null,location varchar(50) not null,no_tickets int,ticket_num bigint,
ticket_cost int,metro_time datetime,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint location_uni unique(location),constraint tcost_check check(ticket_cost>20),
constraint tickets_check check(no_tickets>0));
select * from metro_info
DESC metro_info
INSERT INTO metro_info VALUES(1,'Majestic',40,20000,30,'2024-07-24 6:12:8',now(),'Daku',now(),'Pinku');
INSERT INTO metro_info VALUES(2,'KR Market',50,50000,35,'2024-08-24 5:30:59',now(),'Chiru',now(),'Dhiru');
INSERT INTO metro_info VALUES(3,'Yeswanthpura',100,420000,60,'2024-08-12 8:12:8',now(),'Pari',now(),'Sawmi');
INSERT INTO metro_info VALUES(4,'Nelamangala',90,233000,40,'2024-08-20 12:12:12',now(),'Sanjana',now(),'Rama');
INSERT INTO metro_info VALUES(5,'Petebidhi',55,134000,60,'2024-08-2 11:00:8',now(),'Raju',now(),'Manju');
INSERT INTO metro_info VALUES(6,'RRnagara',78,156000,90,'2024-08-30 10:22:38',now(),'Prajwal',now(),'Ragini');
INSERT INTO metro_info VALUES(7,'Ramnagara',50,260000,38,'2024-09-3 3:5:6',now(),'adhi',now(),'Aramba');
INSERT INTO metro_info VALUES(8,'Malleshwaram',49,35000,50,'2024-08-14 5:12:38',now(),'Anjali',now(),'Pranjali');
INSERT INTO metro_info VALUES(9,'Hassan',90,890000,90,'2024-08-4 2:32:23',now(),'Daku',now(),'Pinku');
INSERT INTO metro_info VALUES(10,'Raichur',80,660000,80,'2024-08-21 8:10:28',now(),'Deepu',now(),'Ramu');
INSERT INTO metro_info VALUES(11,'Jaipur',45,770000,60,'2024-08-08 6:12:8',now(),'Bhoomitha',now(),'Savitha');
INSERT INTO metro_info VALUES(12,'Jammu',40,20000,30,'2024-07-24 6:12:8',now(),'Zumba',now(),'Zimba');
INSERT INTO metro_info VALUES(13,'Kashmir',40,20000,30,'2024-07-24 6:12:8',now(),'Ganga',now(),'Gangadara');
INSERT INTO metro_info VALUES(14,'Kolar',40,20000,30,'2024-07-24 6:12:8',now(),'Sathu',now(),'Panthu');
INSERT INTO metro_info VALUES(15,'Legere',40,20000,30,'2024-07-24 6:12:8',now(),'Charan',now(),'Charanya');
INSERT INTO metro_info VALUES(16,'Govardhan',40,20000,30,'2024-07-24 6:12:8',now(),'Harshitha',now(),'Harshitha');
INSERT INTO metro_info VALUES(17,'Ramnagar',40,20000,30,'2024-07-24 6:12:8',now(),'Jeevan',now(),'Kavana');
INSERT INTO metro_info VALUES(18,'Haveri',40,20000,30,'2024-07-24 6:12:8',now(),'Laxmi',now(),'Lakshmi');
INSERT INTO metro_info VALUES(19,'Solur',40,20000,30,'2024-07-24 6:12:8',now(),'Bashu',now(),'Noor');
INSERT INTO metro_info VALUES(20,'Singapur',40,20000,30,'2024-07-24 6:12:8',now(),'Vasu',now(),'Veera');
ALTER TABLE metro_info modify id int;
commit
ALTER TABLE metro_info add constraint id_uniq unique(id);
ALTER TABLE metro_info add constraint num_check check(ticket_num>100);