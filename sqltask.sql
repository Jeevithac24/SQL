CREATE DATABASE places;
USE places;
CREATE TABLE hospital_info(hos_name varchar(20),hos_loc varchar(30),pincode int);
Truncate TABLE hospital_info;
CREATE TABLE hospital_information(id int,h_name varchar(20));
ALTER TABLE hospital_information ADD COLUMN  h_phno bigint,ADD COLUMN h_branch varchar(23),ADD COLUMN pincode int;
INSERT INTO hospital_information values(1,'Columbia Asia Hospital',08077564545,'bangalore',560067);
INSERT INTO hospital_information values(2,'people tree Hospital',08067674545,'bangalore',560050);
INSERT INTO hospital_information values(3,'Ramaiah Hospital',08077655557,'bangalore',560066);
INSERT INTO hospital_information values(4,'Narayana nethralaya',0807777745,'bangalore',561007);
INSERT INTO hospital_information values(5,'Manipal Hospital',08077564545,'yeswanthpur',560167);
INSERT INTO hospital_information values(6,'CSI Hospital',08066663333,'bangalore',560007);
INSERT INTO hospital_information values(7,'Punya hospital ',08045457756,'bangalore',560067);
INSERT INTO hospital_information values(8,'Mallika Hospital',08077563333,'bangalore',560007);
INSERT INTO hospital_information values(9,'Manipal Hospital',08069697878,'Millers road',560058);
INSERT INTO hospital_information values(10,'Manipal Hospital',08069693434,'Malleswaram',560067);
INSERT INTO hospital_information values(11,'Sparsh Hospital',08077567756,'Yeswanthpur',560167);
INSERT INTO hospital_information values(12,'Sparsh Hospital',08054535453,'Infantry Road',561267);
INSERT INTO hospital_information values(13,'Health Hospital',08045454545,'bangalore',561067);
INSERT INTO hospital_information values(14,'Harsha Hospital',08012341234,'bangalore',560067);
INSERT INTO hospital_information values(15,'Harsha Hospital',08034567896,'nelamangala',562123);
INSERT INTO hospital_information values(16,'Fortis Hospital',08034453445,'bangalore',560017);
INSERT INTO hospital_information values(17,'Prakriya Hospital',08054544545,'bangalore',560050);
INSERT INTO hospital_information values(18,'NRR Hospital',08089908990,'bangalore',560167);
INSERT INTO hospital_information values(19,'Citi Hospital',08023894567,'bangalore',560007);
INSERT INTO hospital_information values(20,'Shanbhag hospital',08023823800,'bangalore',560017);
DESC hospital_information;
SELECT * FROM hospital_information;
CREATE TABLE tourist_places(id int,t_destination varchar(50),t_length int,t_duration int,t_state varchar(50),t_country varchar(50),t_travelcharges int,t_accomodation int,t_transportation_type varchar(50),t_place_opening varchar(20),t_place_closing varchar(20));
INSERT INTO tourist_places values(1,'Hong kong',4013,3,'Wanchal district','China',100000,500000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(2,'AmsterDam',7670,7,'Netherland','Amritsar',80000,50000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(3,'Bangkok',5262,4,'Central thailand','Thailand',300000,60000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(4,'Seoul',5590,5,'Korea','South Korea',200000,340000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(5,'Haridwar',2312,6,'Uttarkhnad','India',5000,23000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(6,'Manali',2630,3,'Himachal Pradesh','India',20000,3400,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(7,'Badrinath ',2615,1,'Uttarkhand','India',10000,23000,'flight','9.00 am','10.30pm');
INSERT INTO tourist_places values(8,'Ooty',285,3,'TamilNadu','India',7000,3000,'Train','9.00 am','10.30pm');
INSERT INTO tourist_places values(9,'Kodaikanal',502,2,'TamilNadu','India',6000,3000,'Train','9.00 am','10.30pm');
INSERT INTO tourist_places values(10,'Kanchipuram',316,1,'TamilNadu','India',2300,3000,'Train','9.00 am','10.30pm');
INSERT INTO tourist_places values(11,'Mangalore',323,1,'Karnataka','India',1000,3000,'Bus','8.00 am','11.30pm');
INSERT INTO tourist_places values(12,'Ranchi',1834,4,'Jharkhand','India',7000,10000,'Flight','8.00 am','12.00pm');
INSERT INTO tourist_places values(13,'Kolkata',1902,2,'West Bengal','India',6000,7000,'Flight','8.00 am','10.30pm');
INSERT INTO tourist_places values(14,'Dubai',2680,4,'West Asia','United Arab Emirate',50000,10000,'Flight','9.00 am','11.30pm');
INSERT INTO tourist_places values(15,'Goa',532,3,'Goa','India',4000,2300,'Flight','9.00 am','11.30pm');
INSERT INTO tourist_places values(16,'Shillong',3002,5,'Meghalaya','India',320000,3000,'Flight','6.00 am','10.30pm');
INSERT INTO tourist_places values(17,'Hyderabad',589,2,'Telangana','India',9000,6000,'Train','9.00 am','10.00pm');
INSERT INTO tourist_places values(18,'New York',13340,7,'New York','America',500000,45000,'Flight','8.00 am','10.30pm');
INSERT INTO tourist_places values(19,'Los Angeles',6221,15,'Los Angeles','California',30000,60000,'Flight','10.00 am','10.30pm');
INSERT INTO tourist_places values(20,'Srilanka',1527,5,'Independent','Srilanka',10000,34000,'Flight','9.00 am','10.30pm');
ALTER TABLE tourist_places RENAME COLUMN t_length to t_length_km;
ALTER TABLE tourist_places RENAME COLUMN t_duration to t_duration_days;
Select * FROM tourist_places;

ALTER TABLE tourist_places ADD COLUMN tourist_entry_fee int default 500;
ALTER TABLE tourist_places MODIFY COLUMN t_accomodation varchar(20);
ALTER TABLE tourist_places MODIFY COLUMN t_destination int;

DESC tourist_places;




Select * FROM tourist_places;
RENAME:

RENAME table existing_table TO new_table_name;

RENAME TABLE tourist_places TO tourists_info;

SELECT * FROM tourists_info;

where:

SELECT * FROM tourists_info where id = 6;

SELECT * FROM tourists_info where t_duration_days = 3;

SELECT t_destination from tourists_info where t_state = 'Netherla';


SELECT t_destination,t_duration_days from tourists_info where t_country = 'India';

CREATE,ALTER,DROP,TRUNCATE
INSERT,SELECT
RENAME
WHERE


SELECT * FROM course;

INSERT INTO course values(1,'Java',100,20000),(2,'SQL',50,10000),(3,'WEB',25,5000);

TRUNCATE:

TRUNCATE table course;




SELECT * FROM tourists_info;

AND:
COND1    COND2     RES
TRUE     FALSE     FALSE
FALSE    TRUE      FALSE
FALSE    FALSE     FALSE
TRUE     TRUE      TRUE


SELECT * FROM tourists_info;

SELECT * FROM tourists_info where t_country = 'India' 
AND t_transportation_type = 'flight' AND id = 7;

OR:
COND1    COND2     RES
TRUE     FALSE     TRUE
FALSE    TRUE      TRUE
FALSE    FALSE     FALSE
TRUE     TRUE      TRUE

SELECT * FROM tourists_info;

SELECT * FROM tourists_info where t_transportation_type = 'Train'
 or id = 11;

































