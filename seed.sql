CREATE TABLE movieData (
  movieID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  filmName TEXT,
  mood TEXT,
  imgSrc TEXT, 
  ratingPostive INT,
  ratingNegative INT 

);

INSERT INTO movieData (filmName, mood, imgSrc, ratingPostive, ratingNegative) VALUES
('The Princess Bride', 'Happy', 'https://i.ebayimg.com/00/s/OTM3WDYyNg==/z/kpMAAOSwKz5i6U7E/$_57.JPG?set_id=8800005007', 10, 2)


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
