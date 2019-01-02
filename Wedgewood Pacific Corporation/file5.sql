CREATE VIEW projecthourstodate AS
    SELECT 
        project.projectid,
        projectname,
        maxhours AS ProjectMaxHours,
        SUM(hoursworked) AS ProjectHoursWorkedToDate
    FROM
        Project,
        assignment
    WHERE
        Project.projectID = assignment.ProjectID
    GROUP BY Project.ProjectID;