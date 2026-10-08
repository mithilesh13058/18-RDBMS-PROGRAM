DROP FUNCTION IF EXISTS CountStudentsByDepartment;

DELIMITER //

CREATE FUNCTION CountStudentsByDepartment(
    p_DepartmentName VARCHAR(100)
)
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE student_count INT DEFAULT 0;

    SELECT COUNT(*)
    INTO student_count
    FROM Student s
    INNER JOIN Course c
        ON s.CourseID = c.CourseID
    INNER JOIN Faculty f
        ON c.FacultyID = f.FacultyID
    INNER JOIN Department d
        ON f.DepartmentID = d.DepartmentID
    WHERE d.DepartmentName = p_DepartmentName;

    RETURN student_count;
END //

DELIMITER ;

SELECT CountStudentsByDepartment('Computer Science') AS TotalStudents;
