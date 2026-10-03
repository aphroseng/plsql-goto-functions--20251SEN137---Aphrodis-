
--function to compute employee years of service
create or replace function fn_years_of_service(
p_emp_id in employees.emp_id%type)
return number is
v_hire_date employees.hire_date%type;
v_years number;
 begin
 select hire_date into v_hire_date
 from employees
 where emp_id=p_emp_id;
 
 v_years:= floor(months_between(sysdate,v_hire_date) /12);
 return v_years;
 
 exception
 
 when no_data_found then
 return null;
  when others then 
  raise;
  end fn_years_of_service;
  /