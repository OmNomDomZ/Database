-- Таблица jobs
CREATE TABLE public.jobs (
    job_id varchar(10) NOT NULL,
    job_title varchar(35) NOT NULL,
    min_salary numeric(6) NULL,
    max_salary numeric(6) NULL,
    CONSTRAINT job_id_pk PRIMARY KEY (job_id),
    CONSTRAINT job_title_nn CHECK (job_title IS NOT NULL)
);

-- Таблица regions
CREATE TABLE public.regions (
    region_id numeric NOT NULL,
    region_name varchar(25) NULL,
    CONSTRAINT reg_id_pk PRIMARY KEY (region_id)
);

-- Таблица countries
CREATE TABLE public.countries (
    country_id char(2) NOT NULL,
    country_name varchar(40) NULL,
    region_id numeric NULL,
    CONSTRAINT country_c_id_pk PRIMARY KEY (country_id)
);

-- Таблица locations
CREATE TABLE public.locations (
    location_id numeric(4) NOT NULL,
    street_address varchar(40) NULL,
    postal_code varchar(12) NULL,
    city varchar(30) NOT NULL,
    state_province varchar(25) NULL,
    country_id char(2) NULL,
    CONSTRAINT loc_id_pk PRIMARY KEY (location_id)
);

-- Таблица departments
CREATE TABLE public.departments (
    department_id numeric(4) NOT NULL,
    department_name varchar(30) NOT NULL,
    manager_id numeric(6) NULL,
    location_id numeric(4) NULL,
    CONSTRAINT dept_id_pk PRIMARY KEY (department_id)
);

-- Таблица employees
CREATE TABLE public.employees (
    employee_id numeric(6) NOT NULL,
    first_name varchar(20) NULL,
    last_name varchar(25) NOT NULL,
    email varchar(25) NOT NULL,
    phone_number varchar(20) NULL,
    hire_date date NOT NULL,
    job_id varchar(10) NOT NULL,
    salary numeric(8, 2) NULL,
    commission_pct numeric(2, 2) NULL,
    manager_id numeric(6) NULL,
    department_id numeric(4) NULL,
    CONSTRAINT emp_email_uk UNIQUE (email),
    CONSTRAINT emp_emp_id_pk PRIMARY KEY (employee_id),
    CONSTRAINT emp_salary_min CHECK (salary > 0)
);

-- Таблица job_history
CREATE TABLE public.job_history (
    employee_id numeric(6) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id varchar(10) NOT NULL,
    department_id numeric(4) NULL,
    CONSTRAINT jhist_date_interval CHECK (end_date > start_date),
    CONSTRAINT jhist_emp_id_st_date_pk PRIMARY KEY (employee_id, start_date)
);
