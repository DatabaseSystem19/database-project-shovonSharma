SELECT table_name
FROM user_tables;
--
--select all the foods that have pie in their name

select food_id from food
where food_name like '%pie%';

--write a query to update the price of a food which has been ordered >1

update food 
set food_price=food_price+0.1*food_price
where food_id in
(select food_id from order_item
where quantity>1);

--Write a query to retrieve the names and email addresses of customers who have placed an order but haven't made the payment yet

select customer_name,customer_email from customer where customer_id in
(select customer_id from customer_order where order_status=1 and payment_status=0);

--Create a query to list the food items that have never been ordered by any customer.

select food_name from food where food_id in(
select food_id from order_item where order_id in(
select order_id from customer_order where order_status=0));

--Write a query to calculate the average salary of the staff members and display it along with the total number of staff.
select avg(salary) as avg_salary ,count(staff_id) as staff_num from staff;


--Write a query to find the customers who have placed orders with a total bill amount greater than the average bill amount of all orders

select c.customer_id,sum(co.bill) total_bill 
from customer c join customer_order  co 
on c.customer_id=co.customer_id
group by c.customer_id 
having sum(co.bill)>(select avg(bill) from customer_order);

--What is the maximum number of orders handled by a single staff member?
select max(order_count)
from (
select count(order_id) as order_count
from customer_order group by staff_id);


describe customer_order;
describe order_item;
describe customer;
describe food;
describe staff;
--
--alter table
--alter table oi rename to order_item;
--
----drop all the tables


--ALTER TABLE customer_order
--DROP CONSTRAINT customer_id;
--ALTER TABLE customer_order
--DROP CONSTRAINT staff_id;
--
--alter table order_item
--drop constraint order_id;
--alter table order_item
--drop constraint food_id;
--
--drop table order_item;
--drop table customer_order;
--drop table food;
--drop table staff;
--drop table customer;

