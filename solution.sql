-- Question 18:
-- Write a PL/SQL function to count the number of students
-- available in a particular department.

SET SERVEROUTPUT ON;

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(20) NOT NULL,
    DOB DATE,
    Gender VARCHAR2(10),
    DepartmentID NUMBER(5)
);

INSERT INTO Student VALUES
(1001, 'Arun', DATE '2005-06-15', 'Male', 101);

INSERT INTO Student VALUES
(1002, 'Divya', DATE '2005-08-20', 'Female', 102);

INSERT INTO Student VALUES
(1003, 'Karthik', DATE '2004-11-10', 'Male', 101);

INSERT INTO Student VALUES
(1004, 'Nisha', DATE '2005-03-25', 'Female', 103);

COMMIT;

CREATE OR REPLACE FUNCTION CountStudentsByDepartment (
    p_DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_Count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_Count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN v_Count;
END;
/

DECLARE
    v_Result NUMBER;
BEGIN
    v_Result := CountStudentsByDepartment(101);

    DBMS_OUTPUT.PUT_LINE(
        'Number of students in Department 101: ' || v_Result
    );
END;
/
