CREATE DATABASE store;
use store;
CREATE TABLE order_info(id int, order_name varchar(30), cost int,order_id int primary key,created_at timestamp,
created_by varchar(20), modified_at timestamp, modified_by varchar(20));
INSERT INTO order_info values(1,'biryani',150,2001,now(),'harshitha',now(),'ramya');
INSERT INTO order_info values(2,'paneer',250,2002,now(),'Anjali',now(),'Anju');
INSERT INTO order_info values(3,'Roti',80,2003,now(),'Dharma',now(),'Sanju');
Select * from order_info


CREATE TABLE payment_info(id int, price int,payment_id int primary key, order_id int ,payment_status varchar(20), 
created_at timestamp,created_by varchar(20), modified_at timestamp, modified_by varchar(20),
foreign key(order_id) references order_info(order_id));
INSERT INTO payment_info VALUES(1,2000,6001,2002,'Success',now(),'harshitha',now(),'ramya');
INSERT INTO payment_info VALUES(2,1000,6002,2001,'Success',now(),'Gowri',now(),'Shanu');
INSERT INTO payment_info VALUES(3,9000,6003,2003,'Fail',now(),'Rauj',now(),'Rani');

Select * from payment_info
CREATE TABLE restaurant(id int, restaurant_name varchar(20),restaurant_id int primary key,loc varchar(20), order_id int,
ratings int,payment_id int,created_at timestamp,created_by varchar(20), modified_at timestamp, modified_by varchar(20),foreign key(order_id)
references order_info(order_id),foreign key(payment_id) references payment_info(payment_id));
INSERT INTO restaurant values(1,'Udupi',9001,'bangalore',2001,5,6002,now(),'Rauj',now(),'Rani');
INSERT INTO restaurant values(2,'Swapna',9002,'bangalore',2003,3,6002,now(),'Om',now(),'Haripriya');
INSERT INTO restaurant values(3,'New agarwal',9003,'bangalore',2001,4,6002,now(),'Priya',now(),'Shri');

Select * from restaurant

CREATE TABLE delivery_d(id int, person_name varchar(20), mode_of_payment enum('online','digital'),restaurant_id int,order_id int, 
created_by varchar(20), modified_at timestamp, modified_by varchar(20),foreign key(restaurant_id) references restaurant(restaurant_id),
foreign key(order_id)references order_info(order_id));
INSERT INTO delivery_d values(1,'Sham',1,9002,2002,'Raj',now(),'Rani');
INSERT INTO delivery_d values(2,'Shylu',2,9003,2003,'Kushal',now(),'Ajay');
INSERT INTO delivery_d values(3,'Spoorthi',1,9001,2002,'Kiran',now(),'Santhu');
Select * from delivery_d;


select * from  order_info;