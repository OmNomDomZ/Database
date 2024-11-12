-- Таблица countries
ALTER TABLE public.countries 
ADD CONSTRAINT countr_reg_fk FOREIGN KEY (region_id) REFERENCES public.regions(region_id);

-- Таблица locations
ALTER TABLE public.locations 
ADD CONSTRAINT loc_c_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(country_id);

-- Таблица departments
ALTER TABLE public.departments 
ADD CONSTRAINT dept_loc_fk FOREIGN KEY (location_id) REFERENCES public.locations(location_id);
ALTER TABLE public.departments 
ADD CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id) REFERENCES public.employees(employee_id);

-- Таблица employees
ALTER TABLE public.employees 
ADD CONSTRAINT emp_dept_fk FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
ALTER TABLE public.employees 
ADD CONSTRAINT emp_job_fk FOREIGN KEY (job_id) REFERENCES public.jobs(job_id);
ALTER TABLE public.employees 
ADD CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id) REFERENCES public.employees(employee_id);

-- Таблица job_history
ALTER TABLE public.job_history 
ADD CONSTRAINT jhist_emp_fk FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
ALTER TABLE public.job_history 
ADD CONSTRAINT jhist_job_fk FOREIGN KEY (job_id) REFERENCES public.jobs(job_id);
ALTER TABLE public.job_history 
ADD CONSTRAINT jhist_dept_fk FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
