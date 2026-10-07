
-- Function to retrieve department name by ID.

CREATE OR REPLACE FUNCTION fn_dept_name (
    p_dept_id IN departments.dept_id%TYPE
) RETURN VARCHAR2 IS
    v_dept_name departments.dept_name%TYPE;
BEGIN
    SELECT dept_name
    INTO v_dept_name
    FROM departments
    WHERE dept_id = p_dept_id;

    RETURN v_dept_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Unknown Department';
    WHEN OTHERS THEN
        RAISE;
END fn_dept_name;
/
commit;
