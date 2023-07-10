INSERT INTO Musical_genre(title)
VALUES('Blues'), ('Rap'), ('R&B'), ('Pop'), ('Rock');

INSERT INTO Music_artist(nickname) VALUES
('Frank Sinatra'), 
('Louis Armstrong'), 
('Баста'), 
('Eminem'), 
('AC/DC'), 
('Linkin Park'), 
('Justin Timberlake'), 
('Chris Brown');

INSERT INTO Album(title, year_of_release) VALUES
('My Way', 1969), 
('What a Wonderful World', 1967), 
('Баста 40', 2020), 
('Music to be Murdered By', 2020), 
('Back in Black', 1980), 
('Living Things', 2012), 
('Man of the Woods', 2018), 
('Indigo', 2019);

INSERT INTO Track(track_name, duration, album_id) VALUES
('Watch What Happens', '00:02:45', 1), 
('My Way', '00:04:35', 1), 
('What a Wonderful World', '00:02:17', 2), 
('Hello Brother', '00:03:31', 2), 
('Поколение X', '00:05:19', 3),
('+100500', '00:03:48', 3), 
('Любовь и страх', '00:04:44', 3), 
('Gnat', '00:03:45', 4),
('Killer', '00:03:15', 4), 
('No Regrets', '00:02:01', 4), 
('Back in Black', '00:04:15', 5), 
('Rock and Roll Ain"T Noise Pollution', '00:04:10', 5), 
('Burn it Down', '00:03:33', 6), 
('Powerless', '00:03:44', 6), 
('Supplies', '00:03:45', 7), 
('Say Somethings', '00:04:39', 7), 
('No Guidance', '00:04:20', 8), 
('Dear God', '00:04:02', 8);

INSERT INTO Collection(title, year_of_release) VALUES
('Сборник №1', 1970), 
('Сборник №2', 2014), 
('Сборник №3', 2018), 
('Сборник №4', 2019), 
('Сборник №5', 2019), 
('Сборник №6', 2020), 
('Сборник №7', 2020), 
('Сборник №8', 2020);

INSERT INTO Artist_genre(music_artist_id, musical_genre_id)
VALUES(1, 1), (2, 1), (3, 2), (3, 4), (4, 2), (8, 3), (7, 3), (7, 4), (5, 5), (6, 5);

INSERT INTO Albums_artist(album_id, music_artist_id)
VALUES(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

INSERT INTO Collection_tracks(collection_id, track_id) VALUES
(1, 1),
(1, 2),
(2, 3),  
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),  
(6, 13), 
(6, 14),
(7, 15),
(7, 16),
(8, 17),
(8, 18); 