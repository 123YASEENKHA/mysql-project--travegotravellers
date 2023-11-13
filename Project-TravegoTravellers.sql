create schema Travego;
use Travego;
create table PASSENGER
 (Passenger_id int NOT NULL PRIMARY KEY,Passenger_name varchar(20), Category varchar(20),Gender varchar(20),Boarding_City varchar(20),Destination_City varchar(20),Distance int,Bus_Type varchar(20));
 desc table passenger;
 create table PRICE
(id int NOT NULL PRIMARY KEY,Bus_Type   varchar(20),Distance int,Price int);
desc table price;
insert into passenger values(1, 'Sejal','AC','F','Bengaluru','Chennai',350,'Sleeper');
insert into passenger values(2, 'Anmol','Non-AC','M','Mumbai','Hyderabad',700,'Sitting');
insert into passenger values(3, 'Pallavi','AC','F','panaji','Bengaluru',600,'Sleeper');
insert into passenger values(4, 'Khusboo','AC','F','Chennai','Mumbai',1500,'Sleeper');
insert into passenger values(5, 'Udit','Non-AC','M','Trivandrum','panaji',1000,'Sleeper');
insert into passenger values(6, 'Ankur','AC','M','Nagpur','Hyderabad',500,'Sitting');
insert into passenger values(7, 'Hemant','Non-AC','M','panaji','Mumbai',700,'Sleeper');
insert into passenger values(8, 'Manish','Non-AC','M','Hyderabad','Bengaluru',500,'Sitting');
insert into passenger values(9, 'Piyush','AC','M','Pune','Nagpur',700,'Sitting');
select *from passenger;
insert into price values(1, 'Sleeper',350,770);
insert into price values(2, 'Sleeper',500,1100);
insert into price values(3, 'Sleeper',600,1320);
insert into price values(4, 'Sleeper',700,1540);
insert into price values(5, 'Sleeper',1000,2200);
insert into price values(6, 'Sleeper',1200,2640);
insert into price values(7, 'Sleeper',1500,2700);
insert into price values(8, 'Sitting',500,620);
insert into price values(9, 'Sitting',600,744);
insert into price values(10, 'Sitting',700,868);
insert into price values(11, 'Sitting',1000,1240);
insert into price values(12, 'Sitting',1200,1488);
insert into price values(13, 'Sitting',1500,1860);

select * from price;
-- a. How many female passengers traveled for a minimum distance of 600 KM s?---
select count(*)from passenger where gender='f' and distance>=600;
-- ans = 2---------------------
-- b. Write a query to display the passenger details whose travel distance is greater than 500 and who are travelling in a sleeper bus--
select * from passenger where distance>500 and bus_type="sleeper";
-- c. Select passenger names whose names start with character 'S' ------
select * from passenger where passenger_name like 's%';
--  d.Calculate the price charged for each passenger, displaying the Passenger name, Boarding City, Destination City, Bus type, 
-- and Price in the output.---------
select Passenger_name, Boarding_City, Destination_City, a.Bus_type,b.Price from Passenger a , Price b where (a.Bus_Type = b.Bus_Type and a.Distance = b.Distance);
-- What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus? --------
select a.Passenger_name,b.Price from Passenger a ,Price b where (a.Bus_Type = "Sitting" and b.Bus_Type = "Sitting" and a.Distance = 700 and b.Distance=700);
select *from passenger;
select * from price;
-- f. What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
SELECT p.distance, pa.passenger_name, p.bus_type, p.price FROM passenger pa, price p where (p.distance= pa.Distance and pa.passenger_name = "Pallavi");
-- g. alter the column category with the value "Non-AC" where the Bus_Type is sleeper 
update passenger set category='non-ac' where bus_type='sleeper';
set sql_safe_updates=0;
select * from passenger;
-- h. delete an entry from the table where the passenger name is Piyush and ensure that this row is deleted permanently from the database*/
delete from passenger where passenger_name = "Piyush";
commit;
-- *i. truncate the table passenger and comment on the number of rows in the table (explain if required)*/
truncate table passenger;
## truncate is used to delete only the data in the table but the structure of the table is retained. 
-- j. Delete the table passenger from the database*/
drop table passenger;



