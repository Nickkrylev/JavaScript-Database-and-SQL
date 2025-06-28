SELECT
    m.id,
    m.title,
    m.release_date,
    m.duration,
    m.description,
    JSON_OBJECT('id', f.id, 'file_name', f.file_name, 'mime_type', f.mime_type, 'url', f.url) AS poster,
    JSON_OBJECT('id', p.id, 'first_name', p.first_name, 'last_name', p.last_name) AS director
FROM movies m
JOIN persons p ON m.director_id = p.id
LEFT JOIN files f ON m.poster_id = f.id
JOIN movie_genres mg ON mg.movie_id = m.id
JOIN genres g ON mg.genre_id = g.id
WHERE m.country_id = 1
  AND m.release_date >= '2022-01-01'
  AND m.duration > 135
  AND g.name IN ('Action', 'Drama')
GROUP BY m.id
ORDER BY m.release_date DESC;