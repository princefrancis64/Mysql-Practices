create database market_star_schema;
use market_star_schema;
create table shipping_mode_dimen(
Ship_Mode varchar(25),
Vehicle_Company varchar(25),
Toll_Required boolean);

alter table shipping_mode_dimen
add constraint primary key(Ship_Mode);

insert into shipping_mode_dimen( Ship_Mode, Vehicle_Company, Toll_Required)
values
('Delivery Truck', 'Ashok Leyland', false),
('Regular Air', 'Air India', false);

update shipping_mode_dimen
set Toll_Required = True
where Ship_Mode= 'Delivery Truck';

delete from shipping_mode_dimen
where Vehicle_Company ='Air India';

alter table shipping_mode_dimen
add Vehicle_Number varchar(20);

update shipping_mode_dimen
set Vehicle_Number ='MH-05-R1234';

select * from shipping_mode_dimen;

alter table shipping_mode_dimen
drop column Vehicle_Number;


alter table shipping_mode_dimen
change Toll_Required Toll_Amount int;

insert into shipping_mode_dimen( Ship_Mode, Vehicle_Company, Toll_Amount)
values
('Waterways','Titanic', 5);

alter table shipping_mode_dimen
add Football_team varchar(25);

update shipping_mode_dimen
set Football_team= 'Barcelona';

select * from shipping_mode_dimen;
delete from shipping_mode_dimension


insert into shipping_mode_dimen(Ship_Mode, Vehicle_Company, Toll_Amount)
values
('By Road', 'Bike',10);

update shipping_mode_dimen
set football_team= 'Liverpool'
where Vehicle_Company = 'Bike';


create database market_star_schema;
use market_star_schema;
-- Creating the table  
create table shipping_mode_dimen(
Ship_Mode varchar(25),
Vehicle_Company varchar(25),
Toll_Required boolean
);

-- Making ship mode the primary key 
alter table shipping_mode_dimen
add constraint primary key(Ship_Mode);
-- Inserting values into the table
insert into shipping_mode_dimen(Ship_Mode, Vehicle_Company, Toll_Required)
values
('Delivery Truck','Ashok Leyland', false),
('Regular Air','Air India', false);

-- viewing the table as we have created 
select * from shipping_mode_dimen;

update shipping_mode_dimen
set Toll_Required= true
where Vehicle_Company= 'Air India';

-- checking again the table to view the updated value 
select * from shipping_mode_dimen;

delete from shipping_mode_dimen
where Vehicle_Company="Air India";

select * from shipping_mode_dimen;

alter table shipping_mode_dimen
add Shipping_Amount int;

-- updating the newly added column 
update shipping_mode_dimen
set Shipping_Amount = 5000
where Vehicle_Company = "Ashok Leyland";

select* from shipping_mode_dimen;


-- changing the column name
alter table shipping_mode_dimen
change Shipping_Amount Shipping_Price int;

select * from shipping_mode_dimen;

 -- Deleting the newly added column 
alter table shipping_mode_dimen
drop column Shipping_Price;

-- Deleting the whole table
drop table shipping_mode_dimen;

-- Deleting the database itself
drop database market_star_schema;





delete from shipping_mode_dimen
where football_team= 'Liverpool';
alter table shipping_mode_dimen
drop column football_team;

delete from shipping_mode_dimen
where Ship_Mode='By Road';

delete from shipping_mode_dimen
where Ship_Mode='Waterways';

select * from shipping_mode_dimen