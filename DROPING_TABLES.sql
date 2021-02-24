/*
	Piotr Cichacki 
	Subject: airlines services.
	Laboratory - task 1
	This script is used to drop all tables.
*/


ALTER TABLE route DROP CONSTRAINT fk_route_flight, fk_route_order;
DROP TABLE route;

ALTER TABLE citizenships DROP CONSTRAINT fk_citizenship_passenger, fk_citizenship_country;
DROP TABLE citizenships; 

ALTER TABLE route_tickets DROP CONSTRAINT fk_route_tickets_document, fk_route_tickets_order;
DROP TABLE route_tickets;

ALTER TABLE route_orders DROP CONSTRAINT fk_orders_customer;
DROP TABLE route_orders;

ALTER TABLE documents DROP CONSTRAINT fk_documents_passenger;
DROP TABLE documents;

ALTER TABLE customers DROP CONSTRAINT fk_customers_passengers;
DROP TABLE customers;

ALTER TABLE passengers DROP CONSTRAINT fk_passengers_city;
DROP TABLE passengers;

ALTER TABLE flights DROP CONSTRAINT fk_flights_aircraft, fk_flights_sched;
DROP TABLE flights;

ALTER TABLE scheduled_flights DROP CONSTRAINT fk_sched_flights_aircraft, fk_sched_flights_depairport, fk_sched_flights_arrairport;
DROP TABLE scheduled_flights;

ALTER TABLE airports DROP CONSTRAINT fk_airports_location_city;
DROP TABLE airports;

ALTER TABLE aircrafts DROP CONSTRAINT fk_aircrafts_model;
DROP TABLE aircrafts;

DROP TABLE aircraft_models;

ALTER TABLE cities DROP CONSTRAINT fk_cities_country_name;
DROP TABLE cities;

DROP TABLE countries;

ALTER TABLE shoes DROP CONSTRAINT composite_foreign_key;
DROP TABLE shoes;

DROP TABLE owners;