--A2 SARLAER REVIEW.SQL
--SALARY REVIEW ROUTING USING GOTO SQL STATEMENT
 SET SERVEROUTPUT ON;
 DECLARE
 v_salary number :=6500;
 begin
 dbms_output.put_line('reviewing salary :$' || v_salary);
 
 if v_salary<4000 then
 goto low_salary;
 elsif v_salary between 4000 and 10000 then
 goto mid_salary;
 else
 goto high_salary;
 end if;
 
 <<low_salary>>
 dbms_output.put_line('category: entry lever.proposed 10% raise.');
 goto finish_review;
 
 <<mid_salary>>
 dbms_output.put_line('category: mid lever.proposed 5% raise.');
 goto finish_review;
 <<high_salary>>
 dbms_output.put_line('category: high lever.proposed 2% raise.');
 goto finish_review;
 
 <<finish_review>>
 dbms_output.put_line('salary review routing complete');
 end;
 /
 
 