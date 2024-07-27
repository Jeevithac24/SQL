create database constraints
use constraints
create table show_room(id int not null,show_room_name varchar(20) not null,location varchar(20),phno bigint,
type_of_collections varchar(20),rent int,investment bigint,profit bigint,show_room_owner varchar(20),no_of_branch int,
constraint ph_uni unique(phno),constraint name_uni unique(show_room_name),constraint in_check check(investment>10000),
constraint pro_check check(profit>=5000));
select * from show_room
DESC show_room
INSERT INTO show_room VALUES(1,'puma','Nelamangala',080787899955,'Footwear',50000,900000,6000,'Sukumar',10);
INSERT INTO show_room VALUES(2,'ZARA','RR nagar',08066778989,'Clothes',100000,1000000,106000,'Jayashree',5);
INSERT INTO show_room VALUES(3,'Hyundai','Dasrali',08094594523,'Vehicle',700000,900000,80000,'Baladhithya',50);
INSERT INTO show_room VALUES(4,'TVS motors','Yeswanthpur',08077887788,'Cars',600000,7000000,900000,'Deviika',29);
INSERT INTO show_room VALUES(5,'Crocs','Rajajinagar',08045645678,'Footwear',40000,600000,78000,'Spoorthi',7);
INSERT INTO show_room VALUES(6,'USHA','HSR layout',08087965432,'Electric gadgets',200000,600000,490000,'Harshitha',16);
INSERT INTO show_room VALUES(7,'Preethi','Majestic',08066655565,'Kitchen accessory',25000,50000,86000,'Raj',5);
INSERT INTO show_room VALUES(8,'Colorsbox','Govardhan',08023423451,'Make up kit',34000,910000,78000,'Sowmya',12);
INSERT INTO show_room VALUES(9,'R&B','Commercial street',08056776584,'Cloths',800000,1000000,600000,'Lakshmi',7);
INSERT INTO show_room VALUES(10,'Show off','Malleshwaram',08033322444,'Cloths',340000,750000,65000,'Rama',12);
INSERT INTO show_room VALUES(11,'Samsung','Nelamangala',08077788878,'Electric gadgets',950000,400000,898000,'Sham',50);
INSERT INTO show_room VALUES(12,'Honda','Gandhi nagar',08077665959,'Vehicles',7000000,3000000,8706000,'Keshava',15);
INSERT INTO show_room VALUES(13,'Mama earth','Srirampura',08070007000,'Beauty products',5600000,890000,120000,'Jayama',12);
INSERT INTO show_room VALUES(14,'Magnum','Hassan',08096878765,'Ice cream',200000,800000,30000,'Srihari',9);
INSERT INTO show_room VALUES(15,'Pothis','Rajajinagar',08048956783,'Cloths',940000,1600000,278000,'Amarami',10);
INSERT INTO show_room VALUES(16,'HP','HSR layout',08076767676,'Electric gadgets',1200000,3600000,2490000,'Rahul',20);
INSERT INTO show_room VALUES(17,'Oriflame','Neamangala',08082345643,'beauty products',625000,750000,486000,'Chaithra',15);
INSERT INTO show_room VALUES(18,'Abaran','Navrang',08067565676,'Jwellery',1034000,2910000,9078000,'Aroha',2);
INSERT INTO show_room VALUES(19,'Black Dog','Malleshwaram',08099889988,'Alcohol',70800000,9000000,9800000,'Vasu',5);
INSERT INTO show_room VALUES(20,'Gucci','Majestic',08067676767,'accessory',1340000,2750000,365000,'GuruRama',8);
ALTER TABLE show_room modify id int;
ALTER TABLE show_room add constraint own_uni unique(show_room_owner);
ALTER TABLE show_room add constraint rent_check check(rent>1000);
ALTER TABLE show_room add constraint branch_check check(no_of_branch>0 );

create table chat_center(id int not null,chat_center_name varchar(20) not null,chat_name varchar(20),cost bigint,
no_of_plates int,seats_chat_center int,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint seats_uni unique(seats_chat_center),constraint cost_check check(cost>20),
constraint plates_check check(no_of_plates>0 and no_of_plates<10));
select * from chat_center
DESC chat_center
INSERT INTO chat_center VALUES(1,'bangarpet','panipuri',40,2,22,now(),'Daku',now(),'Pinku');
INSERT INTO chat_center VALUES(2,'sairam chat center','nippat masala',30,9,25,now(),'Chiru',now(),'Dhiru');
INSERT INTO chat_center VALUES(3,'Chettys','pizza',140,1,90,now(),'Parimala',now(),'Pari');
INSERT INTO chat_center VALUES(4,'Chandru chats','Veg burger',60,3,40,now(),'Sanjana',now(),'Rama');
INSERT INTO chat_center VALUES(5,'Star chats','sev puri',40,3,30,now(),'Raju',now(),'Manju');
INSERT INTO chat_center VALUES(6,'Guruprasad chats','Crazy masala',35,4,35,now(),'Prajwal',now(),'Ragini');
INSERT INTO chat_center VALUES(7,'Eternity','rose milkshake',60,1,45,now(),'adhi',now(),'Aramba');
INSERT INTO chat_center VALUES(8,'Ram chat center','masalpuri',40,2,50,now(),'Anjali',now(),'Pranjali');
INSERT INTO chat_center VALUES(9,'1980','frenchfries',50,1,55,now(),'Daku',now(),'Pinku');
INSERT INTO chat_center VALUES(10,'1992','samosa',21,1,60,now(),'Deepu',now(),'Ramu');
INSERT INTO chat_center VALUES(11,'Square chats','samosa masala',39,5,65,now(),'Bhoomitha',now(),'Savitha');
INSERT INTO chat_center VALUES(12,'last stop chats','botti masala',25,7,66,now(),'Zumba',now(),'Zimba');
INSERT INTO chat_center VALUES(13,'Crazy chats','special chat',50,2,70,now(),'Ganga',now(),'Gangadara');
INSERT INTO chat_center VALUES(14,'KA52 chats','bel puri',45,3,24,now(),'Sathu',now(),'Panthu');
INSERT INTO chat_center VALUES(15,'Magic mud chats','Cheese Maggie',60,2,52,now(),'Charan',now(),'Charanya');
INSERT INTO chat_center VALUES(16,'Food center','Noodels',55,3,100,now(),'Harshitha',now(),'Harshitha');
INSERT INTO chat_center VALUES(17,'Malnad chats','Gobi manchuri',55,3,99,now(),'Jeevan',now(),'Kavana');
INSERT INTO chat_center VALUES(18,'Ragavendra chats','mushroom munchuri',60,4,80,now(),'Laxmi',now(),'Lakshmi');
INSERT INTO chat_center VALUES(19,'Rani chats','Sandwich',60,5,79,now(),'Bashu',now(),'Noor');
INSERT INTO chat_center VALUES(20,'Super chats','orange juice',30,8,88,now(),'Vasu',now(),'Veera');
ALTER TABLE chat_center modify id int;
commit
ALTER TABLE chat_center add constraint id_uniq unique(id);
ALTER TABLE chat_center add constraint id_check check(id>0);









