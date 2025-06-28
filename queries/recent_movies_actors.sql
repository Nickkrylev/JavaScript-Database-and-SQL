SELECT
    m.id AS movie_id,
    m.title,
    COUNT(DISTINCT c.actor_id) AS actors_count
FROM movies m
LEFT JOIN characters c ON c.movie_id = m.id AND c.actor_id IS NOT NULL
WHERE m.release_date >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR)
GROUP BY m.id, m.title
ORDER BY m.release_date DESC;
