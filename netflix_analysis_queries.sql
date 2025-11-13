
-- 1. Content Mix: Movies vs TV Shows
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;

-- 2. Top 10 Directors with Most Content
SELECT director, COUNT(*) AS count
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY count DESC
LIMIT 10;

-- 3. New Titles Added per Year (by type)
SELECT YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS year_added,
       type,
       COUNT(*) AS count
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added, type
ORDER BY year_added;

-- 4. Rating Distribution

SELECT rating, COUNT(*) AS count
FROM netflix
where rating IS NOT NULL
 AND rating NOT LIKE '%min%'
 AND rating !=''
GROUP BY rating
ORDER BY count DESC;

-- 5. Top 10 Genres (based on 'listed_in' field)
SELECT listed_in, COUNT(*) AS count
FROM netflix_titles
GROUP BY listed_in
ORDER BY count DESC
LIMIT 10;

-- 6. Content Distribution by Country (Top 10)
SELECT country, COUNT(*) AS count
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY count DESC
LIMIT 10;



