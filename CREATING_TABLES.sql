/*
	Piotr Cichacki
	Subject: airlines services.
	Laboratory - task 1
	This script is used to create all tables.
*/


/* Table containing information about all countries where airports are located or passengers reside. */
CREATE TABLE countries (
	country_name VARCHAR(30) PRIMARY KEY,
	continent VARCHAR(15) CHECK (continent IN('Europe', 'South America', 'North America', 'Africa', 'Australia', 'Asia'))
);

/* Table containing information about all cities where passengers live and where airports are located. */
CREATE TABLE cities (
	city_name VARCHAR(30) PRIMARY KEY,
	city_population INT CHECK (city_population > 0),
	timezone VARCHAR(9) NOT NULL,
	country_name VARCHAR(30),
	CONSTRAINT fk_cities_country_name FOREIGN KEY(country_name) REFERENCES countries(country_name) ON DELETE SET NULL
);

/* Table containing information about all types of aircrafts owned by the airlines. */
CREATE TABLE aircraft_models (
	model VARCHAR(40) PRIMARY KEY,
	capacity INT CHECK (capacity > 0),
	producer VARCHAR(30)
);

/* Table containing information about all aircrafts owned by the airlines. */
CREATE TABLE aircrafts (
	registration VARCHAR(10) PRIMARY KEY,
	aircraft_status VARCHAR(10),
	date_of_production DATE,
	model VARCHAR(40) NOT NULL,
	CONSTRAINT fk_aircrafts_model FOREIGN KEY(model) REFERENCES aircraft_models(model) ON DELETE CASCADE
);

/* Table containing information about all airports from which airplanes of the airlines depart and arrive to. */
CREATE TABLE airports (
	IATA_code VARCHAR(3) PRIMARY KEY,
	airport_name VARCHAR(50) NOT NULL,
	contact VARCHAR(20),
	location_city VARCHAR(30),
	CONSTRAINT fk_airports_location_city FOREIGN KEY(location_city) REFERENCES cities(city_name) ON DELETE SET NULL
);

