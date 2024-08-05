CREATE DATABASE rto;
use rto;
CREATE TABLE llr_info(id int,llr_id varchar(30) primary key,holder_name varchar(30),dob varchar(20),validity_months int,gender char,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));
INSERT INTO llr_info values(1,'LLRKA102002330456','Savitha','12/09/1999',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(2,'LLRKA102002330890','Subu','08/03/2000',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(3,'LLRKA102002330768','Gangadara','30/07/1998',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(4,'LLRKA102002330400','Harshith','02/02/2002',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(5,'LLRKA102002330231','Omprakash','1/02/2003',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(6,'LLRKA102002330490','Jayanth','16/4/1998',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(7,'LLRKA102002330009','Megha','12/12/1997',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(8,'LLRKA102002330289','Abhijith','29/02/1990',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(9,'LLRKA102002330473','Chandru','5/09/1999',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(10,'LLRKA102002330333','Zhoya','23/03/2000',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(11,'LLRKA102002330836','Lakshmish','19/09/1999',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(12,'LLRKA102002330256','Latha','28/01/1998',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(13,'LLRKA102002330285','Kamali','06/07/2002',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(14,'LLRKA102002330999','Babu','17/07/2002',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(15,'LLRKA102002330154','Guru','23/05/2001',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(16,'LLRKA102002330630','Vanitha','20/04/2001',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(17,'LLRKA102002330080','Manvith','22/09/1997',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(18,'LLRKA102002330411','Prashanth','18/07/1999',6,'M',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(19,'LLRKA102002330161','Impana','09/06/2001',6,'F',now(),'Sawmy',now(),'Manu');
INSERT INTO llr_info values(20,'LLRKA102002330884','Dikshith','25/05/2002',6,'M',now(),'Sawmy',now(),'Manu');

INSERT INTO llr_info(id,llr_id,holder_name,gender) values(1,'LLRKA102002330456','Savitha','F') 
ON DUPLICATE KEY UPDATE holder_name='Manvi';
INSERT INTO llr_info(id,llr_id,holder_name,gender) values(2,'LLRKA102002330000','Savitha','F') 
ON DUPLICATE KEY UPDATE holder_name='Subramanya';
REPLACE INTO llr_info(id,llr_id,holder_name) values(10,'LLRKA102002330333','Pooja');


CREATE TABLE llr_test_infor(id int,test_id int primary key,llr_id varchar(30),test datetime,test_amount int,test_result enum('pass','fail'),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(llr_id) references llr_info(llr_id));
INSERT INTO llr_test_infor values(1,2024001,'LLRKA102002330411','2024/07/31 6:09:00',1500,1,now(),'Rashmi',now(),'Preethi');
INSERT INTO llr_test_infor values(2,2024002,'LLRKA102002330630','2024/08/01 5:00:00',1500,1,now(),'Smruhti',now(),'Vasu');
INSERT INTO llr_test_infor values(3,2024003,'LLRKA102002330884','2024/08/01 5:20:00',1500,2,now(),'Sham',now(),'Zoya');
INSERT INTO llr_test_infor values(4,2024004,'LLRKA102002330890','2024/08/02 1:00:00',1500,1,now(),'Arun',now(),'Prem');
INSERT INTO llr_test_infor values(5,2024005,'LLRKA102002330154','2024/08/11 5:09:00',1500,1,now(),'Hemanth',now(),'Shilpa');
INSERT INTO llr_test_infor values(6,2024006,'LLRKA102002330411','2024/08/31 2:19:00',1500,1,now(),'Kuruba',now(),'Gowri');
INSERT INTO llr_test_infor values(7,2024007,'LLRKA102002330456','2024/08/03 5:30:00',1500,2,now(),'Dikshith',now(),'Gowtham');
INSERT INTO llr_test_infor values(8,2024008,'LLRKA102002330768','2024/08/10 8:45:00',1500,1,now(),'Zimp',now(),'Ranjit');
INSERT INTO llr_test_infor values(9,2024009,'LLRKA102002330400','2024/08/21 7:55:00',1500,1,now(),'Anju',now(),'Limpan');
INSERT INTO llr_test_infor values(10,2024010,'LLRKA102002330490','2024/08/22 10:11:00',1500,2,now(),'Reka',now(),'Swarup');
INSERT INTO llr_test_infor values(11,2024011,'LLRKA102002330231','2024/08/07 12:15:00',1500,1,now(),'Suri',now(),'Shakshi');
INSERT INTO llr_test_infor values(12,2024012,'LLRKA102002330473','2024/08/12 17:15:00',1500,1,now(),'Jivika',now(),'Ganga');
INSERT INTO llr_test_infor values(13,2024013,'LLRKA102002330836','2024/08/31 19:00:00',1500,2,now(),'Jamuna',now(),'Inchara');
INSERT INTO llr_test_infor values(14,2024014,'LLRKA102002330333','2024/08/29 3:12:00',1500,1,now(),'Anand',now(),'Wamy');
INSERT INTO llr_test_infor values(15,2024015,'LLRKA102002330256','2024/08/15 8:34:00',1500,1,now(),'Ravi',now(),'Dhevika');
INSERT INTO llr_test_infor values(16,2024016,'LLRKA102002330154','2024/08/17 4:56:00',1500,1,now(),'Kowshik',now(),'Bharath');
INSERT INTO llr_test_infor values(17,2024017,'LLRKA102002330884','2024/08/01 6:45:00',1500,1,now(),'Shrimathi',now(),'Jamuna');
INSERT INTO llr_test_infor values(18,2024018,'LLRKA102002330289','2024/08/08 8:08:00',1500,2,now(),'Chaithra',now(),'Nayan');
INSERT INTO llr_test_infor values(19,2024019,'LLRKA102002330411','2024/08/05 12:22:00',1500,1,now(),'Lekhan',now(),'Kavya');
INSERT INTO llr_test_infor values(20,2024020,'LLRKA102002330080','2024/08/03 11:50:00',1500,1,now(),'Kusuma',now(),'Parvathi');
SELECT * FROM llr_test_infor;
INSERT INTO llr_test_infor values(19,2024019,'LLRKA102002330411','2024/08/05 12:22:00',1500,1,now(),'Lekhan',now(),'Kavya') 
ON DUPLICATE KEY UPDATE test_id=2024023;
INSERT INTO llr_test_infor(id,test_id,llr_id,test) values(2,2024030,'LLRKA102002330630','2024/08/01 5:00:00') 
ON DUPLICATE KEY UPDATE test='2024/08/10 6:10:00';
REPLACE INTO llr_test_infor(id,test_id,llr_id,test) values(10,2024010,'LLRKA102002330490','2024/08/29 3:12:00');


CREATE TABLE dirving_licence_info(id int, dl_id varchar(30) primary key,test_id int,holder_address varchar(30),holder_bg varchar(5),
issue_date datetime,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(test_id) references llr_test_infor(test_id));
INSERT INTO dirving_licence_info values(1,'KA5213649056223',2024017,'nelamangala','A+','2024/10/07 7:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(2,'KA5213649056456',2024023,'Hesarghatta','A-','2024/10/06 6:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(3,'KA5213649056003',2024014,'rampura','b+','2024/10/05 8:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(4,'KA5113649056223',2024015,'kodihali','o+','2024/10/17 3:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(5,'KA5013649056849',2024012,'yeshwanthapura','o+','2024/10/10 9:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(6,'KA2213649056290',2024015,'chikkabalpura','A+','2024/10/10 5:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(7,'KA2013649051604',2024004,'malleshwaram','Ab-','2024/10/11 8:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(8,'KA4613649050909',2024006,'majestic','o-','2024/10/8 6:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(9,'KA3313649050748',2024015,'ullal','Ab+','2024/10/25 7:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(10,'KA4513649050945',2024012,'kengeri','b+','2024/10/24 4:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(11,'KA3213649058765',2024013,'srirampura','b+','2024/10/08 1:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(12,'KA1913649050024',2024010,'legere','A+','2024/10/31 12:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(13,'KA5913649057705',2024023,'tumkuru','Ab+','2024/10/12 11:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(14,'KA0313649059889',2024007,'hassan','o-','2024/10/17 2:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(15,'KA4741364905622',2024020,'hubli','A-','2024/10/19 10:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(16,'KA1213649057893',2024005,'raichur','o+','2024/10/01 1:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(17,'KA0413649050808',2024003,'kolar','b-','2024/10/09 9:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(18,'KA5413649056937',2024002,'solur','A-','2024/10/29 4:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(19,'KA1313649056374',2024006,'thamgondlu','b+','2024/10/30 8:15:00',now(),'Kusuma',now(),'Parvathi');
INSERT INTO dirving_licence_info values(20,'KA80136490560805',2024001,'rajajinagar','A+','2024/10/22 9:15:00',now(),'Kusuma',now(),'Parvathi');
SELECT * FROM dirving_licence_info;
INSERT INTO dirving_licence_info values(16,'KA0213649057893',2024005,'raichur','o+','2024/10/01 1:15:00',now(),'Kusuma',now(),'Parvathi') 
ON DUPLICATE KEY UPDATE holder_address='thamgondlu';
INSERT INTO dirving_licence_info values(3,'KA5213649056003',2024014,'rampura','b+','2024/10/05 8:15:00',now(),'Kusuma',now(),'Parvathi') 
ON DUPLICATE KEY UPDATE holder_address='tumkuru';
REPLACE INTO dirving_licence_info(id,dl_id,test_id,holder_address) values(14,'KA0313649059889',2024007,'raichur');


CREATE TABLE dirving_licence_test_info(id int,dl_id varchar(30),test_id int,test_address varchar(30),holder_bg varchar(5),
test_date datetime,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(dl_id) references dirving_licence_info(dl_id));
INSERT INTO dirving_licence_test_info values(1,'KA5013649056223',2024017,'nelamangala','A+','2024/10/07 7:15:00',now(),'Gowri',now(),'Pushpa');
INSERT INTO dirving_licence_test_info values(2,'KA5213649056003',2024023,'Hesarghatta','A-','2024/10/06 6:15:00',now(),'Komala',now(),'Ampi');
INSERT INTO dirving_licence_test_info values(3,'KA80136490560805',2024014,'rampura','b+','2024/10/05 8:15:00',now(),'Kiran',now(),'Anush');
INSERT INTO dirving_licence_test_info values(4,'KA5113649056223',2024015,'kodihali','o+','2024/10/17 3:15:00',now(),'Sharan',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(5,'KA5013649056849',2024012,'yeshwanthapura','o+','2024/10/10 9:15:00',now(),'Karan',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(6,'KA2213649056290',2024015,'chikkabalpura','A+','2024/10/10 5:15:00',now(),'Sonu',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(7,'KA2013649051604',2024004,'malleshwaram','Ab-','2024/10/11 8:15:00',now(),'Shilpa',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(8,'KA4613649050909',2024006,'majestic','o-','2024/10/8 6:15:00',now(),'Uma',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(9,'KA5213649056456',2024015,'ullal','Ab+','2024/10/25 7:15:00',now(),'Embram',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(10,'KA4513649050945',2024012,'kengeri','b+','2024/10/24 4:15:00',now(),'Yashu',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(11,'KA3213649058765',2024013,'srirampura','b+','2024/10/08 1:15:00',now(),'Impana',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(12,'KA1913649050024',2024010,'legere','A+','2024/10/31 12:15:00',now(),'Osama',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(13,'KA5913649057705',2024023,'tumkuru','Ab+','2024/10/12 11:15:00',now(),'Deepu',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(14,'KA0313649059889',2024007,'hassan','o-','2024/10/17 2:15:00',now(),'Shloka',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(15,'KA4741364905622',2024020,'hubli','A-','2024/10/19 10:15:00',now(),'Fharan',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(16,'KA1213649057893',2024005,'raichur','o+','2024/10/01 1:15:00',now(),'Xosh',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(17,'KA0413649050808',2024003,'kolar','b-','2024/10/09 9:15:00',now(),'Charanya',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(18,'KA5413649056937',2024002,'solur','A-','2024/10/29 4:15:00',now(),'Hari',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(19,'KA5213649056003',2024006,'thamgondlu','b+','2024/10/30 8:15:00',now(),'Adhi',now(),'Parvathi');
INSERT INTO dirving_licence_test_info values(20,'KA80136490560805',2024001,'rajajinagar','A+','2024/10/22 9:15:00',now(),'Vishwas',now(),'Parvathi');
SELECT * FROM dirving_licence_test_info;
INSERT INTO dirving_licence_test_info values(16,'KA0213649057893',2024005,'raichur','o+','2024/10/01 1:15:00',now(),'Kusuma',now(),'Parvathi') 
ON DUPLICATE KEY UPDATE test_address='thamgondlu';
INSERT INTO dirving_licence_test_info values(3,'KA5213649056003',2024014,'rampura','b+','2024/10/05 8:15:00',now(),'Kusuma',now(),'Parvathi') 
ON DUPLICATE KEY UPDATE test_address='tumkuru';
REPLACE INTO dirving_licence_test_info(id,dl_id,test_id,test_address) values(14,'KA0313649059889',2024007,'raichur');



