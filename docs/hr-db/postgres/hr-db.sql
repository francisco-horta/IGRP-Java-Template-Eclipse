--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2022-06-17 14:47:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE hr;
--
-- TOC entry 2872 (class 1262 OID 92080)
-- Name: hr; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hr WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Portugal.1252' LC_CTYPE = 'Portuguese_Portugal.1252';


ALTER DATABASE hr OWNER TO postgres;

\connect hr

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 92086)
-- Name: t_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_countries (
    country_id character(2) NOT NULL,
    country_name character varying(40),
    region_id integer NOT NULL
);


ALTER TABLE public.t_countries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 92106)
-- Name: t_departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    location_id integer
);


ALTER TABLE public.t_departments OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 92144)
-- Name: t_dependents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_dependents (
    dependent_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    relationship character varying(25) NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.t_dependents OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 92124)
-- Name: t_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25) NOT NULL,
    email character varying(100) NOT NULL,
    phone_number character varying(20),
    hire_date date NOT NULL,
    job_id integer NOT NULL,
    salary numeric(8,2) NOT NULL,
    manager_id integer,
    department_id integer
);


ALTER TABLE public.t_employees OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 92118)
-- Name: t_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_jobs (
    job_id integer NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(8,2),
    max_salary numeric(8,2)
);


ALTER TABLE public.t_jobs OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 92116)
-- Name: t_jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t_jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.t_jobs_job_id_seq OWNER TO postgres;

--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 206
-- Name: t_jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t_jobs_job_id_seq OWNED BY public.t_jobs.job_id;


--
-- TOC entry 204 (class 1259 OID 92096)
-- Name: t_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_locations (
    location_id integer NOT NULL,
    street_address character varying(40),
    postal_code character varying(12),
    city character varying(30) NOT NULL,
    state_province character varying(25),
    country_id character(2) NOT NULL
);


ALTER TABLE public.t_locations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 92081)
-- Name: t_regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t_regions (
    region_id integer NOT NULL,
    region_name character varying(25)
);


ALTER TABLE public.t_regions OWNER TO postgres;

--
-- TOC entry 2711 (class 2604 OID 92121)
-- Name: t_jobs job_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_jobs ALTER COLUMN job_id SET DEFAULT nextval('public.t_jobs_job_id_seq'::regclass);


