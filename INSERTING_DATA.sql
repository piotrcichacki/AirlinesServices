/*
	Piotr Cichacki
	Subject: airlines services.
	Laboratory - task 1
	This script is used to insert data into all tables.
*/

INSERT INTO countries VALUES('Poland', 'Europe');
INSERT INTO countries VALUES('Italy', 'Europe');
INSERT INTO countries VALUES('Germany', 'Europe');
INSERT INTO countries VALUES('France', 'Europe');
INSERT INTO countries VALUES('Spain', 'Europe');
INSERT INTO countries VALUES('Portugal', 'Europe');
INSERT INTO countries VALUES('Argentina', 'South America');
INSERT INTO countries VALUES('Brazil', 'South America');
INSERT INTO countries VALUES('Canada', 'North America');
INSERT INTO countries VALUES('United States of America', 'North America');
INSERT INTO countries VALUES('Egypt', 'Africa');
INSERT INTO countries VALUES('South Africa', 'Africa');
INSERT INTO countries VALUES('Australia', 'Australia');
INSERT INTO countries VALUES('India', 'Asia');
INSERT INTO countries VALUES('China', 'Asia');
INSERT INTO countries VALUES('Japany', 'Asia');
SELECT * FROM countries;

INSERT INTO cities VALUES('Barcelona', 5575000, 'UTC+01:00', 'Spain');
INSERT INTO cities VALUES('Madrid', 6642000, 'UTC+01:00', 'Spain');
INSERT INTO cities VALUES('Milan', 1352000, 'UTC+01:00', 'Italy');
INSERT INTO cities VALUES('Rome', 2873000, 'UTC+01:00', 'Italy');
INSERT INTO cities VALUES('Warsaw', 1708000, 'UTC+01:00', 'Poland');
INSERT INTO cities VALUES('Berlin', 3669000, 'UTC+01:00', 'Germany');
INSERT INTO cities VALUES('Paris', 2148000, 'UTC+01:00', 'France');
INSERT INTO cities VALUES('Lisbon', 504000, 'UTC+00:00', 'Portugal');
INSERT INTO cities VALUES('Buenos Aires', 2890000, 'UTC-03:00', 'Argentina');
INSERT INTO cities VALUES('Rio de Janeiro', 6320000, 'UTC-03:00', 'Brazil');
INSERT INTO cities VALUES('Toronto', 2930000, 'UTC-05:00', 'Canada');
INSERT INTO cities VALUES('Los Angeles', 3990000, 'UTC-08:00', 'United States of America');
INSERT INTO cities VALUES('New York', 8399000, 'UTC-05:00', 'United States of America');
INSERT INTO cities VALUES('Cairo', 9540000, 'UTC+02:00', 'Egypt');
INSERT INTO cities VALUES('Pretoria', 741000, 'UTC+02:00', 'South Africa');
INSERT INTO cities VALUES('Melbourne', 4936000, 'UTC+11:00', 'Australia');
INSERT INTO cities VALUES('Mumbai', 18410000, 'UTC+05:30', 'India');
INSERT INTO cities VALUES('Beijing', 21540000, 'UTC+08:00', 'China');
INSERT INTO cities VALUES('Tokyo', 9273000, 'UTC+09:00', 'Japany');
SELECT * FROM cities;

INSERT INTO aircraft_models VALUES('Boeing 737-700', 145,'Boeing');
INSERT INTO aircraft_models VALUES('Boeing 777-200ER', 260,'Boeing');
INSERT INTO aircraft_models VALUES('Boeing 787-9 Dreamliner', 330,'Boeing');
INSERT INTO aircraft_models VALUES('Boeing 747-400', 344,'Boeing');
INSERT INTO aircraft_models VALUES('Airbus A320-200', 150,'Airbus');
INSERT INTO aircraft_models VALUES('Airbus A330-300', 291,'Airbus');
INSERT INTO aircraft_models VALUES('Airbus A380-800', 488,'Airbus');
INSERT INTO aircraft_models VALUES('Airbus A340-300', 221,'Airbus');
INSERT INTO aircraft_models VALUES('Embraer 190', 99,'Embraer');
INSERT INTO aircraft_models VALUES('Embraer 195', 108,'Embraer');
INSERT INTO aircraft_models VALUES('Embraer 170', 70,'Embraer');
INSERT INTO aircraft_models VALUES('Bombardier CRJ-900', 90,'Bombardier Aerospace');
SELECT * FROM aircraft_models;

