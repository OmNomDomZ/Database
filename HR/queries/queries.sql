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
 
