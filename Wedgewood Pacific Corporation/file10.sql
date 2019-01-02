
SELECT 
    projectId,
    projectname,
    projectMaxhours,
    projecthoursworkedtodate,
    (projecthoursworkedtodate - projectmaxhours) AS hoursovermasallocated
FROM
    projectsoverallocatedmaxhoursview
ORDER BY projectid