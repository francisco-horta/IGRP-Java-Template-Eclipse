CREATE TABLE t_regions (
	region_id SERIAL PRIMARY KEY,
	region_name CHARACTER VARYING (25)
);

CREATE TABLE t_countries (
	country_id CHARACTER (2) PRIMARY KEY,
	country_name CHARACTER VARYING (40),
	region_id INTEGER NOT NULL,
	FOREIGN KEY (region_id) REFERENCES t_regions (region_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE t_locations (
	location_id SERIAL PRIMARY KEY,
	street_address CHARACTER VARYING (40),
	postal_code CHARACTER VARYING (12),
	city CHARACTER VARYING (30) NOT NULL,
	state_province CHARACTER VARYING (25),
	country_id CHARACTER (2) NOT NULL,
	FOREIGN KEY (country_id) REFERENCES t_countries (country_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE t_departments (
	department_id SERIAL PRIMARY KEY,
	department_name CHARACTER VARYING (30) NOT NULL,
	location_id INTEGER,
	FOREIGN KEY (location_id) REFERENCES t_locations (location_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE t_jobs (
	job_id SERIAL PRIMARY KEY,
	job_title CHARACTER VARYING (35) NOT NULL,
	min_salary NUMERIC (8, 2),
	max_salary NUMERIC (8, 2)
);

CREATE TABLE t_employees (
	employee_id SERIAL PRIMARY KEY,
	first_name CHARACTER VARYING (20),
	last_name CHARACTER VARYING (25) NOT NULL,
	email CHARACTER VARYING (100) NOT NULL,
	phone_number CHARACTER VARYING (20),
	hire_date DATE NOT NULL,
	job_id INTEGER NOT NULL,
	salary NUMERIC (8, 2) NOT NULL,
	manager_id INTEGER,
	department_id INTEGER,
	FOREIGN KEY (job_id) REFERENCES t_jobs (job_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (department_id) REFERENCES t_departments (department_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE t_dependents (
	dependent_id SERIAL PRIMARY KEY,
	first_name CHARACTER VARYING (50) NOT NULL,
	last_name CHARACTER VARYING (50) NOT NULL,
	relationship CHARACTER VARYING (25) NOT NULL,
	employee_id INTEGER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES t_employees (employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);