--
-- TOC entry 2860 (class 0 OID 92086)
-- Dependencies: 203
-- Data for Name: t_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('AR', 'Argentina', 2);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('AU', 'Australia', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('BE', 'Belgium', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('BR', 'Brazil', 2);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('CA', 'Canada', 2);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('CH', 'Switzerland', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('CN', 'China', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('DE', 'Germany', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('DK', 'Denmark', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('EG', 'Egypt', 4);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('FR', 'France', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('HK', 'HongKong', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('IL', 'Israel', 4);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('IN', 'India', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('IT', 'Italy', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('JP', 'Japan', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('KW', 'Kuwait', 4);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('MX', 'Mexico', 2);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('NG', 'Nigeria', 4);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('NL', 'Netherlands', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('SG', 'Singapore', 3);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('UK', 'United Kingdom', 1);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('US', 'United States of America', 2);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('ZM', 'Zambia', 4);
INSERT INTO public.t_countries (country_id, country_name, region_id) VALUES ('ZW', 'Zimbabwe', 4);


--
-- TOC entry 2862 (class 0 OID 92106)
-- Dependencies: 205
-- Data for Name: t_departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (1, 'Administration', 1700);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (2, 'Marketing', 1800);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (3, 'Purchasing', 1700);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (4, 'Human Resources', 2400);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (5, 'Shipping', 1500);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (6, 'IT', 1400);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (7, 'Public Relations', 2700);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (8, 'Sales', 2500);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (9, 'Executive', 1700);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (10, 'Finance', 1700);
INSERT INTO public.t_departments (department_id, department_name, location_id) VALUES (11, 'Accounting', 1700);


--
-- TOC entry 2866 (class 0 OID 92144)
-- Dependencies: 209
-- Data for Name: t_dependents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (1, 'Penelope', 'Gietz', 'Child', 206);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (2, 'Nick', 'Higgins', 'Child', 205);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (3, 'Ed', 'Whalen', 'Child', 200);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (4, 'Jennifer', 'King', 'Child', 100);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (5, 'Johnny', 'Kochhar', 'Child', 101);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (6, 'Bette', 'De Haan', 'Child', 102);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (7, 'Grace', 'Faviet', 'Child', 109);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (8, 'Matthew', 'Chen', 'Child', 110);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (9, 'Joe', 'Sciarra', 'Child', 111);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (10, 'Christian', 'Urman', 'Child', 112);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (11, 'Zero', 'Popp', 'Child', 113);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (12, 'Karl', 'Greenberg', 'Child', 108);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (13, 'Uma', 'Mavris', 'Child', 203);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (14, 'Vivien', 'Hunold', 'Child', 103);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (15, 'Cuba', 'Ernst', 'Child', 104);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (16, 'Fred', 'Austin', 'Child', 105);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (17, 'Helen', 'Pataballa', 'Child', 106);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (18, 'Dan', 'Lorentz', 'Child', 107);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (19, 'Bob', 'Hartstein', 'Child', 201);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (20, 'Lucille', 'Fay', 'Child', 202);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (21, 'Kirsten', 'Baer', 'Child', 204);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (22, 'Elvis', 'Khoo', 'Child', 115);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (23, 'Sandra', 'Baida', 'Child', 116);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (24, 'Cameron', 'Tobias', 'Child', 117);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (25, 'Kevin', 'Himuro', 'Child', 118);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (26, 'Rip', 'Colmenares', 'Child', 119);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (27, 'Julia', 'Raphaely', 'Child', 114);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (28, 'Woody', 'Russell', 'Child', 145);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (29, 'Alec', 'Partners', 'Child', 146);
INSERT INTO public.t_dependents (dependent_id, first_name, last_name, relationship, employee_id) VALUES (30, 'Sandra', 'Taylor', 'Child', 176);


--
-- TOC entry 2865 (class 0 OID 92124)
-- Dependencies: 208
-- Data for Name: t_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (100, 'Steven', 'King', 'steven.king@sqltutorial.org', '515.123.4567', '1987-06-17', 4, 24000.00, NULL, 9);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (101, 'Neena', 'Kochhar', 'neena.kochhar@sqltutorial.org', '515.123.4568', '1989-09-21', 5, 17000.00, 100, 9);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (102, 'Lex', 'De Haan', 'lex.de haan@sqltutorial.org', '515.123.4569', '1993-01-13', 5, 17000.00, 100, 9);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (103, 'Alexander', 'Hunold', 'alexander.hunold@sqltutorial.org', '590.423.4567', '1990-01-03', 9, 9000.00, 102, 6);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (104, 'Bruce', 'Ernst', 'bruce.ernst@sqltutorial.org', '590.423.4568', '1991-05-21', 9, 6000.00, 103, 6);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (105, 'David', 'Austin', 'david.austin@sqltutorial.org', '590.423.4569', '1997-06-25', 9, 4800.00, 103, 6);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (106, 'Valli', 'Pataballa', 'valli.pataballa@sqltutorial.org', '590.423.4560', '1998-02-05', 9, 4800.00, 103, 6);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (107, 'Diana', 'Lorentz', 'diana.lorentz@sqltutorial.org', '590.423.5567', '1999-02-07', 9, 4200.00, 103, 6);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (108, 'Nancy', 'Greenberg', 'nancy.greenberg@sqltutorial.org', '515.124.4569', '1994-08-17', 7, 12000.00, 101, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (109, 'Daniel', 'Faviet', 'daniel.faviet@sqltutorial.org', '515.124.4169', '1994-08-16', 6, 9000.00, 108, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (110, 'John', 'Chen', 'john.chen@sqltutorial.org', '515.124.4269', '1997-09-28', 6, 8200.00, 108, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (111, 'Ismael', 'Sciarra', 'ismael.sciarra@sqltutorial.org', '515.124.4369', '1997-09-30', 6, 7700.00, 108, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (112, 'Jose Manuel', 'Urman', 'jose manuel.urman@sqltutorial.org', '515.124.4469', '1998-03-07', 6, 7800.00, 108, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (113, 'Luis', 'Popp', 'luis.popp@sqltutorial.org', '515.124.4567', '1999-12-07', 6, 6900.00, 108, 10);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (114, 'Den', 'Raphaely', 'den.raphaely@sqltutorial.org', '515.127.4561', '1994-12-07', 14, 11000.00, 100, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (115, 'Alexander', 'Khoo', 'alexander.khoo@sqltutorial.org', '515.127.4562', '1995-05-18', 13, 3100.00, 114, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (116, 'Shelli', 'Baida', 'shelli.baida@sqltutorial.org', '515.127.4563', '1997-12-24', 13, 2900.00, 114, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (117, 'Sigal', 'Tobias', 'sigal.tobias@sqltutorial.org', '515.127.4564', '1997-07-24', 13, 2800.00, 114, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (118, 'Guy', 'Himuro', 'guy.himuro@sqltutorial.org', '515.127.4565', '1998-11-15', 13, 2600.00, 114, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (119, 'Karen', 'Colmenares', 'karen.colmenares@sqltutorial.org', '515.127.4566', '1999-08-10', 13, 2500.00, 114, 3);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (120, 'Matthew', 'Weiss', 'matthew.weiss@sqltutorial.org', '650.123.1234', '1996-07-18', 19, 8000.00, 100, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (121, 'Adam', 'Fripp', 'adam.fripp@sqltutorial.org', '650.123.2234', '1997-04-10', 19, 8200.00, 100, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (122, 'Payam', 'Kaufling', 'payam.kaufling@sqltutorial.org', '650.123.3234', '1995-05-01', 19, 7900.00, 100, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (123, 'Shanta', 'Vollman', 'shanta.vollman@sqltutorial.org', '650.123.4234', '1997-10-10', 19, 6500.00, 100, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@sqltutorial.org', '650.124.1224', '1998-09-28', 18, 2700.00, 120, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (145, 'John', 'Russell', 'john.russell@sqltutorial.org', NULL, '1996-10-01', 15, 14000.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (146, 'Karen', 'Partners', 'karen.partners@sqltutorial.org', NULL, '1997-01-05', 15, 13500.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (176, 'Jonathon', 'Taylor', 'jonathon.taylor@sqltutorial.org', NULL, '1998-03-24', 16, 8600.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (177, 'Jack', 'Livingston', 'jack.livingston@sqltutorial.org', NULL, '1998-04-23', 16, 8400.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (178, 'Kimberely', 'Grant', 'kimberely.grant@sqltutorial.org', NULL, '1999-05-24', 16, 7000.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (179, 'Charles', 'Johnson', 'charles.johnson@sqltutorial.org', NULL, '2000-01-04', 16, 6200.00, 100, 8);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (192, 'Sarah', 'Bell', 'sarah.bell@sqltutorial.org', '650.501.1876', '1996-02-04', 17, 4000.00, 123, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (193, 'Britney', 'Everett', 'britney.everett@sqltutorial.org', '650.501.2876', '1997-03-03', 17, 3900.00, 123, 5);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (200, 'Jennifer', 'Whalen', 'jennifer.whalen@sqltutorial.org', '515.123.4444', '1987-09-17', 3, 4400.00, 101, 1);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (201, 'Michael', 'Hartstein', 'michael.hartstein@sqltutorial.org', '515.123.5555', '1996-02-17', 10, 13000.00, 100, 2);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (202, 'Pat', 'Fay', 'pat.fay@sqltutorial.org', '603.123.6666', '1997-08-17', 11, 6000.00, 201, 2);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (203, 'Susan', 'Mavris', 'susan.mavris@sqltutorial.org', '515.123.7777', '1994-06-07', 8, 6500.00, 101, 4);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (204, 'Hermann', 'Baer', 'hermann.baer@sqltutorial.org', '515.123.8888', '1994-06-07', 12, 10000.00, 101, 7);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (205, 'Shelley', 'Higgins', 'shelley.higgins@sqltutorial.org', '515.123.8080', '1994-06-07', 2, 12000.00, 101, 11);
INSERT INTO public.t_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES (206, 'William', 'Gietz', 'william.gietz@sqltutorial.org', '515.123.8181', '1994-06-07', 1, 8300.00, 205, 11);


--
-- TOC entry 2864 (class 0 OID 92118)
-- Dependencies: 207
-- Data for Name: t_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (1, 'Public Accountant', 4200.00, 9000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (2, 'Accounting Manager', 8200.00, 16000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (3, 'Administration Assistant', 3000.00, 6000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (4, 'President', 20000.00, 40000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (5, 'Administration Vice President', 15000.00, 30000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (6, 'Accountant', 4200.00, 9000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (7, 'Finance Manager', 8200.00, 16000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (8, 'Human Resources Representative', 4000.00, 9000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (9, 'Programmer', 4000.00, 10000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (10, 'Marketing Manager', 9000.00, 15000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (11, 'Marketing Representative', 4000.00, 9000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (12, 'Public Relations Representative', 4500.00, 10500.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (13, 'Purchasing Clerk', 2500.00, 5500.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (14, 'Purchasing Manager', 8000.00, 15000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (15, 'Sales Manager', 10000.00, 20000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (16, 'Sales Representative', 6000.00, 12000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (17, 'Shipping Clerk', 2500.00, 5500.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (18, 'Stock Clerk', 2000.00, 5000.00);
INSERT INTO public.t_jobs (job_id, job_title, min_salary, max_salary) VALUES (19, 'Stock Manager', 5500.00, 8500.00);


--
-- TOC entry 2861 (class 0 OID 92096)
-- Dependencies: 204
-- Data for Name: t_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2400, '8204 Arthur St', NULL, 'London', NULL, 'UK');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO public.t_locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');


--
-- TOC entry 2859 (class 0 OID 92081)
-- Dependencies: 202
-- Data for Name: t_regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t_regions (region_id, region_name) VALUES (1, 'Europe');
INSERT INTO public.t_regions (region_id, region_name) VALUES (2, 'Americas');
INSERT INTO public.t_regions (region_id, region_name) VALUES (3, 'Asia');
INSERT INTO public.t_regions (region_id, region_name) VALUES (4, 'Middle East and Africa');


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 206
-- Name: t_jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t_jobs_job_id_seq', 1, false);


--
-- TOC entry 2715 (class 2606 OID 92090)
-- Name: t_countries t_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_countries
    ADD CONSTRAINT t_countries_pkey PRIMARY KEY (country_id);


--
-- TOC entry 2719 (class 2606 OID 92110)
-- Name: t_departments t_departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_departments
    ADD CONSTRAINT t_departments_pkey PRIMARY KEY (department_id);


--
-- TOC entry 2725 (class 2606 OID 92148)
-- Name: t_dependents t_dependents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_dependents
    ADD CONSTRAINT t_dependents_pkey PRIMARY KEY (dependent_id);


--
-- TOC entry 2723 (class 2606 OID 92128)
-- Name: t_employees t_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_employees
    ADD CONSTRAINT t_employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2721 (class 2606 OID 92123)
-- Name: t_jobs t_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_jobs
    ADD CONSTRAINT t_jobs_pkey PRIMARY KEY (job_id);


--
-- TOC entry 2717 (class 2606 OID 92100)
-- Name: t_locations t_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_locations
    ADD CONSTRAINT t_locations_pkey PRIMARY KEY (location_id);


--
-- TOC entry 2713 (class 2606 OID 92085)
-- Name: t_regions t_regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_regions
    ADD CONSTRAINT t_regions_pkey PRIMARY KEY (region_id);


--
-- TOC entry 2726 (class 2606 OID 92091)
-- Name: t_countries t_countries_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_countries
    ADD CONSTRAINT t_countries_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.t_regions(region_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2728 (class 2606 OID 92111)
-- Name: t_departments t_departments_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_departments
    ADD CONSTRAINT t_departments_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.t_locations(location_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2732 (class 2606 OID 92149)
-- Name: t_dependents t_dependents_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_dependents
    ADD CONSTRAINT t_dependents_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.t_employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2730 (class 2606 OID 92134)
-- Name: t_employees t_employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_employees
    ADD CONSTRAINT t_employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.t_departments(department_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2729 (class 2606 OID 92129)
-- Name: t_employees t_employees_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_employees
    ADD CONSTRAINT t_employees_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.t_jobs(job_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2731 (class 2606 OID 92139)
-- Name: t_employees t_employees_manager_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_employees
    ADD CONSTRAINT t_employees_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.t_employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2727 (class 2606 OID 92101)
-- Name: t_locations t_locations_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t_locations
    ADD CONSTRAINT t_locations_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.t_countries(country_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2022-06-17 14:47:02

--
-- PostgreSQL database dump complete
--

