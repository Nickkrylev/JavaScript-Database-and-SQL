SELECT
    m.id,
    m.title,
    m.release_date,
    m.duration,
    m.description,
    JSON_OBJECT('id', f.id, 'file_name', f.file_name, 'mime_type', f.mime_type, 'url', f.url) AS poster,
    JSON_OBJECT('id', d.id, 'first_name', d.first_name, 'last_name', d.last_name) AS director,
    (
        SELECT JSON_OBJECT('id', dp.id, 'first_name', dp.first_name, 'last_name', dp.last_name,
                           'photo', (
                               SELECT JSON_OBJECT('id', pf.id, 'file_name', pf.file_name, 'mime_type', pf.mime_type, 'url', pf.url)
                               FROM person_photos pp
                               JOIN files pf ON pf.id = pp.file_id
                               WHERE pp.person_id = dp.id AND pp.is_primary = TRUE
                               LIMIT 1
                           ))
        FROM persons dp
        WHERE dp.id = d.id
    ) AS director_details,
    (
        SELECT JSON_ARRAYAGG(
            JSON_OBJECT(
                'id', a.id,
                'first_name', a.first_name,
                'last_name', a.last_name,
                'photo', (
                    SELECT JSON_OBJECT('id', af.id, 'file_name', af.file_name, 'mime_type', af.mime_type, 'url', af.url)
                    FROM person_photos ap
                    JOIN files af ON af.id = ap.file_id
                    WHERE ap.person_id = a.id AND ap.is_primary = TRUE
                    LIMIT 1
                )
            )
        )
        FROM characters c
        JOIN persons a ON a.id = c.actor_id
        WHERE c.movie_id = m.id
    ) AS actors,
    (
        SELECT JSON_ARRAYAGG(JSON_OBJECT('id', g.id, 'name', g.name))
        FROM movie_genres mg
        JOIN genres g ON g.id = mg.genre_id
        WHERE mg.movie_id = m.id
    ) AS genres
FROM movies m
LEFT JOIN files f ON f.id = m.poster_id
JOIN persons d ON d.id = m.director_id
WHERE m.id = 1;