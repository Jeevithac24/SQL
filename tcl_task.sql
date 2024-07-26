Create database scam
USE scam
CREATE TABLE scam_info(id int,scam_type varchar(30),scam_amount bigint,scam_number bigint,scam_location varchar(30),
scamed_person_name varchar(30),scamed_account_num bigint,scammed_location varchar(30),scammer_location varchar(30),scam_year int); 
ALTER TABLE scam_info ADD COLUMN (scammed_pincode bigint,scammer_pincode bigint,scammed_bankname varchar(20),scam_branch_code int);
ALTER TABLE scam_info RENAME COLUMN scam_amount to scam_amount_Rs;
ALTER TABLE scam_info RENAME COLUMN scam_number to scammer_number;
ALTER TABLE scam_info RENAME COLUMN scam_year to scam_occurred_year;
ALTER TABLE scam_info RENAME COLUMN scam_branch_code to scam_bank_branch;
ALTER TABLE scam_info MODIFY COLUMN scam_bank_branch varchar(20)
ALTER TABLE scam_info MODIFY COLUMN scammed_pincode int
ALTER TABLE scam_info MODIFY COLUMN scammer_pincode int
ALTER TABLE scam_info MODIFY COLUMN scam_amount_Rs int
SELECT * FROM scam_info
desc scam_info;
TRUNCATE TABLE scam_info;
INSERT INTO scam_info values(1,'phone scams',31000,9807654567,'Bangalore','Prema',61130704,'bangalore','mangalore',2024,564567,564323,'SBI','bangalore')
INSERT INTO scam_info values(2,'email scams',28000,08076274623,'Amaravati','Ramkumar',62230704,'mangalore','gandhinagar',2023,567487,567867,'ICICI','mangalore')
INSERT INTO scam_info values(3,'investment scams',23000,9988998899,'Panaji','Shashi',6113074,'chennai','bangalore',2023,567483,563487,'City bank','chennai')
INSERT INTO scam_info values(4,'imposter scams',21000,786475331,'Ranchi','Sundra',50130704,'gandhinagar','mangalore',2024,567834,563445,'federal bank','gandhinagar')
INSERT INTO scam_info values(5,'phising',31000,9987866554,'Shimla','Bhoomi',61130704,'jammu','bangalore',2022,569831,561287,'SBI','jammu')
INSERT INTO scam_info values(6,'social media scams',23000,7878969645,'Gandhinagar','Gopal',54130704,'kashmir','meghalaya',2022,560945,560956,'Corporate bank','kashmir')
INSERT INTO scam_info values(7,'phising',29000,889768686,'Thiruvanthapuram','Rose',1130704,'raichur','kashmir',2023,567804,560378,'fedral bank','raichur')
INSERT INTO scam_info values(8,'phone scams',31000,7568900432,'Bhopal','Harshith',60030704,'chattisghar','kashmir',2024,567809,565690,'punjab bank','chattisghar')
INSERT INTO scam_info values(9,'imposter scams',34000,7908454563,'Mumbai','Sukumara',61000704,'meghalaya','jammu',2023,567887,564120,'SBI finance','meghalaya')
INSERT INTO scam_info values(10,'social media scams',23000,6879050564,'Imphal','Swapna',56130704,'raichur','kashmir',2023,565656,560934,'SBI','raichur')
INSERT INTO scam_info values(11,'investment scams',28000,6879797908,'Shillong','Chandu',11130704,'bangalore','meghalaya',2020,564535,567489,'ICIC','bangalore')
INSERT INTO scam_info values(12,'phone scams',21000,9876987605,'Aizawl','Darshan',4530704,'bangalore','chattisghar',2002,569429,560478,'ICIC','bangalore')
INSERT INTO scam_info values(13,'phising',19000,8947635210,'Kohima','Kiran',49130704,'mysore','chattisghar',2009,563344,567878,'SBI','mysore')
INSERT INTO scam_info values(14,'social media scams',31000,9002517365,'Bhubaneshwar','Rahul',61130704,'mandya','meghalaya',2019,562398,567887,'canara bank','mandya')
INSERT INTO scam_info values(15,'investment scams',31000,8800768594,'Chandigarh','Zenk',61130704,'hassan','bangalore',2018,564678,564787,'bank of baroda','hassan')
INSERT INTO scam_info values(16,'phone scams',31000,7879797878,'Jaipur','Joe',61130704,'himachal pradesh','himachal pradesh',2019,567856,565687,'fedral bank','himachal pradesh')
INSERT INTO scam_info values(17,'email scams',31000,9878675645,'Gangtok','Kamala',61130704,'coorg','hassan',2022,567843,560087,'SBI','coorg')
INSERT INTO scam_info values(18,'investment scams',31000,9901012543,'Chennai','Tharun',61130704,'shimla','himachal pradesh',2022,564500,561187,'ICICI','shimla')
INSERT INTO scam_info values(19,'phising',31000,7887878709,'Hyderabad','Thambi',61130704,'bangalore','coorg',2024,560002,561187,'fedral bank','bangalore')
INSERT INTO scam_info values(20,'imposter scams',31000,69789607,'Lucknow','Hari',61130704,'bangalore','mandya',2020,565656,560087,'fedral bank','bangalore')
UPDATE scam_info SET scam_amount_Rs=100000 where id=18
UPDATE scam_info SET scam_location='bihar' where id=20
UPDATE scam_info SET scammed_location='kashmir' where id=16
UPDATE scam_info SET scam_occurred_year=2012 where id=17
UPDATE scam_info SET scamed_person_name='Harshitha' where id=19
UPDATE scam_info SET scam_location='Himachal pradesh' where id=16
SELECT * FROM scam_info
DELETE FROM scam_info WHERE id=12;
DELETE FROM scam_info WHERE id=10;
DELETE FROM scam_info WHERE s_vehicle_registration='JH';
ROLLBACK
SELECT * FROM scam_info where id in (5,6,9,7,10);
SELECT * FROM scam_info where id not in (7,10);
SELECT * FROM scam_info where id=8 AND id=1;
SELECT * FROM scam_info where id=8 OR id=1;



