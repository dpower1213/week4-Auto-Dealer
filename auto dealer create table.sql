-- Data Definition Language
-- SQL CREATE STATEMENTS

DROP TABLE IF EXISTS employee_position CASCADE;
CREATE TABLE employee_position(
	position_id SERIAL PRIMARY KEY,
    position VARCHAR(50)
	);

DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
    position_id INTEGER NOT NULL,
	FOREIGN KEY(position_id) REFERENCES employee_position(position_id) ON DELETE CASCADE
	);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
    email VARCHAR(255),
    "address" VARCHAR(255),
    city VARCHAR(50),
    "state" VARCHAR(50),
    zipcode VARCHAR(10),
    phone VARCHAR(13)
	);

DROP TABLE IF EXISTS part CASCADE;
CREATE TABLE part(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(50),
	quantity INTEGER,
    price NUMERIC(8,2)
	);

DROP TABLE IF EXISTS vehicle CASCADE;
CREATE TABLE vehicle (
	vin VARCHAR(17) PRIMARY KEY,
	make VARCHAR(50),
    model VARCHAR(50),
	year INTEGER,
    msrp NUMERIC(8,2)
	);

DROP TABLE IF EXISTS purchase_invoice CASCADE;
CREATE TABLE purchase_invoice(
	invoice_id SERIAL PRIMARY KEY,
    price NUMERIC(10,2),
	"date" DATE,
    vin VARCHAR(17) NOT NULL,
	employee_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
	FOREIGN KEY(vin) REFERENCES vehicle(vin) ON DELETE CASCADE,
	FOREIGN KEY(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
	);

DROP TABLE IF EXISTS service_invoice CASCADE;
CREATE TABLE service_invoice(
	invoice_id SERIAL PRIMARY KEY,
    "desc" TEXT,
    amount NUMERIC(8,2),
	"date" DATE,
    vin VARCHAR(17) NOT NULL,
    customer_id INTEGER NOT NULL,
	FOREIGN KEY(vin) REFERENCES vehicle(vin) ON DELETE CASCADE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
	);

DROP TABLE IF EXISTS employee_service CASCADE;
CREATE TABLE employee_service(
	invoice_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
	FOREIGN KEY(invoice_id) REFERENCES service_invoice(invoice_id) ON DELETE CASCADE,
	FOREIGN KEY(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE
	);

DROP TABLE IF EXISTS service_part CASCADE;
CREATE TABLE service_part(
	invoice_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
	FOREIGN KEY(invoice_id) REFERENCES service_invoice(invoice_id) ON DELETE CASCADE,
	FOREIGN KEY(part_id) REFERENCES part(part_id) ON DELETE CASCADE 
	);