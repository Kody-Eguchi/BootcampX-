SELECT day, COUNT(assignments.*) AS total_assignment
FROM assignments
GROUP BY day
ORDER BY day;