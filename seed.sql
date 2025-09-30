CREATE TABLE movieData (
  movieID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  filmName TEXT,
  mood TEXT,
  imgSrc TEXT, 
  ratingPostive INT,
  ratingNegative INT 

);

INSERT INTO movieData (filmName, mood, imgSrc, ratingPostive, ratingNegative) VALUES
('The Lego Movie', 'happy', 'https://via.placeholder.com/150?text=Lego+Movie', 95, 5),
('Paddington 2', 'happy', 'https://via.placeholder.com/150?text=Paddington+2', 98, 2),

('The Green Mile', 'sad', 'https://via.placeholder.com/150?text=Green+Mile', 90, 10),
('Schindler''s List', 'sad', 'https://via.placeholder.com/150?text=Schindlers+List', 97, 3),

('Indiana Jones: Raiders of the Lost Ark', 'adventurous', 'https://via.placeholder.com/150?text=Indiana+Jones', 94, 6),
('The Lord of the Rings: The Fellowship of the Ring', 'adventurous', 'https://via.placeholder.com/150?text=LOTR+Fellowship', 96, 4),

('The Conjuring', 'frightening', 'https://via.placeholder.com/150?text=Conjuring', 85, 15),
('A Nightmare on Elm Street', 'frightening', 'https://via.placeholder.com/150?text=Elm+Street', 80, 20),

('Inception', 'thrilling', 'https://via.placeholder.com/150?text=Inception', 92, 8),
('Se7en', 'thrilling', 'https://via.placeholder.com/150?text=Se7en', 89, 11);
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