/* Table containing information about all flights offered by the airlines according to the weekly schedule. */
CREATE TABLE scheduled_flights (
	id_scheduled_flight INT IDENTITY(1,1) PRIMARY KEY,
	scheduled_departure_day VARCHAR(9) NOT NULL CHECK (scheduled_departure_day IN('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
	scheduled_departure_hour VARCHAR(5) NOT NULL,
	scheduled_arrival_day VARCHAR(9) NOT NULL CHECK (scheduled_arrival_day IN('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
	scheduled_arrival_hour VARCHAR(5) NOT NULL,
	aircraft_model_assigned VARCHAR(40),
	id_departure_airport VARCHAR(3) NOT NULL,
	id_arrival_airport VARCHAR(3) NOT NULL,
	CONSTRAINT fk_sched_flights_aircraft FOREIGN KEY(aircraft_model_assigned) REFERENCES aircraft_models(model) ON DELETE SET NULL,
	CONSTRAINT fk_sched_flights_depairport FOREIGN KEY(id_departure_airport) REFERENCES airports(IATA_code),
	CONSTRAINT fk_sched_flights_arrairport FOREIGN KEY(id_arrival_airport) REFERENCES airports(IATA_code) 
);

/* Table containing information about past and future airline flights. */
CREATE TABLE flights (
	flight_number VARCHAR(15) PRIMARY KEY,
	flight_date DATE NOT NULL,
	departure_delay INT DEFAULT 0,
	arrival_delay INT DEFAULT 0,
	flight_status VARCHAR(13) CHECK (flight_status IN ('Planned', 'Happened', 'In progress')),
	aircraft_registration VARCHAR(10),
	id_scheduled_flight INT NOT NULL,
	CONSTRAINT fk_flights_aircraft FOREIGN KEY (aircraft_registration) REFERENCES aircrafts (registration) ON DELETE SET NULL,
	CONSTRAINT fk_flights_sched FOREIGN KEY (id_scheduled_flight) REFERENCES scheduled_flights (id_scheduled_flight) ON DELETE CASCADE
);

/* Table containing information about current and past passengers of the airlines. */
CREATE TABLE passengers (
	id_passenger INT IDENTITY(1,1) PRIMARY KEY,
	names VARCHAR(30) NOT NULL,
	surname VARCHAR(20) NOT NULL,
	sex VARCHAR(6) CHECK (sex='Male' OR sex='Female'),
	date_of_birth DATE,
	residence_city VARCHAR(30),
	CONSTRAINT fk_passengers_city FOREIGN KEY(residence_city) REFERENCES cities(city_name) ON DELETE SET NULL
);

/* Table containing information about all passengers that place an order. */
CREATE TABLE customers (
	id_customer INT IDENTITY(1,1) PRIMARY KEY,
	email VARCHAR(30) NOT NULL,
	phone_number VARCHAR(20),
	id_passenger INT,
	CONSTRAINT fk_customers_passengers FOREIGN KEY(id_passenger) REFERENCES passengers(id_passenger) ON DELETE SET NULL
);

/* Table containing information about all valid documents of passengers. */
CREATE TABLE documents (
	document_number VARCHAR(15) PRIMARY KEY,
	document_type VARCHAR(15) NOT NULL CHECK (document_type IN ('Passport', 'Identity card')),
	date_of_expiry DATE,
	id_passenger INT NOT NULL,
	CONSTRAINT fk_documents_passenger FOREIGN KEY(id_passenger) REFERENCES passengers(id_passenger) ON DELETE CASCADE
);

/* Table containing information abour all orders placed by customers. */
CREATE TABLE route_orders (
	id_order INT IDENTITY(1,1) PRIMARY KEY,
	order_date DATE NOT NULL,
	id_customer INT,
	CONSTRAINT fk_orders_customer FOREIGN KEY(id_customer) REFERENCES customers(id_customer) ON DELETE SET NULL
);

/* Table containing information about all passenger tickets for a single route. */
CREATE TABLE route_tickets (
	ticket_number VARCHAR(15) PRIMARY KEY,
	ticket_price DECIMAL(7,2) CHECK (ticket_price > 0.0),
	luggage VARCHAR(20) CHECK (luggage IN ('Cabin', 'Checked', 'Excess')), 
	additional_equipment VARCHAR(20) DEFAULT 'None',
	confirmation_document VARCHAR(15),
	id_route_order INT NOT NULL,
	CONSTRAINT fk_route_tickets_document FOREIGN KEY(confirmation_document) REFERENCES documents(document_number) ON DELETE SET NULL,
	CONSTRAINT fk_route_tickets_order FOREIGN KEY(id_route_order) REFERENCES route_orders(id_order) ON DELETE CASCADE
);

/* Table containing information about what countries passengers are citizens of. */
CREATE TABLE citizenships (
	id_passenger INT,
	country_name VARCHAR(30),
	PRIMARY KEY (id_passenger, country_name),
	CONSTRAINT fk_citizenship_passenger FOREIGN KEY(id_passenger) REFERENCES passengers(id_passenger) ON DELETE CASCADE,
	CONSTRAINT fk_citizenship_country FOREIGN KEY(country_name) REFERENCES countries(country_name) ON DELETE CASCADE
);

/* Table containing information about which flights are included in the route for which the order was placed. */
CREATE TABLE route (
	flight_number VARCHAR(15),
	id_order INT,
	PRIMARY KEY (flight_number, id_order),
	CONSTRAINT fk_route_flight FOREIGN KEY(flight_number) REFERENCES flights(flight_number) ON DELETE CASCADE,
	CONSTRAINT fk_route_order FOREIGN KEY(id_order) REFERENCES route_orders(id_order) ON DELETE CASCADE
);

/* Additional table containing composite primary key (not related with previous tables). */
CREATE TABLE owners(
	names VARCHAR(30),
	surname VARCHAR(30),
	date_of_birth DATE,
	PRIMARY KEY (names, surname)
);

CREATE TABLE shoes(
	model VARCHAR(30) PRIMARY KEY,
	producer VARCHAR(20),
	size INT NOT NULL,
	color VARCHAR(20),
	owner_names VARCHAR(30),
	owner_surname VARCHAR (30),
	CONSTRAINT composite_foreign_key FOREIGN KEY(owner_names, owner_surname) REFERENCES owners(names, surname)
);
