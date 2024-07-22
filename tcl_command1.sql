CREATE DATABASE states
CREATE TABLE state_info(id int,s_name varchar(30),no_of_district bigint,s_capital varchar(30),no_of_constituencies bigint,
no_of_parliament_seats int,no_of_rajyasabha_member bigint,s_language varchar(30),s_population int,s_area bigint); 
ALTER TABLE state_info ADD COLUMN (s_per_capita bigint,s_flower varchar(20),s_mammal varchar(20),s_literacyrate_percentage int,s_vehicle_registration varchar(20));
ALTER TABLE state_info RENAME COLUMN no_of_constituencies to no_of_assembly_seats;
ALTER TABLE state_info RENAME COLUMN no_of_parliament_seats to no_of_lokasabha_seats;
ALTER TABLE state_info RENAME COLUMN s_area to s_area_squarekm;
ALTER TABLE state_info RENAME COLUMN s_name to state_name;
ALTER TABLE state_info RENAME COLUMN s_capital to state_capital;
