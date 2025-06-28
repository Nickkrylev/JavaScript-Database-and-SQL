SELECT
    u.id AS user_id,
    u.username,
    JSON_ARRAYAGG(fm.movie_id) AS favorite_movie_ids
FROM users u
LEFT JOIN favorite_movies fm ON fm.user_id = u.id
GROUP BY u.id, u.username
ORDER BY u.id;
