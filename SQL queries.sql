SELECT hiring_index.date, hiring_index.indeed_job_postings_index_a, hiring_data.date, hiring_data.display_name, (hiring_index.indeed_job_postings_index_a - hiring_data.indeed_job_postings_index) AS hiring_surplus
FROM hiring_index
LEFT JOIN hiring_data
ON hiring_index.date = hiring_data.date
WHERE hiring_index.date='2023-06-02'
ORDER BY hiring_surplus DESC;


