-- Test file for Question 18

SET SERVEROUTPUT ON;

DECLARE
    v_Result NUMBER;
BEGIN
    v_Result := CountStudentsByDepartment(101);

    IF v_Result = 2 THEN
        DBMS_OUTPUT.PUT_LINE('TEST PASSED');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TEST FAILED');
    END IF;
END;
/

DECLARE
    v_Result NUMBER;
BEGIN
    v_Result := CountStudentsByDepartment(102);

    IF v_Result = 1 THEN
        DBMS_OUTPUT.PUT_LINE('TEST PASSED');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TEST FAILED');
    END IF;
END;
/

DECLARE
    v_Result NUMBER;
BEGIN
    v_Result := CountStudentsByDepartment(999);

    IF v_Result = 0 THEN
        DBMS_OUTPUT.PUT_LINE('TEST PASSED');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TEST FAILED');
    END IF;
END;
/