CONSTRAINTS:
1) NOT NULL:

CREATE TABLE movies(id int not null, movie_name varchar(20) unique,
budget bigint, release_date datetime,movie_language varchar(20),
created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20));


SELECT * FROM movies;
INSERT INTO movies values(1,'raayan',500000,
'2024-07-26 06:30:20','KANNADA', now(),'dhanush', now(), 'arrahaman');
INSERT INTO movies values(2,'om',900000,
'2024-08-26 06:30:20','KANNADA', now(),'upendra', now(), 'rgv');
select * from movies;
ALTER TABLE movies MODIFY COLUMN movie_language 
varchar(20) not null;
desc movies;

ALTER TABLE movies modify column movie_name 
varchar(20);

INSERT INTO movies values(3,null,800000,
'2024-09-26 06:30:20','KANNADA', now(),
'osama', now(), 'ranjith');
select * from movies;
desc movies;

ALTER TABLE movies modify column movie_name 
varchar(20) not null;

unique:



CREATE TABLE actor(id int not null unique, 
actor_name varchar(20) unique, sal bigint,
age int, loc varchar(20) not null unique,
created_at timestamp, created_by varchar(20),
modified_at timestamp, modified_by varchar(20));

select * from actor;

desc actor;
INSERT INTO actor values(1,'darshan', 600000,50,
'rrnagar', now(), 'abc', now(), 'xyz');

INSERT INTO actor values(2,'yash', 100000,40,
'kgf', now(), 'abc', now(), 'xyz');

ALTER TABLE table_name add constraint 
constraint_name constraint_type(column_name);

ALTER TABLE actor add constraint sal_uni
unique(sal);
desc actor;







CREATE TABLE weapons(id int not null,
w_name varchar(20), cost bigint,
w_user varchar(20), constraint w_user_uni unique(w_user),
constraint w_name_uni unique(w_name));
desc weapons;

INSERT INTO weapons values(1,'ak47',30000,'hari');
INSERT INTO weapons values(2,'M416',20000,'chethan');
INSERT INTO weapons values(3,'uzi',10000,'ajay');
INSERT INTO weapons values(4,null,50000,'yashwant');

select * from weapons;

check:

CREATE TABLE stadium(id int not null unique,
st_name varchar(20), capacity int, loc varchar(20),
constraint loc_uni unique(loc),
constraint cap_chk check(capacity > 20000));

select * from stadium;
INSERT INTO stadium values(1,'mChinnaswamy',45000,'MGROAD');
INSERT INTO stadium values(2,'chepauk',25000,'chennai');





CREATE TABLE social_media(id int,
app_name varchar(20), app_color varchar(10),
no_of_users int,constraint users_chk 
check(no_of_users >=100));

INSERT INTO social_media values(1,'INSTA','pink',
200);

INSERT INTO social_media values(2,'whatsapp','green',
2000);
INSERT INTO social_media values(3,'telegram','blue',
20);
select * from social_media;

ALTER TABLE social_media modify id int not null,
drop constraint users_chk;

ALTER TABLE social_media add constraint app_name_uni
unique(app_name),add constraint users_chk check(no_of_users > 10 and no_of_users <3000);

ALTER TABLE social_media modify column id int,
drop constraint app_name_uni, drop constraint users_chk;















