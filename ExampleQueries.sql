/*
	Piotr Cichacki
	Subject: airlines services.
	Laboratory - task 3
	This script is used to present all queries.
*/

-- 1. Print cities which have larger population than the biggest city in the Europe (including it) and print ratio between their populations
CREATE VIEW BiggestCities AS 
	SELECT city_name AS Name, cities.country_name AS CountryName, countries.continent AS Continent, city_population AS Population
		FROM cities
			JOIN countries
				ON cities.country_name = countries.country_name
		WHERE city_population >= 
			(SELECT MAX(city_population) 
				FROM cities ct
					JOIN countries coun
						ON ct.country_name = coun.country_name
				WHERE continent = 'Europe'
			)
	WITH CHECK OPTION;
GO
SELECT Name, CountryName, Continent, Population, ROUND(CAST(Population AS FLOAT)/CAST((SELECT MIN(Population) FROM BiggestCities) AS FLOAT), 2) AS 'Times bigger'
	FROM BiggestCities 
		ORDER BY Population DESC;

DROP VIEW BiggestCities;

--2. Print airports from the biggest cities of each continent
SELECT airport_name AS Airport, location_city AS City, countries.country_name AS Country, continent as Continent
	FROM airports
		JOIN cities 
			ON airports.location_city = cities.city_name
		JOIN countries
			ON cities.country_name = countries.country_name
	WHERE CONCAT(countries.continent, ', ', cities.city_population) IN (
		SELECT CONCAT(continent, ', ', MAX(city_population))
			FROM cities
				JOIN countries
					ON cities.country_name = countries.country_name
			GROUP BY continent);


--3. Print all intercontinental scheduled flights
SELECT id_scheduled_flight AS Id, 
id_departure_airport AS DepartureAirport, aD.airport_name AS DepartureAirportName, coD.continent AS DepartureAirportContinent,
id_arrival_airport AS ArrivalAirport, aA.airport_name AS ArrivalAiportName, coA.continent AS ArrivalAirportContinent
	FROM scheduled_flights sf
		JOIN airports aD
			ON sf.id_departure_airport = aD.IATA_code
		JOIN cities cD
			ON ad.location_city = cd.city_name
		JOIN countries coD 
			ON cd.country_name = coD.country_name
		JOIN airports aA
			ON sf.id_arrival_airport = aA.IATA_code
		JOIN cities cA
			ON aA.location_city = cA.city_name
		JOIN countries coA 
			ON cA.country_name = coA.country_name
	WHERE coD.continent <> coA.continent;


--4. Print all future flights (number, date, departure and arrival airport) to Spain ordered by arrival airport and then from the earliest on to the latest one.
SELECT fl.flight_number AS FlightNumber, fl.flight_date AS Date, sch.id_departure_airport AS DepartureAirport, sch.id_arrival_airport AS ArrivalAirport
	FROM flights fl
		JOIN scheduled_flights sch
			ON fl.id_scheduled_flight = sch.id_scheduled_flight
		JOIN airports a
			ON sch.id_arrival_airport = a.IATA_code
		JOIN cities c
			ON a.location_city = c.city_name
	WHERE fl.flight_status = 'Planned' AND c.country_name = 'Spain'
	ORDER BY sch.id_arrival_airport, fl.flight_date;


--5. Print how many flight are planned for each season in 2021 year.
SELECT Season, COUNT(*) AS 'Number of planned flights'
	FROM(
		SELECT *, 
			CASE
				WHEN MONTH(flight_date) BETWEEN 1 AND 2 OR MONTH(flight_date) = 12 THEN 'Winter'
				WHEN MONTH(flight_date) BETWEEN 3 AND 5 THEN 'Spring'
				WHEN MONTH(flight_date) BETWEEN 6 AND 8 THEN 'Summer'
				WHEN MONTH(flight_date) BETWEEN 9 AND 11 THEN 'Autumn'
				ELSE 'Unknown'
			END AS Season
			FROM flights 
				WHERE YEAR(flight_date) = 2021) 
	AS S 
	GROUP BY Season
	ORDER BY 'Number of planned flights' DESC;


--6. Print route orders for groups of people (number of passengers more than 1) with total and average price, number of passenger, their names and surnames
SELECT id_route_order as RouteOrder, COUNT(*) AS 'Number of passengers', SUM(ticket_price) AS 'Total price', 
		ROUND(SUM(ticket_price)/CAST(COUNT(*) AS FLOAT), 2) AS 'Average ticket price', STRING_AGG(CONCAT(p.names, ' ', p.surname), ', ') AS 'Passengers'
	FROM route_tickets rt
		JOIN documents d
			ON rt.confirmation_document = d.document_number
		JOIN passengers p
			ON d.id_passenger = p.id_passenger
	GROUP BY id_route_order 
		HAVING COUNT(*) > 1;


--7. Print flights (flight number and flight date) which departure from countries from Europe 
-- and arrive to United States of America which are planned for the next 3 months from today and their time in minutes.
SELECT fl.flight_number AS FlightNumber, fl.flight_date AS FlightDate, sch.id_departure_airport AS DepartureAirport, sch.id_arrival_airport AS ArrivalAirport,
CAST((CAST(LEFT(sch.scheduled_arrival_hour, 2) AS INT)-CAST(LEFT(sch.scheduled_departure_hour, 2) AS INT))*60+(CAST(RIGHT(sch.scheduled_arrival_hour, 2) AS INT)-CAST(RIGHT(sch.scheduled_departure_hour, 2) AS INT)) AS VARCHAR) + ' min' AS FlightTime
	FROM flights fl
	JOIN scheduled_flights sch
		ON fl.id_scheduled_flight = sch.id_scheduled_flight
	JOIN airports aA
		ON sch.id_arrival_airport = aA.IATA_code
	JOIN cities aC
		ON aA.location_city = aC.city_name
	JOIN airports dA
		ON sch.id_departure_airport = dA.IATA_code
	JOIN cities dC
		ON dA.location_city = dC.city_name
	JOIN countries dCO
		ON dC.country_name = dCO.country_name
	WHERE fl.flight_date <= DATEADD(month, 3, GETDATE()) AND fl.flight_date >= GETDATE() 
		AND aC.country_name = 'United States of America'
		AND dCO.continent = 'Europe';