
insert into `midterm_dw`.`movie_rental_process`
( fact_rental_key,
customer_key, 
inventory_key,
film_key, 
store_key,
staff_key,
customer_status,
first_name, 
last_name,
rental_date,
return_date)

select r.rental_id as fact_rental_key,
	c.customer_id as customer_key,
    i.inventory_id as inventory_key,
    i.film_id as film_key,
    i.store_id as store_key,
    r.staff_id as staff_key,
    c.`active` as customer_status,
    c.first_name,
    c.last_name,
    r.rental_date,
    r.return_date
From sakila.rental as r
inner join sakila.inventory as i
on r.inventory_id = i.inventory_id
left outer join sakila.customer as c
on r.customer_id = c.customer_id;




Select * from midterm_dw.movie_rental_process;
