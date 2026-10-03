-- Executing custom functions within a SELECT query.

SET SERVEROUTPUT ON;

SELECT 
    emp_id,
    first_name || ' ' || last_name AS full_name,
    salary AS monthly_salary,
    fn_annual_salary(emp_id) AS annual_salary,
    fn_years_of_service(emp_id) AS years_of_service,
    fn_calculate_tax(fn_annual_salary(emp_id)) AS estimated_tax,
    fn_dept_name(dept_id) AS department_name
FROM 
    employees;
/
