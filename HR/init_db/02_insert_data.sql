-- JOBS
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('AD_PRES', 'President', 20080, 40000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('SA_MAN', 'Sales Manager', 10000, 20080);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('SA_REP', 'Sales Representative', 6000, 12008);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('ST_CLERK', 'Stock Clerk', 2008, 5000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('SH_CLERK', 'Shipping Clerk', 2500, 5500);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO public.jobs (job_id, job_title, min_salary, max_salary) VALUES('PR_REP', 'Public Relations Representative', 4500, 10500);

-- REGIONS
INSERT INTO public.regions (region_id, region_name) VALUES(1, 'Europe');
INSERT INTO public.regions (region_id, region_name) VALUES(2, 'Americas');
INSERT INTO public.regions (region_id, region_name) VALUES(3, 'Asia');
INSERT INTO public.regions (region_id, region_name) VALUES(4, 'Middle East and Africa');

-- COUNTRIES
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('AR', 'Argentina', 2);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('AU', 'Australia', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('BE', 'Belgium', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('BR', 'Brazil', 2);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('CA', 'Canada', 2);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('CH', 'Switzerland', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('CN', 'China', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('DE', 'Germany', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('DK', 'Denmark', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('EG', 'Egypt', 4);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('FR', 'France', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('IL', 'Israel', 4);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('IN', 'India', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('IT', 'Italy', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('JP', 'Japan', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('KW', 'Kuwait', 4);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('ML', 'Malaysia', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('MX', 'Mexico', 2);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('NG', 'Nigeria', 4);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('NL', 'Netherlands', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('SG', 'Singapore', 3);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('UK', 'United Kingdom', 1);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('US', 'United States of America', 2);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('ZM', 'Zambia', 4);
INSERT INTO public.countries (country_id, country_name, region_id) VALUES('ZW', 'Zimbabwe', 4);

-- LOCATIONS
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1000, '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1100, '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2000, '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2300, '198 Clementi North', '540198', 'Singapore', NULL, 'SG');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO public.locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');

-- DEPARTMENTS
INSERT INTO public.departments (department_id, department_name, manager_id, location_id) VALUES
(10,  'Administration',       200, 1700),
(20,  'Marketing',            201, 1800),
(30,  'Purchasing',           114, 1700),
(40,  'Human Resources',      203, 2400),
(50,  'Shipping',             121, 1500),
(60,  'IT',                   103, 1400),
(70,  'Public Relations',     204, 2700),
(80,  'Sales',                145, 2500),
(90,  'Executive',            100, 1700),
(100, 'Finance',              108, 1700),
(110, 'Accounting',           205, 1700),
(120, 'Treasury',             NULL, 1700),
(130, 'Corporate Tax',        NULL, 1700),
(140, 'Control And Credit',   NULL, 1700),
(150, 'Shareholder Services', NULL, 1700),
(160, 'Benefits',             NULL, 1700),
(170, 'Manufacturing',        NULL, 1700),
(180, 'Construction',         NULL, 1700),
(190, 'Contracting',          NULL, 1700),
(200, 'Operations',           NULL, 1700),
(210, 'IT Support',           NULL, 1700),
(220, 'NOC',                  NULL, 1700),
(230, 'IT Helpdesk',          NULL, 1700),
(240, 'Government Sales',     NULL, 1700),
(250, 'Retail Sales',         NULL, 1700),
(260, 'Recruiting',           NULL, 1700),
(270, 'Payroll',              NULL, 1700);

-- EMPLOYEES
INSERT INTO public.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', TIMESTAMP '2003-06-17', 'AD_PRES', 24000, NULL, NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TIMESTAMP '2005-09-21', 'AD_VP', 17000, NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TIMESTAMP '2001-01-13', 'AD_VP', 17000, NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TIMESTAMP '2006-01-03', 'IT_PROG', 9000, NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TIMESTAMP '2007-05-21', 'IT_PROG', 6000, NULL, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', TIMESTAMP '2005-06-25', 'IT_PROG', 4800, NULL, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TIMESTAMP '2006-02-05', 'IT_PROG', 4800, NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TIMESTAMP '2007-02-07', 'IT_PROG', 4200, NULL, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TIMESTAMP '2002-08-17', 'FI_MGR', 12008, NULL, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TIMESTAMP '2002-08-16', 'FI_ACCOUNT', 9000, NULL, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', TIMESTAMP '2005-09-28', 'FI_ACCOUNT', 8200, NULL, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', TIMESTAMP '2005-09-30', 'FI_ACCOUNT', 7700, NULL, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', TIMESTAMP '2006-03-07', 'FI_ACCOUNT', 7800, NULL, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', TIMESTAMP '2007-12-07', 'FI_ACCOUNT', 6900, NULL, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', TIMESTAMP '2002-12-07', 'PU_MAN', 11000, NULL, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', TIMESTAMP '2003-05-18', 'PU_CLERK', 3100, NULL, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', TIMESTAMP '2005-12-24', 'PU_CLERK', 2900, NULL, 114, 30),
(117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', TIMESTAMP '2005-07-24', 'PU_CLERK', 2800, NULL, 114, 30),
(118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', TIMESTAMP '2006-11-15', 'PU_CLERK', 2600, NULL, 114, 30),
(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', TIMESTAMP '2007-08-10', 'PU_CLERK', 2500, NULL, 114, 30),
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', TIMESTAMP '2004-07-18', 'ST_MAN', 8000, NULL, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', TIMESTAMP '2005-04-10', 'ST_MAN', 8200, NULL, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', TIMESTAMP '2003-05-01', 'ST_MAN', 7900, NULL, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', TIMESTAMP '2005-10-10', 'ST_MAN', 6500, NULL, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TIMESTAMP '2007-11-16', 'ST_MAN', 5800, NULL, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', TIMESTAMP '2005-07-16', 'ST_CLERK', 3200, NULL, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', TIMESTAMP '2006-09-28', 'ST_CLERK', 2700, NULL, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', TIMESTAMP '2007-01-14', 'ST_CLERK', 2400, NULL, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', TIMESTAMP '2008-03-08', 'ST_CLERK', 2200, NULL, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', TIMESTAMP '2005-08-20', 'ST_CLERK', 3300, NULL, 121, 50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', TIMESTAMP '2005-10-30', 'ST_CLERK', 2800, NULL, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', TIMESTAMP '2005-02-16', 'ST_CLERK', 2500, NULL, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', TIMESTAMP '2007-04-10', 'ST_CLERK', 2100, NULL, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', TIMESTAMP '2004-06-14', 'ST_CLERK', 3300, NULL, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', TIMESTAMP '2006-08-26', 'ST_CLERK', 2900, NULL, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', TIMESTAMP '2007-12-12', 'ST_CLERK', 2400, NULL, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', TIMESTAMP '2008-02-06', 'ST_CLERK', 2200, NULL, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', TIMESTAMP '2003-07-14', 'ST_CLERK', 3600, NULL, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', TIMESTAMP '2005-10-26', 'ST_CLERK', 3200, NULL, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', TIMESTAMP '2006-02-12', 'ST_CLERK', 2700, NULL, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', TIMESTAMP '2006-04-06', 'ST_CLERK', 2500, NULL, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', TIMESTAMP '2003-10-17', 'ST_CLERK', 3500, NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', TIMESTAMP '2005-01-29', 'ST_CLERK', 3100, NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', TIMESTAMP '2006-03-15', 'ST_CLERK', 2600, NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', TIMESTAMP '2006-07-09', 'ST_CLERK', 2500, NULL, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', TIMESTAMP '2004-10-01', 'SA_MAN', 14000, 0.4, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', TIMESTAMP '2005-01-05', 'SA_MAN', 13500, 0.3, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', TIMESTAMP '2005-03-10', 'SA_MAN', 12000, 0.3, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', TIMESTAMP '2007-10-15', 'SA_MAN', 11000, 0.3, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', TIMESTAMP '2008-01-29', 'SA_MAN', 10500, 0.2, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', TIMESTAMP '2005-01-30', 'SA_REP', 10000, 0.3, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', TIMESTAMP '2005-03-24', 'SA_REP', 9500, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', TIMESTAMP '2005-08-20', 'SA_REP', 9000, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', TIMESTAMP '2006-03-30', 'SA_REP', 8000, 0.2, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', TIMESTAMP '2006-12-09', 'SA_REP', 7500, 0.2, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', TIMESTAMP '2007-11-23', 'SA_REP', 7000, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', TIMESTAMP '2004-01-30', 'SA_REP', 10000, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', TIMESTAMP '2004-03-04', 'SA_REP', 9500, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', TIMESTAMP '2004-08-01', 'SA_REP', 9000, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', TIMESTAMP '2005-03-10', 'SA_REP', 8000, 0.3, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', TIMESTAMP '2005-12-15', 'SA_REP', 7500, 0.3, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', TIMESTAMP '2006-11-03', 'SA_REP', 7000, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', TIMESTAMP '2005-11-11', 'SA_REP', 10500, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', TIMESTAMP '2007-03-19', 'SA_REP', 9500, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', TIMESTAMP '2008-01-24', 'SA_REP', 7200, 0.1, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', TIMESTAMP '2008-02-23', 'SA_REP', 6800, 0.1, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', TIMESTAMP '2008-03-24', 'SA_REP', 6400, 0.1, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', TIMESTAMP '2008-04-21', 'SA_REP', 6200, 0.1, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', TIMESTAMP '2005-03-11', 'SA_REP', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', TIMESTAMP '2006-03-23', 'SA_REP', 10000, 0.2, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', TIMESTAMP '2006-01-24', 'SA_REP', 9600, 0.2, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', TIMESTAMP '2007-02-23', 'SA_REP', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', TIMESTAMP '2007-03-24', 'SA_REP', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', TIMESTAMP '2008-04-21', 'SA_REP', 6100, 0.1, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', TIMESTAMP '2004-05-11', 'SA_REP', 11000, 0.3, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', TIMESTAMP '2005-03-19', 'SA_REP', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', TIMESTAMP '2006-03-24', 'SA_REP', 8600, 0.2, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', TIMESTAMP '2006-04-23', 'SA_REP', 8400, 0.2, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', TIMESTAMP '2007-05-24', 'SA_REP', 7000, 0.15, 149, NULL),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', TIMESTAMP '2008-01-04', 'SA_REP', 6200, 0.1, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', TIMESTAMP '2006-01-24', 'SH_CLERK', 3200, NULL, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', TIMESTAMP '2006-02-23', 'SH_CLERK', 3100, NULL, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', TIMESTAMP '2007-06-21', 'SH_CLERK', 2500, NULL, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', TIMESTAMP '2008-02-03', 'SH_CLERK', 2800, NULL, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', TIMESTAMP '2004-01-27', 'SH_CLERK', 4200, NULL, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', TIMESTAMP '2005-02-20', 'SH_CLERK', 4100, NULL, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', TIMESTAMP '2006-06-24', 'SH_CLERK', 3400, NULL, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', TIMESTAMP '2007-02-07', 'SH_CLERK', 3000, NULL, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', TIMESTAMP '2005-06-14', 'SH_CLERK', 3800, NULL, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', TIMESTAMP '2005-08-13', 'SH_CLERK', 3600, NULL, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', TIMESTAMP '2006-07-11', 'SH_CLERK', 2900, NULL, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', TIMESTAMP '2007-12-19', 'SH_CLERK', 2500, NULL, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', TIMESTAMP '2004-02-04', 'SH_CLERK', 4000, NULL, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', TIMESTAMP '2005-03-03', 'SH_CLERK', 3900, NULL, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', TIMESTAMP '2006-07-01', 'SH_CLERK', 3200, NULL, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', TIMESTAMP '2007-03-17', 'SH_CLERK', 2800, NULL, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', TIMESTAMP '2006-04-24', 'SH_CLERK', 3100, NULL, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', TIMESTAMP '2006-05-23', 'SH_CLERK', 3000, NULL, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', TIMESTAMP '2007-06-21', 'SH_CLERK', 2600, NULL, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', TIMESTAMP '2008-01-13', 'SH_CLERK', 2600, NULL, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', TIMESTAMP '2003-09-17', 'AD_ASST', 4400, NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', TIMESTAMP '2004-02-17', 'MK_MAN', 13000, NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', TIMESTAMP '2005-08-17', 'MK_REP', 6000, NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', TIMESTAMP '2002-06-07', 'HR_REP', 6500, NULL, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', TIMESTAMP '2002-06-07', 'PR_REP', 10000, NULL, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', TIMESTAMP '2002-06-07', 'AC_MGR', 12008, NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', TIMESTAMP '2002-06-07', 'AC_ACCOUNT', 8300, NULL, 205, 110);

-- JOB_HISTORY
INSERT INTO public.job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(102, TIMESTAMP '2001-01-13', TIMESTAMP '2006-07-24', 'IT_PROG', 60),
(101, TIMESTAMP '1997-09-21', TIMESTAMP '2001-10-27', 'AC_ACCOUNT', 110),
(101, TIMESTAMP '2001-10-28', TIMESTAMP '2005-03-15', 'AC_MGR', 110),
(201, TIMESTAMP '2004-02-17', TIMESTAMP '2007-12-19', 'MK_REP', 20),
(114, TIMESTAMP '2006-03-24', TIMESTAMP '2007-12-31', 'ST_CLERK', 50),
(122, TIMESTAMP '2007-01-01', TIMESTAMP '2007-12-31', 'ST_CLERK', 50),
(200, TIMESTAMP '1995-09-17', TIMESTAMP '2001-06-17', 'AD_ASST', 90),
(176, TIMESTAMP '2006-03-24', TIMESTAMP '2006-12-31', 'SA_REP', 80),
(176, TIMESTAMP '2007-01-01', TIMESTAMP '2007-12-31', 'SA_MAN', 80),
(200, TIMESTAMP '2002-07-01', TIMESTAMP '2006-12-31', 'AC_ACCOUNT', 90);
