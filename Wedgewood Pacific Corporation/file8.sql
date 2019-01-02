CREATE VIEW projectsoverallocatedmaxhoursview AS
    SELECT 
        projectId, projectname, projectMaxhours, projecthoursworkedtodate
    FROM
        projecthourstodate
    WHERE
        projecthoursworkedtodate > projectmaxhours