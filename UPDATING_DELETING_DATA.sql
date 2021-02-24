/*
	Piotr Cichacki
	Subject: airlines services.
	Laboratory - task 1
	This script is used to update or delete data from tables.
*/

ALTER TABLE route_tickets ALTER COLUMN additional_equipment VARCHAR(30);
SELECT * FROM route_tickets;

UPDATE customers SET phone_number='+48 732 217 289' WHERE id_passenger = (SELECT id_passenger FROM passengers WHERE (names='Jan Marcin') AND (surname='Nowak'));
SELECT * FROM customers;
UPDATE cities SET city_population=5583500 WHERE city_name = 'Barcelona';
SELECT * FROM cities;
UPDATE aircraft_models SET producer='Airbus Group SE' WHERE producer='Airbus';
SELECT * FROM aircraft_models;

SELECT * FROM customers;
SELECT * FROM passengers;
SELECT * FROM citizenships;
DELETE FROM passengers WHERE id_passenger = 1;

SELECT * FROM countries;
DELETE FROM countries WHERE country_name='Japany';