INSERT INTO aircrafts VALUES('SP-LSA', 'Land', '2007-11-17', 'Boeing 787-9 Dreamliner');
INSERT INTO aircrafts VALUES('SP-DWS', 'Land', '2009-04-18', 'Airbus A320-200');
INSERT INTO aircrafts VALUES('SP-PCC', 'Flight', '2010-01-07', 'Boeing 747-400');
INSERT INTO aircrafts VALUES('SP-BGT', 'Land', '2006-08-22', 'Embraer 170');
INSERT INTO aircrafts VALUES('SP-PEW', 'Land', '2000-02-28', 'Airbus A320-200');
INSERT INTO aircrafts VALUES('SP-NHY', 'Flight', '2011-06-01', 'Boeing 787-9 Dreamliner');
INSERT INTO aircrafts VALUES('SP-PIS', 'Land', '2012-04-13', 'Boeing 737-700');
INSERT INTO aircrafts VALUES('SP-ERI', 'Flight', '2007-09-21', 'Airbus A340-300');
INSERT INTO aircrafts VALUES('SP-UTC', 'Land', '2010-06-25', 'Embraer 170');
INSERT INTO aircrafts VALUES('SP-PXW', 'Land', '2009-08-21', 'Airbus A320-200');
INSERT INTO aircrafts VALUES('SP-NUR', 'Flight', '2005-11-23', 'Airbus A340-300');
INSERT INTO aircrafts VALUES('SP-NMA', 'Land', '2012-05-12', 'Embraer 190');
INSERT INTO aircrafts VALUES('SP-SDA', 'Land', '2013-09-17', 'Airbus A380-800');
INSERT INTO aircrafts VALUES('SP-HTD', 'Land', '2003-02-22', 'Embraer 195');
INSERT INTO aircrafts VALUES('SP-HEG', 'Flight', '2003-10-20', 'Bombardier CRJ-900');
INSERT INTO aircrafts VALUES('SP-POD', 'Land', '2008-11-01', 'Boeing 737-700');
INSERT INTO aircrafts VALUES('SP-REW', 'Flight', '2006-01-20', 'Boeing 777-200ER');
SELECT * FROM aircrafts;

INSERT INTO airports VALUES('BCN', 'Josep Tarradellas Barcelona-El Prat Airport', '+34 932 596 440', 'Barcelona')
INSERT INTO airports VALUES('MAD', 'Madrid-Barajas Adolfo Suárez Airport', '+34 913 21 10 00', 'Madrid')
INSERT INTO airports VALUES('MXP', 'Milan Malpensa Airport', '+39 02 232 323', 'Milan')
INSERT INTO airports VALUES('WAW', 'Warsaw Chopin Airport', '+22 650 42 20', 'Warsaw')
INSERT INTO airports VALUES('BER', 'Berlin Brandenburg Airport', '+49 30 609 160 910', 'Berlin')
INSERT INTO airports VALUES('CDG', 'Paris Charles de Gaulle Airport', '+33 1 70 36 39 50', 'Paris')
INSERT INTO airports VALUES('LIS', 'Lisbon Portela Airport', '+351 218 413 500', 'Lisbon')
INSERT INTO airports VALUES('EZE', 'Buenos Aires-Ezeiza', '+36 267 236 21 321', 'Buenos Aires')
INSERT INTO airports VALUES('GIG', 'Galeão International Airport', '+55 21 3004-6050', 'Rio de Janeiro')
INSERT INTO airports VALUES('YYZ', 'Toronto Pearson International Airport', '+1 416-247-7678', 'Toronto')
INSERT INTO airports VALUES('LAX', 'Los Angeles International Airport', '+1 855-463-5252', 'Los Angeles')
INSERT INTO airports VALUES('JFK', 'John F. Kennedy International Airport', '+1 718-244-4444', 'New York')
INSERT INTO airports VALUES('CAI', 'Cairo International Aiport', '+ 02 26966300', 'Cairo')
INSERT INTO airports VALUES('MEL', 'Melbourne Airport', '+61 3 9297 1600', 'Melbourne')
INSERT INTO airports VALUES('BOM', 'Chhatrapati Shivaji International Airport', '+91 22 66851010', 'Mumbai')
INSERT INTO airports VALUES('PEK', 'Beijing Capital International Airport', '+86 10 96158', 'Beijing')
SELECT * FROM airports;

