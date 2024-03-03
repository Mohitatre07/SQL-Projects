--Create Schema
create schema cars; 

--to state named database is default
use cars;

--To read whole data in the table
select * from cars.car_dekho;

--Total count of cars
Select count(*) count_of_cars from cars.car_dekho;

--Name and count of cars available in year 2023
Select distinct name,count(*) car_count from cars.car_dekho where year=2023 group by 1;

--total cars year by year
Select distinct year,count(*) car_count from cars.car_dekho where year in (2020,2021,2022,2023) group by year order by year desc;

--cars which are manual transmission and first owner in year 2022
Select distinct name,transmission,owner from cars.car_dekho where year=2022 and transmission=' Manual' and owner='First Owner' group by 1,2,3;

--cars which has seller type is Individual and fuel type is petrol in year 2022
Select distinct name,mileage,fuel from cars.car_dekho where fuel='Petrol' and seller_type = 'Individual' and year = 2022 group by 1,2,3;

--cars which has mileage greater than 20 and engine > 1000CC in year 2021
Select distinct name,mileage,fuel from cars.car_dekho where mileage >='20.00 kmpl' and engine >= '1000CC' and year= 2021 group by 1,2,3;

--cars which has selling price < 10,00,000 , fuel type is petrol and owner is first person in year 2021
Select distinct name,selling_price,fuel,owner from cars.car_dekho where fuel='Petrol' and owner = 'First Owner' and year = 2021 and selling_price < '1000000'  group by 1,2,3,4;

--cars which has fuel type has diesel and torque greater than 400Nm
select distinct name,fuel,torque from cars.car_dekho where fuel='Diesel' and torque > '500Nm';

--show all distinct values of year,fuel,owner,seller type,transmission,seats feom data fro year 2021,2022,2023
select distinct year,fuel,owner,seller_type,transmission,seats from cars.car_dekho where year in (2023,2022,2021) group by 1,2,3,4,5,6;
