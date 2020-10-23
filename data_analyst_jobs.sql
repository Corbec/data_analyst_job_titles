SELECT COUNT(*)
FROM data_analyst_jobs;

-- 1. 1793 rows

SELECT *
FROM data_analyst_jobs
LIMIT 10;

-- 2. ExxonMobil

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';

-- 3a. 21 listings in TN

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE (location = 'TN' OR location = 'KY');

-- 3b. 27 listings in TN or KY

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;

-- 4. 3 listings have > 4 stars

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

-- 5. 151 review counts between 500 and 1000

SELECT location AS state, 
	AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

-- 6. NE has the highest average rating

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;

-- 7. There are 881 distinct job titles

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location = 'CA';

-- 8. There are 230 unique job titles in CA

SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY 1
ORDER BY 2 DESC;

-- 9. 41 companies with > 5000 reviews across all locations
-- 10. General Motors has the highest average stars (tied with 5 others)

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title like '%Analyst%';

-- 11. There are 754 distinct titles with 'Analyst' in the name

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%'
AND title NOT LIKE '%Analytics%';

SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%'
AND title NOT LIKE '%Analytics%';

-- 12a. There are 26 distinct titles that do not have 'Analyst' or 'Analytics' in them
-- 12b. The titles are not capitalized like the query specified

SELECT domain, COUNT(title)
FROM data_analyst_jobs
WHERE skill LIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

/* Bonus- The top 3 industries are Internet and Software, Banks and Financial Services,
and Consulting and Business Services.
Internet and Software - 62 jobs
Banks and Financial Services - 61 jobs
Consulting and Business Services - 57 jobs
Health Care - 52 jobs
*/

