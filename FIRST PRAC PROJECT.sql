select * from sales;
select SaleDate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;
select SaleDate, Amount, Boxes, Amount / Boxes from sales;

select SaleDate, Amount, Boxes, Amount / Boxes as 'Amount per box' from sales;

#impose an extra condition to the query

select * from sales
where amount > 10000;

#lets arrange it in order now
select * from sales
where amount > 10000
order by amount asc;

select * from sales
where geoid='g1'
order by PID,Amount desc;


select * from sales where amount >10000 and SaleDate >=' 2022-01-01';

select SaleDate , Amount from sales
where Amount >10000 and year(SaleDate) = 2022
order by amount desc;

#all the sales where the number of boxes is betwenn 0 to 50

select * from sales
where Boxes between 0 and 50;

#or 
select * from sales
where boxes>0 and boxes<=50
order by boxes;

#ALL THE SHIPMENTS THAT ARE HAPPENING ON A FRIDAY
select SaleDate,Amount, weekday(SaleDate) from sales
where weekday(SaleDate)=4
order by Amount;

#NOW, WE SHALL EXPLORE DIFFERENT TABLES AND TRY USING MULTIPLE TABLES TOGETHER

show tables;
select * from people;

#WE SHALL SEE ALL DATA FOR PEOPLE FRO DELISH OR JUCIES TEAM

select * from people
where team='Delish' or team='jucies'
order by Team;

#or we can make the use of in clause

select * from people
where team in ('Delish','Jucies')
order by Team;

#PATTERN MATCHING IN SQL
#LIKE OPERATOR

select * from people 
where salesperson like '%B%';
#IF I AM EXPECTING SOME TYPE OF PATTERN, LIKE SP
select * from people
where salesperson like '%Sp%';

#ALL NAMES STARTS WITH A 

select * from people 
where salesperson like '%a%';

#CASE OPERATOR

select * from sales;

#WE WANT TO CREATE AA ADDITIONAL COLUMN THAT HAS
#AMOUNT UPTO 1000 HAVING LEVEL UNDER 1000
#AMOUNT BETWEEN 1000 AND 5000 HAVING LEVEL OF UNDER 5000
#AMOUNT BETWEEN 5000 AND 10000 HAVING LEVEL OF UNDER 10000

select SaleDate,Amount,
	case when amount < 1000 then 'under 1k'
		when amount < 5000 then 'under 5k'
        when amount < 10000 then 'under 10k'
	 else '10k or more'
	end as 'Amount Category'
from sales
order by Amount asc;
    
		



