INSERT INTO passengers VALUES('Juan' ,'Alonso', 'Male', '1991-09-22', 'Barcelona')
INSERT INTO passengers VALUES('Hugo' ,'Murillo', 'Male', '1990-02-12', 'Barcelona')
INSERT INTO passengers VALUES('Liam' ,'Davies', 'Male', '1981-04-11', 'Milan')
INSERT INTO passengers VALUES('Jan Marcin', 'Nowak', 'Male', '1968-12-05', 'Warsaw')
INSERT INTO passengers VALUES('Janina', 'Nowak', 'Female', '1965-10-12', 'Warsaw')
INSERT INTO passengers VALUES('Piotr', 'Nowak', 'Male', '1998-06-02', 'Warsaw')
INSERT INTO passengers VALUES('Paweł', 'Nowak', 'Male', '1999-11-28', 'Warsaw')
INSERT INTO passengers VALUES('Julia', 'Nowak', 'Female', '2001-03-09', 'Warsaw')
INSERT INTO passengers VALUES('Harry' ,'Murphy', 'Male', '1980-02-02', 'Berlin')
INSERT INTO passengers VALUES('David' ,'Garcia', 'Male', '1990-03-03', 'Lisbon')
INSERT INTO passengers VALUES('Daniel' ,'Roberts', 'Male', '1984-10-23', 'Buenos Aires')
INSERT INTO passengers VALUES('Charlie' ,'Thomas', 'Male', '1985-05-10', 'Toronto')
INSERT INTO passengers VALUES('David' ,'Johnson', 'Male', '1988-07-01', 'New York')
INSERT INTO passengers VALUES('Sarah' ,'Williams', 'Female', '1988-08-21', 'New York')
INSERT INTO passengers VALUES('Charles' ,'Miller', 'Male', '1988-01-31', 'New York')
INSERT INTO passengers VALUES('Isabella' ,'Rodriguez', 'Female', '1987-03-15', 'New York')
INSERT INTO passengers VALUES('James' ,'Evans', 'Male', '1983-10-04', 'Cairo')
INSERT INTO passengers VALUES('Emily' ,'Brown', 'Female', '1999-02-10', 'Melbourne')
INSERT INTO passengers VALUES('Jessica' ,'Anderson', 'Female', '2000-01-11', 'Melbourne')
INSERT INTO passengers VALUES('Lauren' ,'White', 'Female', '1999-09-30', 'Melbourne')
INSERT INTO passengers VALUES('Oscar' ,'Wilson', 'Male', '1988-02-19', 'Beijing')
SELECT * FROM passengers;

INSERT INTO customers VALUES('juan.alonso@gmail.com', '+23 13 829 310', (SELECT id_passenger FROM passengers WHERE (names='Juan') AND (surname='Alonso')));
INSERT INTO customers VALUES('liamdavies@gmail.com', '+32 213 293 31', (SELECT id_passenger FROM passengers WHERE (names='Liam') AND (surname='Davies')));
INSERT INTO customers VALUES('jan-nowak@wp.pl', '+48 321 321 212', (SELECT id_passenger FROM passengers WHERE (names='Jan Marcin') AND (surname='Nowak')));
INSERT INTO customers VALUES('haaarry@gmail.com', '+32 329 902 122', (SELECT id_passenger FROM passengers WHERE (names='Harry') AND (surname='Murphy')));
INSERT INTO customers VALUES('davidgarcia@gmail.com', '+32 230 32 23', (SELECT id_passenger FROM passengers WHERE (names='David') AND (surname='Garcia')));
INSERT INTO customers VALUES('daniel1984@gmail.com', '+93 382 920 39', (SELECT id_passenger FROM passengers WHERE (names='Daniel') AND (surname='Roberts')));
INSERT INTO customers VALUES('charliethomas@gmail.com', '+32 231 23 23', (SELECT id_passenger FROM passengers WHERE (names='Charlie') AND (surname='Thomas')));
INSERT INTO customers VALUES('david010788@gmail.com', '+32 21 321 213', (SELECT id_passenger FROM passengers WHERE (names='David') AND (surname='Johnson')));
INSERT INTO customers VALUES('jaaames@gmail.com', '+87 231 039 238', (SELECT id_passenger FROM passengers WHERE (names='James') AND (surname='Evans')));
INSERT INTO customers VALUES('emily1999@gmail.com', '+87 231 039 238', (SELECT id_passenger FROM passengers WHERE (names='Emily') AND (surname='Brown')));
INSERT INTO customers VALUES('oscarWilosn@gmail.com', '+93 320 103 495', (SELECT id_passenger FROM passengers WHERE (names='Oscar') AND (surname='Wilson')));
SELECT * FROM customers;

