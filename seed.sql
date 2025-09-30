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

