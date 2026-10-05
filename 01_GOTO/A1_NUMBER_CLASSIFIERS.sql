--01 goto number classifier 
--A1 NUMBER CLASSFIER .SQL
SET SERVEROUTPUT ON;
DECLARE
V_NUM NUMBER :=-15;
BEGIN
DBMS_OUTPUT.PUT_LINE('CHECHING NUMBER:' || V_NUM);
IF V_NUM>0 THEN
GOTO POSITIVE_BLANCH;

ELSIF V_NUM<0 THEN
GOTO NEGATIVE_BRANCH;
ELSE
GOTO ZERO_BRANCH;
END IF;
<<POSITIVE_BLANCH>>
DBMS_OUTPUT.PUT_LINE('result: the number is positive');
GOTO end_label;

<<NEGATIVE_BRANCH>>
DBMS_OUTPUT.PUT_LINE('result: the number is NEGATIVE');
GOTO end_label;
<<ZERO_BRANCH>>
DBMS_OUTPUT.PUT_LINE('result: the number is ZORO');
GOTO end_label;
<<end_label>>

DBMS_OUTPUT.PUT_LINE('execution completed');

END;
/
