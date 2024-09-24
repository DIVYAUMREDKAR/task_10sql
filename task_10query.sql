create table order_data(
	order_id int primary key,
	customer_id int,
	order_date DATE,
	customer_address varchar(150),
	customer_city varchar (150),
	customer_name varchar(150),
    order_name varchar(150),  
	order_number varchar(150),
	total_price int
)

select * from order_data

insert into order_data values
	(04,12,'2024-03-04','lalganj naik wadi','nagpur','Divya','phone','vivo1811',15000)

copy order_data from 'D:\ARC\SQL\task_sql\task_10.csv' delimiter ',' csv header

-----------------------------------------
select * from order_data

create table cust_order as(
	select distinct customer_id, customer_address, customer_city, customer_name,order_name,
	order_number from order_data
)

select * from cust_order

create table normalized_order as (
	select order_id,customer_id, order_date, order_name, order_number, total_price from order_data
)
	
select * from normalized_order

select * from normalized_order as n 
inner join cust_order as c
on n.customer_id = c.customer_id

