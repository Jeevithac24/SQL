CREATE DATABASE states
CREATE TABLE state_info(id int,s_name varchar(30),no_of_district bigint,s_capital varchar(30),no_of_constituencies bigint,
no_of_parliament_seats int,no_of_rajyasabha_member bigint,s_language varchar(30),s_population int,s_area bigint); 
ALTER TABLE state_info ADD COLUMN (s_per_capita bigint,s_flower varchar(20),s_mammal varchar(20),s_literacyrate_percentage int,s_vehicle_registration varchar(20));
ALTER TABLE state_info RENAME COLUMN no_of_constituencies to no_of_assembly_seats;
ALTER TABLE state_info RENAME COLUMN no_of_parliament_seats to no_of_lokasabha_seats;
ALTER TABLE state_info RENAME COLUMN s_area to s_area_squarekm;
ALTER TABLE state_info RENAME COLUMN s_name to state_name;
ALTER TABLE state_info RENAME COLUMN s_capital to state_capital;
ALTER TABLE state_info MODIFY COLUMN no_of_district int
ALTER TABLE state_info MODIFY COLUMN no_of_assembly_seats int
ALTER TABLE state_info MODIFY COLUMN no_of_rajyasabha_member int
ALTER TABLE state_info MODIFY COLUMN s_population bigint
SELECT * FROM state_info
INSERT INTO state_info values(1,'Karnataka',31,'Bangalore',224,28,12,'Kannada',61130704,191791,332926,'lotus','elephant',87,'KA')
INSERT INTO state_info values(2,'Andra Pradesh',28,'Amaravati',244,25,12,'Telugu',62230704,91791,342926,'rose','leopard',67,'AP')
INSERT INTO state_info values(3,'Goa',23,'Panaji',124,8,10,'Hindi',6113074,19791,33296,'jasmine','elephant',87,'GA')
INSERT INTO state_info values(4,'Jharkhand',21,'Ranchi',354,76,9,'HIndi',50130704,51791,672926,'lily','kola',45,'JH')
INSERT INTO state_info values(5,'Himchal Pradesh',31,'Shimla',224,28,12,'Kannada',61130704,191791,332926,'lotus','elephant',87,'HP')
INSERT INTO state_info values(6,'Gujurat',23,'Gandhinagar',789,24,09,'Gujurathi',54130704,201791,432926,'hibiscus','chitha',56,'GJ')
INSERT INTO state_info values(7,'Kerala',29,'Thiruvanthapuram',345,09,06,'Malyalam',1130704,91791,32926,'red rose','elephant',78,'KL')
INSERT INTO state_info values(8,'Madhya Pradesh',31,'Bhopal',678,32,10,'Hindi',60030704,171791,323926,'jasmine','camel',90,'MP')
INSERT INTO state_info values(9,'Maharastra',34,'Mumbai',765,34,08,'Hindi',61000704,11791,33926,'Rose','Polarbear',86,'MH')
INSERT INTO state_info values(10,'Manipur',23,'Imphal',174,21,08,'Manipur',56130704,101791,232926,'jasmine','lion',34,'MN')
INSERT INTO state_info values(11,'Meghalaya',28,'Shillong',120,21,11,'Kannada',11130704,121791,102926,'jasmine','kola',89,'MG')
INSERT INTO state_info values(12,'Mizoram',21,'Aizawl',133,28,12,'Urdu',4530704,91791,132926,'rose','tiger',78,'MI')
INSERT INTO state_info values(13,'Nagaland',19,'Kohima',199,12,12,'Tamil',49130704,121791,222926,'jasmine','leopard',78,'NL')
INSERT INTO state_info values(14,'Odisha',31,'Bhubaneshwar',224,28,12,'Odisha',61130704,191791,332926,'lotus','elephant',87,'OD')
INSERT INTO state_info values(15,'Punjab',31,'Chandigarh',224,28,12,'Kannada',61130704,191791,332926,'lotus','elephant',87,'PB')
INSERT INTO state_info values(16,'Rajasthan',31,'Jaipur',224,28,12,'Kannada',61130704,191791,332926,'lotus','elephant',87,'RA')
INSERT INTO state_info values(17,'Sikkim',31,'Gangtok',224,28,12,'Kannada',61130704,191791,332926,'lotus','elephant',87,'SI')
INSERT INTO state_info values(18,'Tamil Nadu',31,'Chennai',224,28,12,'Tamil',61130704,191791,332926,'lotus','elephant',87,'TN')
INSERT INTO state_info values(19,'Telangana',31,'Hyderabad',224,28,12,'Telgu',61130704,191791,332926,'lotus','elephant',87,'TL')
INSERT INTO state_info values(20,'Uttar Pradesh',31,'Lucknow',224,28,12,'Hindi',61130704,191791,332926,'lotus','elephant',87,'UP')
UPDATE state_info SET s_population=23450987 where id=18
UPDATE state_info SET s_population=98769876 where id=20
UPDATE state_info SET s_area_squarekm=23450987 where id=16
UPDATE state_info SET s_per_capita=56784 where id=17
UPDATE state_info SET s_literacyrate_percentage=67 where id=19
UPDATE state_info SET s_literacyrate_percentage=87 where id=16
UPDATE state_info SET no_of_rajyasabha_member=22 where id=18
UPDATE state_info SET no_of_lokasabha_seats=6 where id=17
UPDATE state_info SET no_of_assembly_seats=567 where id=15
UPDATE state_info SET s_population=345345 where id=17
SELECT * FROM state_info
DELETE FROM state_info WHERE id=12;
DELETE FROM state_info WHERE id=10;
DELETE FROM state_info WHERE s_vehicle_registration='JH';
ROLLBACK
SELECT * FROM state_info where id in (5,6,9,7,10);
SELECT * FROM state_info where id not in (7,10);
SELECT * FROM state_info where id=8 AND id=1;
SELECT * FROM state_info where id=8 OR id=1;