//A4_rewrite_no_goto
//rewriteing  goto logig /structured condition
set serveroutput on;
declare
v_score number :=85;
begin
dbms_output.put_line('processing score' || v_score);
if v_score>=90 then
dbms_output.put_line('GARDE :A EXCELLENT ');
elsif v_score>=80 then  dbms_output.put_line('GRADE :B-- GOOG ');
elsif v_score>=70 then
dbms_output.put_line('GRARDE :C -- SATSIFACTORY ');

ELSIF v_score>=50
then dbms_output.put_line('GRADE :D NOT BUD ');
ELSE
dbms_output.put_line('GRADE F: FAIL YOU NEED TO IMPROVE YOUR KNOWLEDGE ');
END IF;
dbms_output.put_line('EVALUATION FINISHED SUCESSFULL ');
END;
/
