SELECT day, count(*) AS number_of_assignment, sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;