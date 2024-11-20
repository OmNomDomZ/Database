-- 1 
SELECT 
    c.country_id AS "ID страны", 
    c.country_name AS "Название страны", 
    COUNT(d.department_id) AS "Количество подразделений" 
FROM countries c 
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
GROUP BY c.country_id, country_name
ORDER BY c.country_id;

-- 2 
SELECT 
    c.country_name AS "Название страны", 
    COUNT(DISTINCT e.employee_id) AS "Количество менеджеров"
FROM countries c
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON d.department_id = e.department_id
JOIN employees sub ON e.employee_id = sub.manager_id
WHERE c.country_name = 'United Kingdom'
GROUP BY c.country_name;

-- 3
SELECT 
    r.region_name AS "Имя региона", 
    COUNT(e.employee_id) AS "Количество работников"
FROM regions r
JOIN countries c ON r.region_id = c.region_id
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON d.department_id = e.department_id
WHERE r.region_name = 'Europe'
GROUP BY r.region_name;

-- 4 
SELECT 
    r.region_name AS "Имя региона", 
    AVG(e.salary) AS "Средняя зарплата"
FROM regions r
JOIN countries c ON r.region_id = c.region_id
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON d.department_id = e.department_id
WHERE r.region_name = 'Europe'
GROUP BY r.region_name;

-- 5
SELECT 
    c.country_name AS "Название страны", 
    SUM(e.salary) AS "Сумма"
FROM countries c
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON d.department_id = e.department_id
WHERE c.country_name = 'United Kingdom'
GROUP BY c.country_name;

-- 6
WITH DepartmentCounts AS (
    SELECT 
        d.department_id,
        d.department_name,
        COUNT(e.employee_id) AS employee_count
    FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_id, d.department_name
),
MaxEmployeeCount AS (
    SELECT MAX(employee_count) AS max_count
    FROM DepartmentCounts
)
SELECT 
    dc.department_id AS "ID отдела",
    dc.department_name AS "Название отдела"
FROM DepartmentCounts dc
JOIN MaxEmployeeCount mec ON dc.employee_count = mec.max_count
ORDER BY dc.department_name DESC;

-- 7 
SELECT
    l.street_address AS "Адрес"
FROM locations l
WHERE l.city = 'Tokyo'
ORDER BY l.street_address;

-- 8
WITH Posts AS (
    SELECT
        d.department_name,
        j.job_title,
        COUNT(e.employee_id) AS employee_count
    FROM jobs j
    JOIN employees e ON e.job_id = j.job_id
    JOIN departments d ON e.department_id = d.department_id
    GROUP BY d.department_id, d.department_name, j.job_title
)
SELECT
    p.department_name AS "Название отдела", 
    p.job_title AS "Название должности"
FROM Posts p
WHERE p.employee_count = 1
ORDER BY p.department_name, p.job_title;

--9 
WITH Manager AS (
    SELECT
        d.department_id, 
        e.manager_id
    FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    JOIN employees sub ON e.employee_id = sub.manager_id
    GROUP BY d.department_id, e.manager_id
)
SELECT 
    m.department_id AS "ID подразделения",
    COUNT(DISTINCT m.manager_id) AS "Количество менеджеров"
FROM Manager m
GROUP BY m.department_id
ORDER BY "Количество менеджеров";

-- 10
SELECT 
    d.department_id AS "ID отдела", 
    d.department_name AS "Название отдела", 
    COUNT(e.employee_id) AS "Количество работников"
FROM departments d
LEFT JOIN employees e ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name
ORDER BY "Количество работников", "Название отдела";

-- 11 
SELECT 
    j.job_title AS "Название должности"
FROM jobs j 
JOIN employees e ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
JOIN regions r ON c.region_id = r.region_id
WHERE r.region_name = 'Americas'
GROUP BY j.job_title
ORDER BY "Название должности" DESC;

-- 12
SELECT
    j.job_id AS "ID должности", 
    COUNT(e.employee_id) AS "Количество работников"
FROM jobs j
JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_id
ORDER BY "Количество работников";

-- 13
SELECT
    e.employee_id AS "ID работника"
FROM employees e 
JOIN job_history jh ON jh.employee_id = e.employee_id
GROUP BY e.employee_id
HAVING COUNT(DISTINCT jh.job_id) >= 2
ORDER BY "ID работника";

-- 14
SELECT 
    c.country_id AS "ID страны", 
    SUM(e.salary) AS "Суммарная зарплата"
FROM countries c
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id
JOIN employees e ON d.department_id = e.department_id
GROUP BY c.country_id
ORDER BY "Суммарная зарплата", "ID страны";

-- 15
SELECT DISTINCT
    j.job_id AS "ID должности"
FROM jobs j
JOIN employees e ON j.job_id = e.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
JOIN regions r ON c.region_id = r.region_id
WHERE r.region_name = 'Americas'
ORDER BY "ID должности";
