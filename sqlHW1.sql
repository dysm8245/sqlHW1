-- Homework question 1
select * from actor where last_name='Wahlberg';

-- Homework question 2
select count(*) from payment where amount between 3.99 and 5.99;

-- Homework question 3
--select * from inventory;
select film_id, count(film_id) from inventory group by film_id order by count desc;

-- Homework question 4
select count(*) from customer where first_name = 'William';

-- Homework question 5
--select * from payment;
select staff_id, count(staff_id) as saleAmt from payment group by staff_id order by saleAmt desc;

-- Homework question 6
--select * from address;
select count(distinct(district)) from address;

-- Homework question 7
select film_id, count(actor_id) as numActors from film_actor group by film_id order by numActors desc;

-- Homework question 8
select count(last_name) from customer where last_name like('%es') and store_id =1;

-- Homework question 9
select amount, count(amount) as rentals from payment where customer_id between 380 and 430 group by amount having count(amount) > 250;

-- Homework question 10
select rating, count(rating) as ratingAmt from film group by rating order by ratingAmt desc;
