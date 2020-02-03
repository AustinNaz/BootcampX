SELECT cohorts.name as cohort_name, count(*) as student_count
FROM cohorts JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY count(*);