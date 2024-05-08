CREATE TABLE employees (
	employee_id int PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	title text,
	birth_date date NOT NULL,
	notes text
);

CREATE TABLE customers (
	customer_id char(5) PRIMARY KEY,
	company_name varchar(100),
	contact_name varchar(100)
);

CREATE TABLE orders (
	order_id int PRIMARY KEY,
	customer_id char(5) REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date date NOT NULL,
	ship_city varchar(100)
	
);