INSERT INTO documents VALUES('HJ24324', 'Identity card', '2022-01-01', 1);
INSERT INTO documents VALUES('KJ21739', 'Passport', '2024-02-15', 2);
INSERT INTO documents VALUES('LU33212', 'Identity card', '2023-05-02', 3);
INSERT INTO documents VALUES('HD31231', 'Passport', '2021-12-10', 4);
INSERT INTO documents VALUES('IU23123', 'Passport', '2022-09-30', 5);
INSERT INTO documents VALUES('PL32134', 'Identity card', '2023-11-21', 6);
INSERT INTO documents VALUES('PO31314', 'Passport', '2025-08-07', 7);
INSERT INTO documents VALUES('DS32131', 'Identity card', '2024-02-15', 8);
INSERT INTO documents VALUES('HY78432', 'Identity card', '2022-11-18', 9);
INSERT INTO documents VALUES('OP23138', 'Identity card', '2023-03-31', 10);
INSERT INTO documents VALUES('EW32194', 'Passport', '2024-04-20', 11);
INSERT INTO documents VALUES('WQ21394', 'Identity card', '2021-12-15', 12);
INSERT INTO documents VALUES('JH32174', 'Passport', '2022-09-09', 13);
INSERT INTO documents VALUES('PO09823', 'Identity card', '2023-09-10', 14);
INSERT INTO documents VALUES('N23BJ13', 'Passport', '2022-10-23', 15);
INSERT INTO documents VALUES('POJ31BJ', 'Identity card', '2022-03-22', 16);
INSERT INTO documents VALUES('BJK231I', 'Passport', '2025-12-20', 17);
INSERT INTO documents VALUES('OPI321B', 'Identity card', '2023-08-13', 18);
INSERT INTO documents VALUES('J3B13H1', 'Passport', '2022-01-09', 19);
INSERT INTO documents VALUES('EB213HJ', 'Identity card', '2023-05-21', 20);
INSERT INTO documents VALUES('JKS893B', 'Passport', '2024-06-30', 21);
SELECT * FROM documents;

INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Jan Marcin') AND (surname='Nowak')), 'Poland');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Janina') AND (surname='Nowak')), 'Poland');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Piotr') AND (surname='Nowak')), 'Poland');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Paweł') AND (surname='Nowak')), 'Poland');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Julia') AND (surname='Nowak')), 'Poland');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='David') AND (surname='Johnson')), 'United States of America');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Sarah') AND (surname='Williams')), 'France');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Charles') AND (surname='Miller')), 'United States of America');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Isabella') AND (surname='Rodriguez')), 'Spain');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Juan') AND (surname='Alonso')), 'Spain');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Hugo') AND (surname='Murillo')), 'Spain');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Emily') AND (surname='Brown')), 'Australia');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Jessica') AND (surname='Anderson')), 'Australia');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Lauren') AND (surname='White')), 'Australia');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='David') AND (surname='Garcia')), 'Portugal');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Oscar') AND (surname='Wilson')), 'China');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='James') AND (surname='Evans')), 'Egypt');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Charlie') AND (surname='Thomas')), 'Canada');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Daniel') AND (surname='Roberts')), 'Argentina');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Liam') AND (surname='Davies')), 'United States of America');
INSERT INTO citizenships VALUES((SELECT id_passenger FROM passengers WHERE (names='Harry') AND (surname='Murphy')), 'Canada');
SELECT * FROM citizenships;


