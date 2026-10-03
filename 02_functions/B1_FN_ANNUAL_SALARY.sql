--Q2 FUNCTION/B1_ANNUAL_SALARY
--FUNCTION TO COMPUTE ANNUAL SALARY
create or replace function  fn_annual_salary(
p_emp_id in employees.emp_id%TYPE)
return number is
v_annual_salary number(10, 2);
v_salary employees.salary%TYPE;
v_comm employeeS.commission_pct%TYPE;
begin
select salary,NVL(commission_pct, 0)
into v_salary,v_comm from employees
where emp_id=p_emp_id;

 v_annual_salary :=(v_salary * 12) + (v_salary * 12 * v_comm);
 return v_annual_salary;
exception
  when no_data_found then
  return null;
  
  when others then
  raise;
  end fn_annual_salary;
  /
  
