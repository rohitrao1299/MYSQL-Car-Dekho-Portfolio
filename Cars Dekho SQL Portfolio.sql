show schemas;
create schema Cars;
use Cars;
desc car_dekho;
select * from car_dekho;

-- Total Cars: to get a count of total records --
select count(*) from car_dekho;

-- How many cars will be available in 2023 --
select count(*) from car_dekho where year=2023;

-- How many cars will be available in 2020,2021,2022 --
select count(*) from car_dekho where year=2020; #74
select count(*) from car_dekho where year=2021; #7
select count(*) from car_dekho where year=2022; #7

-- Group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Total of all cars by year bcz don't see all the details --
select year, count(*) from car_dekho group by year;

-- Client asked to car dealer agent how my cars diesel cars will be there in 2020 --
select count(*) from car_dekho where year=2020 and fuel="Diesel";

-- Client asked to car dealer agent how my cars petrol cars will be there in 2020 --
select count(*) from car_dekho where year=2020 and fuel="Petrol";

-- All the fuel cars (Petrol,Diesel and CNG) come by all year --
select year,count(*) from car_dekho where fuel="Petrol" group by year;
select year,count(*) from car_dekho where fuel="Diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

-- Which year has more than 100 cars --
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;

-- All cars count deatils between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023; #4124

-- All cars deatils between 2015 and 2023 --
select * from car_dekho where year between 2015 and 2023;