INSERT INTO scheduled_flights VALUES('Friday', '16:25', 'Friday', '20:35', 'Boeing 787-9 Dreamliner', 'BCN', 'CAI');
INSERT INTO scheduled_flights VALUES('Thursday', '15:25', 'Thursday', '17:15', 'Boeing 737-700', 'MXP', 'BER');
INSERT INTO scheduled_flights VALUES('Wednesday', '08:00', 'Wednesday', '09:00', 'Airbus A320-200', 'WAW', 'BER');
INSERT INTO scheduled_flights VALUES('Wednesday', '13:10', 'Wednesday', '20:30', 'Airbus A380-800', 'BER', 'GIG');
INSERT INTO scheduled_flights VALUES('Saturday', '11:30', 'Saturday', '17:50', 'Airbus A340-300', 'GIG', 'CDG');
INSERT INTO scheduled_flights VALUES('Saturday', '20:00', 'Saturday', '22:20', 'Embraer 195', 'CDG', 'WAW');
INSERT INTO scheduled_flights VALUES('Monday', '11:30', 'Monday', '23:10', 'Airbus A340-300', 'BER', 'BOM');
INSERT INTO scheduled_flights VALUES('Tuesday', '10:20', 'Tuesday', '15:00', 'Embraer 195', 'LIS', 'CAI');
INSERT INTO scheduled_flights VALUES('Friday', '18:00', 'Saturday', '02:50', 'Boeing 777-200ER', 'EZE', 'MAD');
INSERT INTO scheduled_flights VALUES('Wednesday', '16:10', 'Wednesday', '18:00', 'Bombardier CRJ-900', 'YYZ', 'JFK');
INSERT INTO scheduled_flights VALUES('Sunday', '18:00', 'Sunday', '23:30', 'Embraer 170', 'JFK', 'LAX');
INSERT INTO scheduled_flights VALUES('Thursday', '10:10', 'Thursday', '15:30', 'Embraer 195', 'LAX', 'JFK');
INSERT INTO scheduled_flights VALUES('Saturday', '09:00', 'Saturday', '14:00', 'Boeing 777-200ER', 'CAI', 'CDG');
INSERT INTO scheduled_flights VALUES('Tuesday', '11:30', 'Tuesday', '22:30', 'Airbus A320-200', 'MEL', 'MXP');
INSERT INTO scheduled_flights VALUES('Wednesday', '06:00', 'Wednesday', '08:20', 'Bombardier CRJ-900', 'MXP', 'MAD');
INSERT INTO scheduled_flights VALUES('Saturday', '13:00', 'Saturday', '21:30', 'Boeing 737-700', 'MAD', 'BOM');
INSERT INTO scheduled_flights VALUES('Sunday', '04:00', 'Sunday', '09:30', 'Airbus A340-300', 'BOM', 'MEL');
INSERT INTO scheduled_flights VALUES('Friday', '09:20', 'Friday', '18:40', 'Airbus A380-800', 'PEK', 'CAI');
INSERT INTO scheduled_flights VALUES('Friday', '11:20', 'Friday', '13:40', 'Embraer 195', 'WAW', 'BCN');
INSERT INTO scheduled_flights VALUES('Friday', '10:10', 'Friday', '18:30', 'Airbus A340-300', 'WAW', 'JFK');
INSERT INTO scheduled_flights VALUES('Saturday', '09:30', 'Saturday', '18:00', 'Airbus A380-800', 'BCN', 'JFK');
INSERT INTO scheduled_flights VALUES('Sunday', '12:00', 'Sunday', '22:20', 'Embraer 195', 'CDG', 'LAX');
SELECT * FROM scheduled_flights;

