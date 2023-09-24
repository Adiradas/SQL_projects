show databases;
use music_data;
select * from album2;

/* who is the most senior employee*/
Select * from employee
order by levels desc
limit 1;  /* shows only one row*/

/*which country has the most invoices*/
select count(*) as c, billing_country from invoice
group by billing_country
order by c desc
limit 1;

/* WHta are the top 3 countries?*/
select count(*) as c, billing_country from invoice
group by billing_country
order by c desc
limit 3;

/* top 3 values of total invoices*/
select * from invoice
order by total desc
limit 3;

/* which city has the best customers*/
select sum(total) as invoice_total, billing_city from invoice
group by billing_city
order by invoice_total desc;


select customer.email, customer.first_name, customer.last_name, genre.name from customer,genre
order by customer.email, genre.name asc;


select distinct email,first_name,last_name
from customer
join invoice on customer.customer_id=invoice.customer_id
join invoice_Line on invoice_line.invoice_id=invoice.invoice_id
where track_id in(
	select track_id from track
    join genre on track.genre_id=genre.genre_id
    where genre.name like 'Rock'
)
order by email;    

/* Lets invite the artists who have written the most rock genre songs in our dataset.Write a query
that returns the artists name and total track counts of the top 10 rock bands.*/

select count(artist.artist_id) from artist, album, track







