SELECT
    p.id AS actor_id,
    p.first_name,
    p.last_name,
    COALESCE(SUM(m.budget), 0) AS total_movies_budget
FROM persons p
JOIN characters c ON c.actor_id = p.id
JOIN movies m ON c.movie_id = m.id
GROUP BY p.id, p.first_name, p.last_name
ORDER BY total_movies_budget DESC;