INSERT INTO flights VALUES('FGY7U2H', '2020-02-12', 10, 15, 'Happened', 'SP-LSA', 1)
INSERT INTO flights VALUES('UO92DS2', '2021-08-02', 0, 0, 'Planned', 'SP-PIS', 2)
INSERT INTO flights VALUES('DF324JG', '2021-01-31', 0, 0, 'Planned', 'SP-PXW', 3)
INSERT INTO flights VALUES('JKH43DS', '2021-01-31', 0, 0, 'Planned', 'SP-SDA', 4)
INSERT INTO flights VALUES('DS83KS2', '2021-02-10', 0, 0, 'Planned', 'SP-NUR', 5)
INSERT INTO flights VALUES('SDA032J', '2021-02-10', 0, 0, 'Planned', 'SP-HTD', 6)
INSERT INTO flights VALUES('MHE32JH', '2021-05-29', 0, 0, 'Planned', 'SP-ERI', 7)
INSERT INTO flights VALUES('AW03L0U', '2020-01-23', 5, 20, 'Happened', 'SP-NMA', 8)
INSERT INTO flights VALUES('HRM23JK', '2021-03-22', 0, 0, 'Planned', 'SP-REW', 9)
INSERT INTO flights VALUES('KU231PS', '2020-10-15', 0, 0, 'Planned', 'SP-HEG', 10)
INSERT INTO flights VALUES('H3B1U23', '2020-08-21', 10, 0, 'Happened', 'SP-BGT', 11)
INSERT INTO flights VALUES('PO2ND9A', '2020-08-30', 10, 30, 'Happened', 'SP-HTD', 12)
INSERT INTO flights VALUES('KO3N4D0', '2020-08-12', 0, -10, 'Happened', 'SP-REW', 13)
INSERT INTO flights VALUES('W1N9SA2', '2021-06-04', 0, 0, 'Planned', 'SP-DWS', 14)
INSERT INTO flights VALUES('H3B1U23', '2021-06-05', 0, 0, 'Planned', 'SP-HEG', 15)
INSERT INTO flights VALUES('PO2ND9A', '2021-06-14', 0, 0, 'Planned', 'SP-PIS', 16)
INSERT INTO flights VALUES('KO3N4D0', '2021-06-15', 0, 0, 'Planned', 'SP-ERI', 17)
INSERT INTO flights VALUES('W1N9SA2', '2021-03-01', 0, 0, 'Planned', 'SP-SDA', 18)
INSERT INTO flights VALUES('KJD9042', '2021-12-19', 0, 0, 'Planned', 'SP-NUR', 19)
INSERT INTO flights VALUES('DDSJ123', '2021-11-02', 0, 0, 'Planned', 'SP-HTD', 15)
INSERT INTO flights VALUES('JSD3913', '2021-03-10', 0, 0, 'Planned', 'SP-SDA', 20)
INSERT INTO flights VALUES('DSAJ312', '2021-02-19', 0, 0, 'Planned', 'SP-NUR', 21)
INSERT INTO flights VALUES('SDNI424', '2021-04-01', 0, 0, 'Planned', 'SP-HTD', 22)
SELECT * FROM flights;

INSERT INTO route_orders VALUES('2019-05-03', (SELECT id_customer FROM customers WHERE email='juan.alonso@gmail.com'));
INSERT INTO route_orders VALUES('2020-11-30', (SELECT id_customer FROM customers WHERE email='liamdavies@gmail.com'));
INSERT INTO route_orders VALUES('2020-04-15', (SELECT id_customer FROM customers WHERE email='jan-nowak@wp.pl'));
INSERT INTO route_orders VALUES('2019-04-02', (SELECT id_customer FROM customers WHERE email='haaarry@gmail.com'));
INSERT INTO route_orders VALUES('2020-06-30', (SELECT id_customer FROM customers WHERE email='davidgarcia@gmail.com'));
INSERT INTO route_orders VALUES('2019-10-19', (SELECT id_customer FROM customers WHERE email='daniel1984@gmail.com'));
INSERT INTO route_orders VALUES('2020-01-03', (SELECT id_customer FROM customers WHERE email='charliethomas@gmail.com'));
INSERT INTO route_orders VALUES('2019-03-21', (SELECT id_customer FROM customers WHERE email='david010788@gmail.com'));
INSERT INTO route_orders VALUES('2019-03-21', (SELECT id_customer FROM customers WHERE email='jaaames@gmail.com'));
INSERT INTO route_orders VALUES('2020-08-19', (SELECT id_customer FROM customers WHERE email='emily1999@gmail.com'));
INSERT INTO route_orders VALUES('2020-04-02', (SELECT id_customer FROM customers WHERE email='oscarWilosn@gmail.com'));
SELECT * FROM route_orders;

