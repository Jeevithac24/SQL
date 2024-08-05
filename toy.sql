CREATE DATABASE toy;
USE toy;
CREATE TABLE toy_info(id int,toy_name varchar(20) unique,price int,toy_type varchar(20),toy_code int primary key);
select *from toy_info;
INSERT INTO toy_info values(1,'doll',200,'soft toy',2001);
INSERT INTO toy_info values(2,'barbie',600,'plastic toy',2002);
INSERT INTO toy_info values(3,'car',350,'miniature toy',2003);
INSERT INTO toy_info values(4,'balloon',50,'decoration toy',2004);
INSERT INTO toy_info values(5,'kitchen items',1200,'miniature toy',2005);
INSERT INTO toy_info values(6,'building block',700,'plastic toy',2006);
INSERT INTO toy_info values(7,'horse',1500,'clay toy',2007);
INSERT INTO toy_info values(8,'drums',300,'miniature toy',2008);
INSERT INTO toy_info values(9,'sand bucket',900,'plastic toy',2009);
INSERT INTO toy_info values(10,'toy train',950,'miniature toy',2010);
ALTER TABLE toy_info modify column id int NOT null;
alter table toy_info add constraint price_check check(price>10);

CREATE TABLE toy_company(id int unique,company_name varchar(20),toy_code int,company_location varchar(30),company_profit bigint,
foreign key(toy_code) references toy_info(toy_code));
INSERT INTO toy_company values(1,'Hrashitha toy shop',2002,'bangalore',12039);
INSERT INTO toy_company values(2,'jayashree toy shop',2009,'Mangalore',5567);
INSERT INTO toy_company values(3,'Adu kale',2001,'bangalore',10900);
INSERT INTO toy_company values(4,'Toy shop',2002,'udupi',200000);
INSERT INTO toy_company values(5,'Attadha mane',2010,'hassan',12090);
INSERT INTO toy_company values(6,'Lakshmi toy shop',2003,'shivamoga',45300);
INSERT INTO toy_company values(7,'Santhu toy shop',2001,'bangalore',278001);
INSERT INTO toy_company values(8,'City toy shop',2007,'mysore',343412);
INSERT INTO toy_company values(9,'Bangarpet toy shop',2006,'hubli',200000);
INSERT INTO toy_company values(10,'Toy show',2005,'raichur',1000000);

SELECT * FROM toy_company where company_name between 'h' and 'a';
SELECT * FROM toy_company where company_name between 'j' and 'e';
SELECT * FROM toy_company where id between 1 and 10;
SELECT * FROM toy_company where company_name like 'h%';
SELECT * FROM toy_company where company_location like '%e';
SELECT * FROM toy_info order by id;
SELECT * FROM toy_info order by id desc;
SELECT LOWER(toy_code) as to_lower from toy_info;
SELECT UPPER(toy_name) as to_upper from toy_info;
SELECT CONCAT(company_name,company_location) from toy_company;
SELECT LENGTH(company_profit) as leng, company_profit from toy_company;
CREATE INDEX t_name_indx on toy_info(toy_name);






CREATE TABLE game_info(id int,game_name varchar(20) unique,price int,game_type varchar(20),game_code int primary key);
select *from game_info;
INSERT INTO game_info values(1,'ludo',0,'online',2001);
INSERT INTO game_info values(2,'gtyct',0,'online',2002);
INSERT INTO game_info values(3,'kabbadi',350,'outdoor',2003);
INSERT INTO game_info values(4,'shuttle',250,'indoor',2004);
INSERT INTO game_info values(5,'casino',1200,'miniature toy',2005);
INSERT INTO game_info values(6,'snake and ladder',20,'indoor',2006);
INSERT INTO game_info values(7,'caroom',100,'indoor',2007);
INSERT INTO game_info values(8,'chess',0,'online',2008);
INSERT INTO game_info values(9,'car race',100,'online',2009);
INSERT INTO game_info values(10,'horse ride',350,'outdoor',2010);
ALTER TABLE game_info modify column id int NOT null;
alter table game_info add constraint p_check check(price>=0);

CREATE TABLE game_company(id int unique,company_name varchar(20),game_code int,company_location varchar(30),company_profit bigint,
foreign key(game_code) references game_info(game_code));
INSERT INTO game_company values(1,'Hr gaming center',2002,'bangalore',12039);
INSERT INTO game_company values(2,'jay gaming center',2009,'Mangalore',5567);
INSERT INTO game_company values(3,'Adu gaming center',2001,'bangalore',10900);
INSERT INTO game_company values(4,'gaming center',2002,'udupi',200000);
INSERT INTO game_company values(5,' gaming mane',2010,'hassan',12090);
INSERT INTO game_company values(6,'La gamingcenter',2003,'shivamoga',45300);
INSERT INTO game_company values(7,'S gaming center',2001,'bangalore',278001);
INSERT INTO game_company values(8,'City gaming center',2007,'mysore',343412);
INSERT INTO game_company values(9,'Bangar gaming center',2006,'hubli',200000);
INSERT INTO game_company values(10,'gaming center show',2005,'raichur',1000000);

SELECT * FROM game_company where company_name between 'h' and 'a';
SELECT * FROM game_company where company_name between 'j' and 'e';
SELECT * FROM game_company where id between 1 and 10;
SELECT * FROM game_company where company_name like 'h%';
SELECT * FROM game_company where company_location like '%e';
SELECT * FROM game_info order by id;
SELECT * FROM game_info order by id desc;
SELECT LOWER(game_name) as ga_lower from game_info;
SELECT UPPER(game_name) as ga_upper from game_info;
SELECT CONCAT(company_name,company_location) from game_company;
SELECT LENGTH(company_profit) as leng, company_profit from game_company;
CREATE INDEX g_name_indx on game_info(game_name);
