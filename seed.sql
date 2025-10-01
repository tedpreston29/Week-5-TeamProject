CREATE TABLE movieData (
  movieID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  filmName TEXT,
  mood TEXT,
  imgSrc TEXT, 
  ratingPostive INT,
  ratingNegative INT 

);

INSERT INTO movieData (filmName, mood, imgSrc, ratingPostive, ratingNegative) VALUES
('The Lego Movie', 'happy', 'https://image.tmdb.org/t/p/w500/4V9WO0dGR6hh2O0i1XKdP1j5Sdf.jpg', 95, 5),
('Paddington 2', 'happy', 'https://image.tmdb.org/t/p/w500/q6K0QF1P0QpI6s2xO4o7S8B8QzU.jpg', 98, 2),

('The Green Mile', 'sad', 'https://image.tmdb.org/t/p/w500/velWPhVMQeQKcxggNEU8YmIo52R.jpg', 90, 10),
('Schindler''s List', 'sad', 'https://image.tmdb.org/t/p/w500/c8Ass7acuOe4za6DhSattE359gr.jpg', 97, 3),

('Indiana Jones: Raiders of the Lost Ark', 'adventurous', 'https://image.tmdb.org/t/p/w500/mqsy3GJeXZ7w3U2bA3gnN7K3Abc.jpg', 94, 6),
('The Lord of the Rings: The Fellowship of the Ring', 'adventurous', 'https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg', 96, 4),

('The Conjuring', 'frightening', 'https://image.tmdb.org/t/p/w500/4z7z9FtrzKuG5qjcG5K9H7XgD5v.jpg', 85, 15),
('A Nightmare on Elm Street', 'frightening', 'https://image.tmdb.org/t/p/w500/9XTcJzq7dt0dcxK8MKVmj3F76bF.jpg', 80, 20),

('Inception', 'thrilling', 'https://image.tmdb.org/t/p/w500/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg', 92, 8),
('Se7en', 'thrilling', 'https://image.tmdb.org/t/p/w500/69Sns8WoET6CfaYlIkHbla4l7nC.jpg', 89, 11);


SELECT * FROM movieData

CREATE TABLE reviewData (
  reviewID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  movieName TEXT,
  review TEXT
);

INSERT INTO reviewData (movieName, review) VALUES
('The Lego Movie', 'A super fun, colorful adventure that keeps you smiling.'),
('Paddington 2', 'Heartwarming, wholesome, and even better than the first.'),
('The Green Mile', 'A moving story with incredible performances, deeply emotional.'),
('Schindler''s List', 'Powerful and heartbreaking — a must-watch historical drama.'),
('Indiana Jones: Raiders of the Lost Ark', 'Classic adventure with action, humor, and unforgettable set pieces.'),
('The Lord of the Rings: The Fellowship of the Ring', 'Epic fantasy at its finest — breathtaking world-building.'),
('The Conjuring', 'Genuinely terrifying, with great atmosphere and jump scares.'),
('A Nightmare on Elm Street', 'Creepy and imaginative — Freddy Krueger is iconic.'),
('Inception', 'A thrilling puzzle of a film — mind-bending and visually stunning.'),
('Se7en', 'Dark, gritty, and unforgettable with one of the most shocking endings.');