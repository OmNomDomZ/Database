-- 1
WITH Managers AS (
    SELECT 
        DISTINCT e.employee_id AS manager_id,
        e.hire_date
    FROM employees e
    JOIN employees sub ON sub.manager_id = e.employee_id
),
MaxHireDate AS (
    SELECT 
        MAX(hire_date) AS max_hire_date
    FROM Managers
)
SELECT 
    manager_id AS "ID менеджера",
    hire_date AS "Hire_date"
FROM Managers
WHERE hire_date = (SELECT max_hire_date FROM MaxHireDate)
ORDER BY manager_id;

-- 2
with avgSalary as (
    select 
        d.department_id as department,
        AVG(e.salary) as avg_salary
    from employees e
    join departments d on e.department_id = d.department_id
    group by d.department_id
),
richEmployees as (
    select
        e.employee_id as employee_id,
        e.last_name as last_name, 
        e.salary as salary, 
        e.department_id as department_id
    from employees e 
    join avgSalary a on e.department_id = a.department
    where e.salary > a.avg_salary
)
select 
    employee_id as "идентификатор сотрудника",
    last_name as "фамилия сотрудника",
    salary as "оклад",
    department_id as "идентификатор подразделения"
from richEmployees
order by department_id, salary, last_name;

-- 3
with minDepartmentSalary as (
    select 
        d.department_id as department,
        MIN(e.salary) as avg_salary
    from employees e
    join departments d on e.department_id = d.department_id
    group by d.department_id
),
poorEmployess as (
    select
        e.employee_id as employee_id,
        e.last_name as last_name, 
        e.salary as salary, 
        e.department_id as department_id
    from employees e 
    join minDepartmentSalary m on e.department_id = m.department
    where e.salary = m.avg_salary
) 
select 
    employee_id as "идентификатор сотрудника",
    last_name as "фамилия сотрудника",
    salary as "оклад",
    department_id as "идентификатор подразделения"
from poorEmployess
order by department_id, salary, last_name;

-- 4
with EuropeManagers as (
    select
        distinct e.employee_id as manager_id,
        count(sub.manager_id) as subordinate_count
    from employees e
    join employees sub on e.employee_id = sub.manager_id
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
    join regions r on c.region_id = r.region_id
    where r.region_name = 'Europe'
    group by e.employee_id 
), 
MaxSubordinateCount as (
    select 
        MAX(eu.subordinate_count) as max_subordinate_count
    from EuropeManagers eu
),
TopEuropeManagers as (
    select
        eu.manager_id as manager_id
    from EuropeManagers eu
    join MaxSubordinateCount msc on eu.subordinate_count = msc.max_subordinate_count
),
AvgSalaryTopManagers as (
    select
        AVG(e.salary) as avg_top_salary
    from employees e
    join TopEuropeManagers tem on e.employee_id = tem.manager_id
) 
select
    e.last_name as "Фамилия сотрудника",
    e.first_name as "Имя сотрудника",
    e.salary as "зарплата"
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id
join regions r on c.region_id = r.region_id
cross join AvgSalaryTopManagers astm
where r.region_name = 'Americas' and
    e.salary > astm.avg_top_salary
order by e.last_name, e.first_name;

-- 5
create or replace function calculate_percentage(part numeric, total numeric)
returns numeric as $$
begin 
	if total = 0 then 
		return 0;
	end if;

	return round((part / total) * 100, 2); 
end;
$$ LANGUAGE plpgsql;

with TotalSalaryAllEmployees as (
	select 
    	SUM(e.salary) as total_salary
    from employees e
), 
TotalDepartmentsSalary as (
	select 
		d.department_id as department_id, 
		COALESCE(SUM(e.salary), 0) as total_department_salary
	from employees e
    full join departments d on e.department_id = d.department_id
	group by d.department_id
)
select 
	tds.department_id as "идентификатор подразделения компании", 
	tds.total_department_salary as "сумма окладов сотрудников подразделения компании", 
	calculate_percentage(tds.total_department_salary, tsa.total_salary) as "процент"
from TotalDepartmentsSalary tds
cross join TotalSalaryAllEmployees tsa
order by "процент" desc;

-- 6
create or replace function calculate_percentage(part numeric, total numeric)
returns numeric as $$
begin 
	if total = 0 then 
		return 0;
	end if;

	return round((part / total) * 100, 2); 
end;
$$ LANGUAGE plpgsql;

