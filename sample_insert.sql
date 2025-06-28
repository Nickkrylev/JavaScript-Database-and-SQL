-- Sample data: Countries
INSERT INTO countries (name) VALUES 
('USA'), ('UK'), ('France'), ('Germany'), ('Italy'), ('Spain'), ('Canada'), ('Japan'), ('India'), ('Australia');

-- Sample data: Files
INSERT INTO files (file_name, mime_type, storage_key, url) VALUES
('avatar1.jpg', 'image/jpeg', 'avatars/avatar1.jpg', 'https://cdn.example.com/avatars/avatar1.jpg'),
('avatar2.jpg', 'image/jpeg', 'avatars/avatar2.jpg', 'https://cdn.example.com/avatars/avatar2.jpg'),
('poster1.jpg', 'image/jpeg', 'posters/poster1.jpg', 'https://cdn.example.com/posters/poster1.jpg'),
('poster2.jpg', 'image/jpeg', 'posters/poster2.jpg', 'https://cdn.example.com/posters/poster2.jpg'),
('photo1.jpg', 'image/jpeg', 'photos/photo1.jpg', 'https://cdn.example.com/photos/photo1.jpg'),
('photo2.jpg', 'image/jpeg', 'photos/photo2.jpg', 'https://cdn.example.com/photos/photo2.jpg'),
('photo3.jpg', 'image/jpeg', 'photos/photo3.jpg', 'https://cdn.example.com/photos/photo3.jpg'),
('poster3.jpg', 'image/jpeg', 'posters/poster3.jpg', 'https://cdn.example.com/posters/poster3.jpg'),
('poster4.jpg', 'image/jpeg', 'posters/poster4.jpg', 'https://cdn.example.com/posters/poster4.jpg'),
('poster5.jpg', 'image/jpeg', 'posters/poster5.jpg', 'https://cdn.example.com/posters/poster5.jpg');

-- Sample data: Users
INSERT INTO users (username, first_name, last_name, email, password, avatar_id) VALUES
('john_doe', 'John', 'Doe', 'john@example.com', 'hashedpass', 1),
('alice_smith', 'Alice', 'Smith', 'alice@example.com', 'hashedpass', 2),
('bob_jones', 'Bob', 'Jones', 'bob@example.com', 'hashedpass', 1),
('emily_white', 'Emily', 'White', 'emily@example.com', 'hashedpass', 2),
('michael_brown', 'Michael', 'Brown', 'michael@example.com', 'hashedpass', 1),
('sarah_green', 'Sarah', 'Green', 'sarah@example.com', 'hashedpass', 2),
('david_black', 'David', 'Black', 'david@example.com', 'hashedpass', 1),
('emma_young', 'Emma', 'Young', 'emma@example.com', 'hashedpass', 2),
('will_gray', 'Will', 'Gray', 'will@example.com', 'hashedpass', 1),
('lucy_hall', 'Lucy', 'Hall', 'lucy@example.com', 'hashedpass', 2);

-- Sample data: Genres
INSERT INTO genres (name) VALUES
('Action'), ('Drama'), ('Comedy'), ('Sci-Fi'), ('Horror'), ('Romance'), ('Adventure'), ('Fantasy'), ('Thriller'), ('Documentary');

-- Sample data: Persons
INSERT INTO persons (first_name, last_name, biography, date_of_birth, gender, country_id) VALUES
('Steven', 'Spielberg', 'Famous director', '1946-12-18', 'male', 1),
('Emma', 'Watson', 'British actress', '1990-04-15', 'female', 2),
('Tom', 'Hanks', 'American actor', '1956-07-09', 'male', 1),
('Natalie', 'Portman', 'Actress', '1981-06-09', 'female', 3),
('Leonardo', 'DiCaprio', 'Actor', '1974-11-11', 'male', 1),
('Kate', 'Winslet', 'Actress', '1975-10-05', 'female', 2),
('Christopher', 'Nolan', 'Director', '1970-07-30', 'male', 2),
('Robert', 'Downey Jr.', 'Actor', '1965-04-04', 'male', 1),
('Scarlett', 'Johansson', 'Actress', '1984-11-22', 'female', 1),
('James', 'Cameron', 'Director', '1954-08-16', 'male', 1);

-- Sample data: Person Photos
INSERT INTO person_photos (person_id, file_id, is_primary) VALUES
(1, 5, TRUE), (2, 6, TRUE), (3, 5, TRUE), (4, 6, TRUE), (5, 5, TRUE),
(6, 6, TRUE), (7, 5, TRUE), (8, 6, TRUE), (9, 5, TRUE), (10, 6, TRUE);

-- Sample data: Movies
INSERT INTO movies (title, description, budget, release_date, duration, country_id, director_id, poster_id) VALUES
('Epic Adventure', 'A grand story of discovery', 150000000, '2023-05-20', 140, 1, 1, 3),
('Romantic Getaway', 'Love story in Paris', 50000000, '2021-02-14', 115, 3, 10, 4),
('The Future War', 'Sci-fi action epic', 200000000, '2022-11-11', 155, 1, 7, 5),
('Ghost Night', 'A haunted house horror', 30000000, '2020-10-31', 100, 2, 10, 6),
('Deep Blue', 'Ocean documentary', 10000000, '2023-07-01', 90, 4, 10, 7),
('City of Crime', 'Thrilling urban drama', 60000000, '2024-03-10', 130, 5, 7, 8),
('Laugh Out Loud', 'Comedy of the year', 25000000, '2022-06-15', 105, 2, 1, 9),
('The Dragon Realm', 'Epic fantasy tale', 180000000, '2023-12-18', 145, 6, 7, 10),
('Behind the Mask', 'Psychological thriller', 40000000, '2021-09-30', 125, 7, 1, 4),
('Space Oddity', 'Sci-fi exploration movie', 220000000, '2025-01-01', 160, 8, 7, 5);

-- Sample data: Movie Genres
INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 1), (1, 7), (2, 6), (3, 1), (3, 4), (4, 5), (5, 10), (6, 2), (7, 3), (8, 8), (9, 9), (10, 4);

-- Sample data: Characters
INSERT INTO characters (name, description, role, movie_id, actor_id) VALUES
('Adventurer', 'The main hero of the quest', 'leading', 1, 5),
('Lover', 'Main character in romantic plot', 'leading', 2, 6),
('Commander X', 'Warrior from the future', 'leading', 3, 8),
('Ghost', 'Terrifying entity', 'supporting', 4, 9),
('Narrator', 'Voice of the ocean', 'background', 5, NULL),
('Detective', 'Main investigator', 'leading', 6, 3),
('Comedian', 'Comic relief', 'supporting', 7, 4),
('Knight', 'Dragon realm protector', 'leading', 8, 5),
('Suspect', 'Mystery character', 'supporting', 9, 2),
('Captain Z', 'Space explorer', 'leading', 10, 8);

-- Sample data: Favorite Movies
INSERT INTO favorite_movies (user_id, movie_id) VALUES
(1, 1), (1, 3), (2, 2), (2, 4), (3, 5), (4, 6), (5, 7), (6, 8), (7, 9), (8, 10);