INSERT INTO route_tickets VALUES('SFA321SD', 555.99, 'Cabin', 'Bike', 'HJ24324', 1);
INSERT INTO route_tickets VALUES('SDHU3218', 555.99, 'Cabin', 'Bike', 'KJ21739', 1);
INSERT INTO route_tickets VALUES('SDA8231J', 122.00, 'Checked', 'None', 'LU33212', 2);
INSERT INTO route_tickets VALUES('VBJ8323N', 2123.33, 'Cabin', 'None', 'HD31231', 3);
INSERT INTO route_tickets VALUES('PQWE8321', 2823.33, 'Checked', 'Pushchair', 'IU23123', 3);
INSERT INTO route_tickets VALUES('VKHS123N', 2123.33, 'Cabin', 'None', 'PL32134', 3);
INSERT INTO route_tickets VALUES('PISH23MN', 2123.33, 'Cabin', 'None', 'PO31314', 3);
INSERT INTO route_tickets VALUES('POWENB41', 2123.33, 'Cabin', 'None', 'DS32131', 3);
INSERT INTO route_tickets VALUES('S312NMB2', 600.00, 'Checked', 'None', 'HY78432', 4);
INSERT INTO route_tickets VALUES('ZCZ231N3', 650.10, 'Cabin', 'Bike', 'OP23138', 5);
INSERT INTO route_tickets VALUES('QWEJ2844', 1221.00, 'Checked', 'None', 'EW32194', 6);
INSERT INTO route_tickets VALUES('PEQL2310', 413.31, 'Checked', 'None', 'WQ21394', 7);
INSERT INTO route_tickets VALUES('MNS123NJ', 500.00, 'Cabin', 'None', 'JH32174', 8);
INSERT INTO route_tickets VALUES('POJ3139K', 800.00, 'Excess', 'None', 'PO09823', 8);
INSERT INTO route_tickets VALUES('PDSOEJ23', 500.00, 'Cabin', 'None', 'N23BJ13', 8);
INSERT INTO route_tickets VALUES('SDNI3132', 600.00, 'Checked', 'None', 'POJ31BJ', 8);
INSERT INTO route_tickets VALUES('DSN12394', 713.31, 'Checked', 'Bike', 'BJK231I', 9);
INSERT INTO route_tickets VALUES('OPN4931H', 1400.50, 'Cabin', 'None', 'OPI321B', 10);
INSERT INTO route_tickets VALUES('SDAJK314', 1600.50, 'Excess', 'None', 'J3B13H1', 10);
INSERT INTO route_tickets VALUES('DSAJK321', 1400.50, 'Cabin', 'None', 'EB213HJ', 10);
INSERT INTO route_tickets VALUES('HJDS893J', 1000.32, 'Excess', 'None', 'JKS893B', 11);
SELECT * FROM route_tickets;

INSERT INTO route VALUES('FGY7U2H', 1)
INSERT INTO route VALUES('UO92DS2', 2)
INSERT INTO route VALUES('DF324JG', 3)
INSERT INTO route VALUES('JKH43DS', 3)
INSERT INTO route VALUES('DS83KS2', 3)
INSERT INTO route VALUES('SDA032J', 3)
INSERT INTO route VALUES('MHE32JH', 4)
INSERT INTO route VALUES('AW03L0U', 5)
INSERT INTO route VALUES('HRM23JK', 6)
INSERT INTO route VALUES('KU231PS', 7)
INSERT INTO route VALUES('H3B1U23', 8)
INSERT INTO route VALUES('PO2ND9A', 8)
INSERT INTO route VALUES('KO3N4D0', 9)
INSERT INTO route VALUES('W1N9SA2', 10)
INSERT INTO route VALUES('H3B1U23', 10)
INSERT INTO route VALUES('PO2ND9A', 10)
INSERT INTO route VALUES('KO3N4D0', 10)
INSERT INTO route VALUES('W1N9SA2', 11)
SELECT * FROM route;

INSERT INTO owners VALUES('Piotr', 'Cichacki', '2000-07-08');
INSERT INTO shoes VALUES('Nike Air Force 1', 'Nike', 41, 'Black', 'Piotr', 'Cichacki');
SELECT * FROM owners;
SELECT * FROM shoes;