with AvgCompanySalary as (
	select 
    	AVG(e.salary) as avg_company_salary
    from employees e
), 
AvgDepartmentsSalary as (
	select 
		d.department_id as department_id, 
		coalesce(AVG(e.salary), 0) as avg_department_salary
	from departments d
    full join employees e on d.department_id = e.department_id
	group by d.department_id
)
select 
	ads.department_id as "идентификатор подразделения компании", 
	ads.avg_department_salary as "средняя зарплата по подразделению", 
	calculate_percentage(ads.avg_department_salary, aca.avg_company_salary) as "процент"
from AvgDepartmentsSalary ads
cross join AvgCompanySalary aca
order by ads.department_id, ads.avg_department_salary, "процент" desc;

-- 7 
select 
    e.first_name as "Имя", 
    count(e.first_name) as "Количество работников"
from employees e 
group by e.first_name
order by "Количество работников", "Имя";

-- 8
with AmericasDepartments as (
    select
        d.department_id as department_id,
        d.department_name as department_name
    from departments d
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
    join regions r on c.region_id = r.region_id
    where r.region_name = 'Americas'
),
LVL1 as (
    select
        e.employee_id as lvl1_employee,
        e.department_id as department_id
    from employees e
    where e.manager_id IS NULL
),
LVL2 as (
    select
        e.employee_id as lvl2_employee,
        e.department_id as department_id
    from employees e
    join LVL1 on LVL1.lvl1_employee = e.manager_id
),
LVL3 as (
    select
        e.employee_id as lvl3_employee,
        e.department_id as department_id
    from employees e
    join LVL2 on LVL2.lvl2_employee = e.manager_id
)
select 
    ad.department_name as "Название отдела",
    coalesce(count(distinct LVL1.lvl1_employee), 0) as "Количество I уровня",
    coalesce(count(distinct LVL2.lvl2_employee), 0) as "Количество II уровня",
    coalesce(count(distinct LVL3.lvl3_employee), 0) as "Количество III уровня"
from AmericasDepartments ad
left join LVL1 on ad.department_id = LVL1.department_id
left join LVL2 on ad.department_id = LVL2.department_id
left join LVL3 on ad.department_id = LVL3.department_id
group by ad.department_name
order by ad.department_name;

-- 9
with AvgAmericasSalary as (
    select
        AVG(e.salary) as avg_salary
    from employees e 
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
    join regions r on c.region_id = r.region_id
    where r.region_name = 'Americas'
), 
DepartmentSalary as (
    select
        d.department_name,
        MIN(e.salary) as min_salary
    from departments d
    join employees e on d.department_id = e.department_id
    group by d.department_id
)
select
    ds.department_name as "Название отдела"
from DepartmentSalary ds 
cross join AvgAmericasSalary aas 
where ds.min_salary > aas.avg_salary
order by ds.department_name;

-- 10
with NumEmployees as (
    select  
        d.department_id, 
        count(e.employee_id) as count_employees
    from departments d
    join employees e on d.department_id = e.department_id
    group by d.department_id
),
MinNumEmployees as (
    select 
        MIN(ne.count_employees) as min_num_employees
    from NumEmployees ne
)
select 
    ne.department_id as "Номер отдела", 
    SUM(e.salary) as "общая сумма зарплаты"
from NumEmployees ne
join MinNumEmployees mne on ne.count_employees = mne.min_num_employees
join employees e on ne.department_id = e.department_id
group by ne.department_id
order by ne.department_id;

-- 11
select 
    e.last_name as "Фамилия", 
    count(e.last_name) as "Количество работников"
from employees e 
group by e.last_name
having count(e.last_name) > 1
order by e.last_name;

-- 12
with CountCountryDepartments as (
    select
        c.country_id, 
        count(d.department_id) as count_departments
    from countries c 
    join locations l on c.country_id = l.country_id
    join departments d on l.location_id = d.location_id
    group by c.country_id 
), 
MaxDepartmentsInCountry as (
    select 
        MAX(ccd.count_departments) as max_count_departments
    from CountCountryDepartments ccd
), 
CountriesWithMaxDepartments as (
    select 
        ccd.country_id
    from CountCountryDepartments ccd
    join MaxDepartmentsInCountry mxic on ccd.count_departments = mxic.max_count_departments
),
MaxSalariesPerCountry as (
    select
        c.country_id, 
        MAX(e.salary) as max_salary
    from employees e 
    join departments d on e.department_id = d.department_id
    join locations l on d.location_id = l.location_id
    join countries c on l.country_id = c.country_id
    where c.country_id in (select country_id from CountriesWithMaxDepartments)
    group by c.country_id
)
select 
    l.country_id as "ID страны",
    e.employee_id as "ID работника"
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join MaxSalariesPerCountry mspc on l.country_id = mspc.country_id and e.salary = mspc.max_salary
order by l.country_id, e.employee_id;
