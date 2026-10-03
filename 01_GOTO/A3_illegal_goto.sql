//A3illegal
//demostrate valid flow to avoid illegal using goto jump inner bloacks
set serveroutput on;
declare
v_check boolean :=true;
begin
dbms_output.put_line('starting outer block execution');
if v_check then
goto valid_label;
end if;
 <<valid_label>>
 dbms_output.put_line('reached valid laber in outer block');
 end;
 /
 

