--function to compute income tax based on salary
create or replace function culculate_tax(
p_annual_salary in number)

return number is
v_tax_amount number(10, 2) :=0;
begin
if p_annual_salary<=30000 then
v_tax_amount:= p_annual_salary * 0.05;
elsif p_annual_salary<=70000 then
v_tax_amount :=(30000*0.05) +((p_annual_salary-30000)* 0.15);
ELSE
v_tax_amount :=(30000*0.05) +(40000*0.15) +((p_annual_salary-70000)*0.25);
end if;
return v_tax_amount;
end culculate_tax;
/