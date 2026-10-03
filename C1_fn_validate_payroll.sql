-- C1_fn_validate_payroll.sql
-- Combined task function to validate payroll details.

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id IN employees.emp_id%TYPE
) RETURN VARCHAR2 IS
    v_salary employees.salary%TYPE;
    v_years NUMBER;
    v_status VARCHAR2(100);
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = p_emp_id;
    v_years := fn_years_of_service(p_emp_id);

    IF v_salary < 3000 THEN
        v_status := 'INVALID: Salary below minimum threshold ($3,000)';
    ELSIF v_years IS NULL THEN
        v_status := 'INVALID: Employee record not found';
    ELSE
        v_status := 'VALID: Payroll and service history verified successfully';
    END IF;

    RETURN v_status;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee ID does not exist';
    WHEN OTHERS THEN
        RETURN 'ERROR: Validation failed';
END fn_validate_payroll;
/