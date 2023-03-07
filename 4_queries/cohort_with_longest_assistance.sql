SELECT x.name AS name, avg(completed_at - started_at) AS average_assistance_time
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts AS x ON x.id = cohort_id 
  GROUP BY x.name
  HAVING avg(completed_at - started_at) > ALL (
    SELECT avg(completed_at - started_at) AS average_assistance_time
      FROM assistance_requests
      JOIN students ON students.id = student_id
      JOIN cohorts AS y ON y.id = cohort_id
      WHERE x.name != y.name
      GROUP BY y.name
  );
  