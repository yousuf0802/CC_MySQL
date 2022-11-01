CREATE TABLE t_hall_details(
hall_id VARCHAR(10) ,
hall_name VARCHAR(25) ,
city varchar(20),
hall_type VARCHAR(10) ,
capacity INT(10) ,
cost_per_day INT(10),
PRIMARY KEY (hall_id)
);

CREATE TABLE t_customer_details(
customer_id VARCHAR(10),
customer_name VARCHAR(20) ,
mobile_no INT(11) ,
customer_city VARCHAR(20) ,
PRIMARY KEY (customer_id)
);

CREATE TABLE t_hall_booking(
hall_id VARCHAR(10),
customer_id VARCHAR(10),
event_name VARCHAR(20),
event_date DATE,
FOREIGN KEY (hall_id) REFERENCES t_hall_details(hall_id),
FOREIGN KEY (customer_id) REFERENCES t_customer_details(customer_id)
);