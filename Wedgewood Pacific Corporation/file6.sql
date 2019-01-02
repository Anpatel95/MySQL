CREATE VIEW EmployeeprojectHoursWorked AS
    SELECT 
        ProjectName, FirstName, LastName, HoursWorked
    FROM
        employee AS e
            JOIN
        assignment AS a ON e.employeeNumber = a.EmployeeNumber
            JOIN
        Project AS p ON a.projectId = p.projectId;